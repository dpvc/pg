## contextBoolean.pl

sub _contextBoolean_init { context::Boolean::Init() }

package context::Boolean;

sub Init {
	my $context = $main::context{Boolean} = Parser::Context->getCopy('Numeric');
	$context->{name} = 'Boolean';

	$context->{parser}{Formula}     = 'context::Boolean::Formula';
	$context->{value}{Formula}      = 'context::Boolean::Formula';
	$context->{value}{Boolean}      = 'context::Boolean::Boolean';
	$context->{value}{Real}         = 'context::Boolean::Boolean';
	$context->{precedence}{Boolean} = $context->{precedence}{Real};

	## Disable unnecessary context stuff
	$context->functions->disable('All');
	$context->strings->clear();
	$context->lists->clear();

	## Define our logic operators
	#   (for now...)
	#   all binary operators have the same precedence and process left-to-right
	#   any parens to the right must be preserved with consecutive binary ops
	$context->operators->are(
		'or' => {
			class         => 'context::Boolean::BOP::or',
			precedence    => 1,
			associativity => 'left',
			type          => 'bin',
			rightparens   => 'same',
			string        => ' or ',
			TeX           => '\vee ',
			perl          => '||',
			alternatives  => ["\x{2228}"],
		},
		'and' => {
			class         => 'context::Boolean::BOP::and',
			precedence    => 1,
			associativity => 'left',
			type          => 'bin',
			rightparens   => 'same',
			string        => ' and ',
			TeX           => '\wedge ',
			perl          => '&&',
			alternatives  => ["\x{2227}"],
		},
		'xor' => {
			class         => 'context::Boolean::BOP::xor',
			precedence    => 1,
			associativity => 'left',
			type          => 'bin',
			rightparens   => 'same',
			string        => ' xor ',
			perl          => '!=',
			TeX           => '\oplus ',
			alternatives  => [ "\x{22BB}", "\x{2295}" ],
		},
		'not' => {
			class         => 'context::Boolean::UOP::not',
			precedence    => 3,
			associativity => 'left',
			type          => 'unary',
			string        => 'not ',
			TeX           => '\mathord{\sim}',
			perl          => '!',
			alternatives  => ["\x{00AC}"],
		},
		' ' => {
			class         => 1,
			precedence    => 1,
			associativity => 'left',
			type          => 'bin',
			string        => 'and',
			hidden        => 1
		},
		'*'  => { alias => 'and' },
		'+'  => { alias => 'or' },
		'-'  => { alias => 'not' },
		'!'  => { alias => 'not' },
		'~'  => { alias => 'not', alternatives => ["\x{223C}"] },
		'><' => { alias => 'xor' },
	);

	## redefine, but disable some usual context tokens for 'clearer' error messages
	$context->operators->redefine([ ',', 'fn' ], from => 'Numeric');
	$context->lists->redefine('List', from => 'Numeric');
	$context->operators->redefine([ '/', '^', '**' ], from => 'Numeric');
	$context->operators->undefine('/', '^', '**');
	delete $context->operators->get('/')->{space};

	## Set default variables 'p' and 'q'
	$Parser::Context::Variables::type{Boolean} = $Parser::Context::Variables::type{Real};
	$context->variables->are(
		p => 'Boolean',
		q => 'Boolean',
	);

	## Set up new reduction rules:
	$context->reductions->set('x||1' => 1, 'x||0' => 1, 'x&&1' => 1, 'x&&0' => 1, '!!x' => 1);

	## Value::inContext does not recognize our $context as second argument -- using inContext method instead
	our $T = context::Boolean::Boolean->new(1)->inContext($context);
	our $F = context::Boolean::Boolean->new(0)->inContext($context);

	## Define constants for 'True' and 'False'
	$context->constants->are(
		'T'     => { value => $T, TeX => '\top ', perl => '$context::Boolean::T' },   #, alternatives => ["\x{22A4}"] },
		'F'     => { value => $F, TeX => '\bot ', perl => '$context::Boolean::F' },   #, alternatives => ["\x{22A5}"] },
		'True'  => { alias => 'T' },
		'False' => { alias => 'F' },
	);

	## allow authors to create Boolean values
	main::PG_restricted_eval('sub Boolean { Value->Package("Boolean()")->new(@_) }');
}

## Subclass Value::Formula for boolean formulas
package context::Boolean::Formula;
our @ISA = ('Value::Formula');

