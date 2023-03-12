'use strict';

/* global MathQuill, bootstrap */

(() => {
	// Global list of all MathQuill answer inputs.
	window.answerQuills = {};

	// initialize MathQuill
	const MQ = MathQuill.getInterface(2);

	let toolbarEnabled = (localStorage.getItem('MQEditorToolbarEnabled') ?? 'true') === 'true';

	const setupMQInput = (mq_input) => {
		const answerLabel = mq_input.id.replace(/^MaThQuIlL_/, '');
		const input = document.getElementById(answerLabel);
		const inputType = input?.type;
		if (typeof(inputType) != 'string'
			|| inputType.toLowerCase() !== 'text'
			|| !input.classList.contains('codeshard'))
			return;

		const answerQuill = document.createElement('span');
		answerQuill.id = `mq-answer-${answerLabel}`;
		answerQuill.input = input;
		input.classList.add('mq-edit');
		answerQuill.latexInput = mq_input;

		input.after(answerQuill);

		// Default options.
		const cfgOptions = {
			spaceBehavesLikeTab: true,
			leftRightIntoCmdGoes: 'up',
			restrictMismatchedBrackets: true,
			sumStartsWithNEquals: true,
			supSubsRequireOperand: true,
			autoCommands: ['pi', 'sqrt', 'root', 'vert', 'inf', 'union', 'abs', 'deg', 'AA', 'angstrom', 'ln', 'log']
				.concat(['sin', 'cos', 'tan', 'sec', 'csc', 'cot'].reduce((a, t) =>
					a.concat([t, `arc${t}`]), [])).join(' '),
			rootsAreExponents: true,
			logsChangeBase: true,
			maxDepth: 10
		};

		// Merge options that are set by the problem.
		if (answerQuill.latexInput.dataset.mqOpts)
			Object.assign(cfgOptions, JSON.parse(answerQuill.latexInput.dataset.mqOpts));

		// This is after the option merge to prevent handlers from being overridden.
		cfgOptions.handlers = {
			edit: (mq) => {
				if (mq.text() !== '') {
					answerQuill.input.value = mq.text().trim();
					answerQuill.latexInput.value = mq.latex().replace(/^(?:\\\s)*(.*?)(?:\\\s)*$/, '$1');
				} else {
					answerQuill.input.value = '';
					answerQuill.latexInput.value = '';
				}
			},
			// Disable the toolbar when a text block is entered.
			textBlockEnter: () => {
				if (answerQuill.toolbar)
					answerQuill.toolbar.querySelectorAll('button').forEach((button) => button.disabled = true);
			},
			// Re-enable the toolbar when a text block is exited.
			textBlockExit: () => {
				if (answerQuill.toolbar)
					answerQuill.toolbar.querySelectorAll('button').forEach((button) => button.disabled = false);
			}
		};

		answerQuill.mathField = MQ.MathField(answerQuill, cfgOptions);

		answerQuill.textarea = answerQuill.querySelector('textarea');

		answerQuill.buttons = [
			{ id: 'frac', latex: '/', tooltip: 'fraction (/)', icon: '\\frac{\\text{ }}{\\text{ }}' },
			{ id: 'abs', latex: '|', tooltip: 'absolute value (|)', icon: '|\\text{ }|' },
			{ id: 'sqrt', latex: '\\sqrt', tooltip: 'square root (sqrt)', icon: '\\sqrt{\\text{ }}' },
			{ id: 'nthroot', latex: '\\root', tooltip: 'nth root (root)', icon: '\\sqrt[\\text{ }]{\\text{ }}' },
			{ id: 'exponent', latex: '^', tooltip: 'exponent (^)', icon: '\\text{ }^\\text{ }' },
			{ id: 'infty', latex: '\\infty', tooltip: 'infinity (inf)', icon: '\\infty' },
			{ id: 'pi', latex: '\\pi', tooltip: 'pi (pi)', icon: '\\pi' },
			{ id: 'vert', latex: '\\vert', tooltip: 'such that (vert)', icon: '|' },
			{ id: 'cup', latex: '\\cup', tooltip: 'union (union)', icon: '\\cup' },
			// { id: 'leq', latex: '\\leq', tooltip: 'less than or equal (<=)', icon: '\\leq' },
			// { id: 'geq', latex: '\\geq', tooltip: 'greater than or equal (>=)', icon: '\\geq' },
			{ id: 'text', latex: '\\text', tooltip: 'text mode (")', icon: 'Tt' }
		];

		const toolbarRemove = () => {
			if (answerQuill.toolbar) {
				const toolbar = answerQuill.toolbar;
				delete answerQuill.toolbar;
				toolbar.style.opacity = 0;
				toolbar.addEventListener('transitionend', () => {
					window.removeEventListener('resize', toolbar.setPosition);
					toolbar.tooltips.forEach((tooltip) => tooltip.dispose());
					toolbar.remove();
				}, { once: true });
			}
		};

		// Open the toolbar when the mathquill answer box gains focus.
		answerQuill.textarea.addEventListener('focusin', () => {
			if (!toolbarEnabled) return;
			if (answerQuill.toolbar) return;

			answerQuill.toolbar = document.createElement('div');
			answerQuill.toolbar.tabIndex = -1;
			answerQuill.toolbar.classList.add('quill-toolbar');
			answerQuill.toolbar.style.opacity = 0;

			answerQuill.toolbar.addEventListener('focusout', (e) => {
				if (e.relatedTarget && (e.relatedTarget.closest('.quill-toolbar') ||
					e.relatedTarget.classList.contains('symbol-button') ||
					e.relatedTarget.parentElement?.parentElement === answerQuill))
					return;
				toolbarRemove();
			});

			answerQuill.toolbar.tooltips = [];

			for (const buttonData of answerQuill.buttons) {
				const button = document.createElement('button');
				button.type = 'button';
				button.id = `${buttonData.id}-${answerQuill.id}`;
				button.classList.add('symbol-button', 'btn', 'btn-dark');
				button.dataset.latex = buttonData.latex;
				button.dataset.bsToggle = 'tooltip';
				button.dataset.bsTitle = buttonData.tooltip;
				const icon = document.createElement('span');
				icon.id = `icon-${buttonData.id}-${answerQuill.id}`;
				icon.textContent = buttonData.icon;
				button.append(icon);
				answerQuill.toolbar.append(button);

				MQ.StaticMath(icon, { mouseEvents: false });

				answerQuill.toolbar.tooltips.push(new bootstrap.Tooltip(button, {
					placement: 'left', trigger: 'hover', delay: { show: 500, hide: 0 }
				}));

				button.addEventListener('click', () => {
					answerQuill.mathField.cmd(button.dataset.latex);
					answerQuill.textarea.focus();
				})
			}

			answerQuill.toolbar.addEventListener('keydown', (e) => {
				if (e.key === 'Escape') toolbarRemove();
			});

			answerQuill.toolbar.setPosition = () => {
				// Note that this must be kept in sync with css.  Currently each symbol button has a fixed height (due
				// to flex-shrink being 0) of 45px plus a 1px padding on the top and bottom plus a 1px margin on the top
				// and bottom, giving a 49px total height for each symbol button .  Also, the toolbar itself has a 2px
				// border on the top and bottom, hence 4px is added to the end.  These computations take into account
				// that box-sizing is border-box.
				const toolbarHeight = 49 * answerQuill.buttons.length + 4;

				const pageHeight = (() => {
					const documentElHeight = document.documentElement.getBoundingClientRect().height;
					if (window.innerHeight > documentElHeight) return window.innerHeight;
					return documentElHeight;
				})();

				// Different positioning is needed when contained in a relatively positioned parent.
				const relativeParent = (() => {
					let parent = answerQuill.parentElement;
					while (parent && parent !== document) {
						const positionType = window.getComputedStyle(parent).position;
						if (positionType === 'relative') return parent;
						// If a fixed parent is encountered before a relative parent is encountered,
						// that negates relative positioning.
						if (positionType === 'fixed') return;
						parent = parent.parentElement;
					}
				})();

				if (relativeParent) {
					// If contained in a relatively positioned parent, the toolbar needs
					// to be positioned relative to that parent.
					const pageWidth = (() => {
						const documentElWidth = document.documentElement.getBoundingClientRect().width;
						if (window.innerWidth > documentElWidth) return window.innerWidth;
						return documentElWidth;
					})();

					const parentRect = relativeParent.getBoundingClientRect();
					answerQuill.toolbar.style.right = `${window.scrollX + parentRect.right + 10 - pageWidth}px`;

					const elRect = answerQuill.getBoundingClientRect();

					if (window.scrollY + elRect.top + elRect.height / 2 < toolbarHeight / 2) {
						answerQuill.toolbar.style.top = `-${window.scrollY + parentRect.top}px`;
						answerQuill.toolbar.style.bottom = toolbarHeight > pageHeight ?
							`${window.scrollY + parentRect.bottom - pageHeight}px`
							: null;
					} else if (window.scrollY + elRect.top + elRect.height / 2 + toolbarHeight / 2 > pageHeight) {
						answerQuill.toolbar.style.top = null;
						answerQuill.toolbar.style.bottom = `${window.scrollY + parentRect.bottom - pageHeight}px`;
					} else {
						answerQuill.toolbar.style.top =
							`${elRect.top + elRect.height / 2 - toolbarHeight / 2 - parentRect.top}px`;
						answerQuill.toolbar.style.bottom = null;
					}
				} else {
					// If in a relatively positioned parent, the toolbar is positioned absolutely on the page.
					if (toolbarHeight > pageHeight) {
						answerQuill.toolbar.style.top = 0;
						answerQuill.toolbar.style.height = '100%';
					} else {
						const elRect = answerQuill.getBoundingClientRect();
						const top = window.scrollY + elRect.bottom - elRect.height / 2 - toolbarHeight / 2;
						const bottom = top + toolbarHeight;
						answerQuill.toolbar.style.top =
							`${top < 0 ? 0 : bottom > pageHeight ? pageHeight - toolbarHeight : top}px`;
						answerQuill.toolbar.style.height = null;
					}
				}
			}

			window.addEventListener('resize', answerQuill.toolbar.setPosition);
			answerQuill.toolbar.setPosition();

			answerQuill.after(answerQuill.toolbar);
			setTimeout(() => answerQuill.toolbar.style.opacity = 1, 0);
		});

		// Add a context menu to toggle whether the toolbar is enabled or not.
		answerQuill.addEventListener('contextmenu', (e) => {
			e.preventDefault();

			const container = document.createElement('div');
			container.classList.add('dropdown', 'd-inline-block');
			answerQuill.after(container);

			const hiddenLink = document.createElement('a');
			hiddenLink.classList.add('dropdown-toggle', 'd-none');
			hiddenLink.dataset.bsToggle = 'dropdown';
			hiddenLink.href = '#';
			container.append(hiddenLink);

			const menuEl = document.createElement('ul');
			menuEl.classList.add('dropdown-menu');
			const li = document.createElement('li');
			menuEl.append(li);
			const action = document.createElement('a');
			action.classList.add('dropdown-item');
			action.href = '#';
			action.textContent = toolbarEnabled ? 'Disable Toolbar' : 'Enable Toolbar';
			li.append(action);
			container.append(menuEl);

			const menu =
				new bootstrap.Dropdown(hiddenLink, { reference: answerQuill, offset: [answerQuill.offsetWidth, 0] });
			menu.show();

			hiddenLink.addEventListener('hidden.bs.dropdown', () => {
				menu.dispose(); menuEl.remove(); container.remove();
			});

			action.addEventListener('click', (e) => {
				e.preventDefault();
				toolbarEnabled = !toolbarEnabled;
				localStorage.setItem('MQEditorToolbarEnabled', toolbarEnabled)
				if (!toolbarEnabled && answerQuill.toolbar) toolbarRemove();
				menu.hide();
				answerQuill.textarea.focus();
			}, { once: true });
		});

		answerQuill.textarea.addEventListener('focusout', (e) => {
			if (e.relatedTarget && (e.relatedTarget.closest('.quill-toolbar') ||
				e.relatedTarget.classList.contains('symbol-button')))
				return;
			toolbarRemove();
		});

		// Trigger an answer preview when the enter key is pressed in an answer box.
		answerQuill.keydownHandler = (e) => {
			if (e.key == 'Enter') {
				// Ensure that the toolbar and any open tooltips are removed.
				answerQuill.toolbar?.tooltips.forEach((tooltip) => tooltip.dispose());
				answerQuill.toolbar?.remove();
				delete answerQuill.toolbar;

				// For ww2 homework
				document.getElementById('previewAnswers_id')?.click();
				// For gateway quizzes
				document.querySelector('input[name=previewAnswers]')?.click();
				// For ww3
				const previewButtonId =
					answerQuill.textarea.closest('[name=problemMainForm]')?.id
						.replace('problemMainForm', 'previewAnswers');
				if (previewButtonId) document.getElementById(previewButtonId)?.click();
			}
		};
		answerQuill.addEventListener('keydown', answerQuill.keydownHandler);

		answerQuill.mathField.latex(answerQuill.latexInput.value);
		answerQuill.mathField.moveToLeftEnd();
		answerQuill.mathField.blur();

		// Look for a result in the attempts table for this answer.
		for (const tableLink of document.querySelectorAll('td a[data-answer-id]')) {
			// Give the mathquill answer box the correct/incorrect colors.
			if (answerLabel.includes(tableLink.dataset.answerId)) {
				if (tableLink.parentNode.classList.contains('ResultsWithoutError'))
					answerQuill.classList.add('correct');
				else answerQuill.classList.add('incorrect');
			}

			// Make a click on the results table link give focus to the mathquill answer box.
			if (answerLabel === tableLink.dataset.answerId) {
				tableLink.addEventListener('click', (e) => {
					e.preventDefault();
					answerQuill.textarea.focus();
				});
			}
		}

		window.answerQuills[answerLabel] = answerQuill;
	};

	// Set up MathQuill inputs that are already in the page.
	document.querySelectorAll('[id^=MaThQuIlL_]').forEach((input) => setupMQInput(input));

	// Observer that sets up MathQuill inputs.
	const observer = new MutationObserver((mutationsList) => {
		for (const mutation of mutationsList) {
			for (const node of mutation.addedNodes) {
				if (node instanceof Element) {
					if (node.id && node.id.startsWith('MaThQuIlL_')) {
						setupMQInput(node);
					} else {
						node.querySelectorAll('input[id^=MaThQuIlL_]').forEach((input) => setupMQInput(input));
					}
				}
			}
		}
	});
	observer.observe(document.body, { childList: true, subtree: true });

	// Stop the mutation observer when the window is closed.
	window.addEventListener('unload', () => observer.disconnect());
})();