## use every combination of T/F across all variables
sub createRandomPoints {
	my $self      = shift;
	my $context   = $self->{context};
	my @variables = $context->variables->names;
	my @points;
	my @values;

	my $T = $context::Boolean::T->inContext($context);
	my $F = $context::Boolean::F->inContext($context);

	my $f = $self->{f};
	$f = $self->{f} = $self->perlFunction(undef, \@variables) unless $f;

	foreach my $combination (0 .. 2**@variables - 1) {
		my @point = map { $combination & 2**$_ ? $T : $F } (0 .. $#variables);
		my $value = &$f(@point);
		push @points, \@point;
		push @values, $value;
	}

	$self->{test_points} = \@points;
	$self->{test_values} = \@values;
	return \@points;
}

package context::Boolean::BOP;
our @ISA = qw(Parser::BOP);

sub _check {
	my $self = shift;
	return if $self->checkNumbers;
	$self->Error("Operands of '%s' must be 'Boolean'", $self->{bop});
}

sub perl {
	my $self   = shift;
	my $l      = $self->{lop};
	my $r      = $self->{rop};
	my $bop    = $self->{def}{perl} || $self->{def}{string};
	my $lPerl  = $self->{lop}->perl(1) . '->value';
	my $rPerl  = $self->{rop}->perl(2) . '->value';
	my $result = "$lPerl $bop $rPerl";
	return "($result ? \$context::Boolean::T : \$context::Boolean::F)";
}

package context::Boolean::BOP::or;
our @ISA = qw(context::Boolean::BOP);

sub _eval { ($_[1]->value || $_[2]->value ? $context::Boolean::T : $context::Boolean::F) }

sub _reduce {
	my $self    = shift;
	my $context = $self->{equation}{context};
	my $reduce  = $context->{reduction};
	my $l       = $self->{lop};
	my $r       = $self->{rop};

	return $self unless ($l->{isConstant} || $r->{isConstant});

	# make sure we are comparing to an updated 'true'
	my $T = $context::Boolean::T->inContext($context);

	# using string since Parser::Number::eval is unblessed, while Parser::Constant::eval is a (truthy) MathObject
	if ($l->{isConstant}) {
		return $l->string eq "$T" ? ($reduce->{'x||1'} ? $l : $self) : ($reduce->{'x||0'} ? $r : $self);
	} else {
		return $r->string eq "$T" ? ($reduce->{'x||1'} ? $r : $self) : ($reduce->{'x||0'} ? $l : $self);
	}
}

package context::Boolean::BOP::and;
our @ISA = qw(context::Boolean::BOP);

sub _eval { ($_[1]->value && $_[2]->value ? $context::Boolean::T : $context::Boolean::F) }

sub _reduce {
	my $self    = shift;
	my $context = $self->{equation}{context};
	my $reduce  = $context->{reduction};
	my $l       = $self->{lop};
	my $r       = $self->{rop};

	return $self unless ($l->{isConstant} || $r->{isConstant});

	# make sure we are comparing to an updated 'true'
	my $T = $context::Boolean::T->inContext($context);

	# using string since Parser::Number::eval is unblessed, while Parser::Constant::eval is a (truthy) MathObject
	if ($l->{isConstant}) {
		return $l->string eq "$T" ? ($reduce->{'x&&1'} ? $r : $self) : ($reduce->{'x&&0'} ? $l : $self);
	} else {
		return $r->string eq "$T" ? ($reduce->{'x&&1'} ? $l : $self) : ($reduce->{'x&&0'} ? $r : $self);
	}
}

package context::Boolean::BOP::xor;
our @ISA = qw(context::Boolean::BOP);

sub _eval { ($_[1]->value != $_[2]->value ? $context::Boolean::T : $context::Boolean::F) }

package context::Boolean::UOP::not;
our @ISA = qw(Parser::UOP);

sub _check {
	my $self = shift;
	return if $self->checkNumber;
	$self->Error("Operands of '%s' must be 'Boolean'", $self->{uop});
}

sub _reduce {
	my $self    = shift;
	my $context = $self->{equation}{context};
	my $reduce  = $context->{reduction};
	my $op      = $self->{op};

	if ($op->isNeg && $reduce->{'!!x'}) {
		delete $op->{op}{noParens};
		return $op->{op};
	}

	if ($op->{isConstant} && $context->flag('reduceConstants')) {
		# same issue with Parser::Number::eval being unblessed, check string instead
		my $T   = $context::Boolean::T->inContext($context);
		my $new = $op->string eq "$T" ? 0 : 1;
		return $self->Item('Value')->new($self->{equation}, [$new]);
	}
	return $self;
}

sub isNeg {1}

sub _eval { (!($_[1]->value) ? $context::Boolean::T : $context::Boolean::F) }

sub perl {
	my $self   = shift;
	my $op     = $self->{def}{perl} || $self->{def}{string};
	my $perl   = $self->{op}->perl(1) . '->value';
	my $result = "$op $perl";
	return "($result ? \$context::Boolean::T : \$context::Boolean::F)";
}

package context::Boolean::Boolean;
our @ISA = qw(Value::Real);

sub new {
	my $self  = shift;
	my $value = $self->SUPER::new(@_);
	$value->checkBoolean unless $value->classMatch("Formula");
	return $value;
}

sub make {
	my $self   = shift;
	my $result = $self->SUPER::make(@_);
	$result->checkBoolean unless $result->classMatch("Formula");
	return $result;
}

sub checkBoolean {
	my $self = shift;
	$self->Error("Numeric values can only be 1 or 0 in this context")
		unless ($self->value == 1 || $self->value == 0);
}

sub compare {
	# copypasta from other compare methods -- is this necessary?
	my ($self, $l, $r) = Value::checkOpOrderWithPromote(@_);
	return $l->value <=> $r->value;
}

## use the context settings
sub string {
	my $self  = shift;
	my $const = $self->context->constants;
	my $T     = $const->get('T')->{string} || 'T';
	my $F     = $const->get('F')->{string} || 'F';
	return ($F, $T)[ $self->value ];
}

## use the context settings
sub TeX {
	my $self  = shift;
	my $const = $self->context->constants;
	my $T     = $const->get('T')->{TeX} || '\top';
	my $F     = $const->get('F')->{TeX} || '\bot';
	return ($F, $T)[ $self->value ];
}

sub perl {
	my $self = shift;
	return $self->value ? '$context::Boolean::T' : '$context::Boolean::F';
}

sub cmp_defaults { shift->SUPER::cmp_defaults(@_) }

1;
