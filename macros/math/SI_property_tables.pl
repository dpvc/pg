# SI_property_tables.pl
# Rename this file (with .pl extension) and place it in your course macros directory,

@SI_property_tables_names = (
	"SI_water_Tsat ", "SI_water_Psat ", "SI_water_vf ", "SI_water_vfg ", "SI_water_vg ", "SI_water_uf ",
	"SI_water_ufg ",  "SI_water_ug ",   "SI_water_hf ", "SI_water_hfg ", "SI_water_hg ", "SI_water_sf ",
	"SI_water_sfg ",  "SI_water_sg ",

	"SI_air_T ", "SI_air_h ", "SI_air_Pr ", "SI_air_u ", "SI_air_vr ", "SI_air_so ",

	"SI_superWater_0p1MPa_T ", "SI_superWater_0p1MPa_v ", "SI_superWater_0p1MPa_u ", "SI_superWater_0p1MPa_h ",
	"SI_superWater_0p1MPa_s ",

	"SI_superWater_1p2MPa_T ", "SI_superWater_1p2MPa_v ", "SI_superWater_1p2MPa_u ", "SI_superWater_1p2MPa_h ",
	"SI_superWater_1p2MPa_s ",

	"SI_superWater_1p4MPa_T ", "SI_superWater_1p4MPa_v ", "SI_superWater_1p4MPa_u ", "SI_superWater_1p4MPa_h ",
	"SI_superWater_1p4MPa_s ",

	"SI_superWater_1p6MPa_T ", "SI_superWater_1p6MPa_v ", "SI_superWater_1p6MPa_u ", "SI_superWater_1p6MPa_h ",
	"SI_superWater_1p6MPa_s ",

	"SI_superWater_1p8MPa_T ", "SI_superWater_1p8MPa_v ", "SI_superWater_1p8MPa_u ", "SI_superWater_1p8MPa_h ",
	"SI_superWater_1p8MPa_s ",

	"SI_superWater_10MPa_T ", "SI_superWater_10MPa_v ", "SI_superWater_10MPa_u ", "SI_superWater_10MPa_h ",
	"SI_superWater_10MPa_s ",

	"SI_R134a_Tsat ", "SI_R134a_Psat ", "SI_R134a_vf ", "SI_R134a_vfg ", "SI_R134a_vg ", "SI_R134a_uf ",
	"SI_R134a_ufg ",  "SI_R134a_ug ",   "SI_R134a_hf ", "SI_R134a_hfg ", "SI_R134a_hg ", "SI_R134a_sf ",
	"SI_R134a_sfg ",  "SI_R134a_sg ",

	"SI_superR134a_1p2MPa_T ", "SI_superR134a_1p2MPa_v ", "SI_superR134a_1p2MPa_u ", "SI_superR134a_1p2MPa_h ",
	"SI_superR134a_1p2MPa_s ",

	"SI_superR134a_1p2MPa_T ", "SI_superR134a_1p2MPa_v ", "SI_superR134a_1p2MPa_u ", "SI_superR134a_1p2MPa_h ",
	"SI_superR134a_1p2MPa_s ",

	"SI_superR134a_1p2MPa_T ", "SI_superR134a_1p2MPa_v ", "SI_superR134a_1p2MPa_u ", "SI_superR134a_1p2MPa_h ",
	"SI_superR134a_1p2MPa_s ",

	"SI_superR134a_1p2MPa_T ", "SI_superR134a_1p2MPa_v ", "SI_superR134a_1p2MPa_u ", "SI_superR134a_1p2MPa_h ",
	"SI_superR134a_1p2MPa_s "
);

#######################################################
#######################################################
###                                                 ###
###   below are the lists of the tabulated values   ###
###                                                 ###
#######################################################
#######################################################

###########################
###                     ###
###   saturated water   ###
###                     ###
###########################

@SI_water_Tsat = qw(
	0.01	5.00	6.97	10.00	13.02	15.00	17.50	20.00	21.08	24.08	25.00	28.96	30.00	32.87	35.00	40.00	40.29	45.00	45.81	50.00	53.97	55.00	60.00	60.06	65.00	69.09	70.00	75.00	75.86	80.00	81.32	85.00	90.00	91.76	95.00	99.61	105.00	105.97	110.00	111.35	115.00	116.04	120.00	120.21	123.97	125.00	127.41	130.00	133.52	135.00	136.27	138.86	140.00	141.30	143.61	145.00	147.90	150.00	151.83	155.00	155.46	158.83	160.00	161.98	165.00	167.75	170.00	170.41	172.94	175.00	177.66	180.00	184.06	185.00	187.96	190.00	191.60	195.00	198.29	200.00	205.00	205.72	210.00	212.38	215.00	218.41	220.00	223.95	225.00	230.00	235.00	240.00	242.56	245.00	250.00	255.00	260.00	263.94	265.00	270.00	275.00	275.59	280.00	285.00	285.83	290.00	295.00	300.00	303.35	305.00	310.00	311.00	315.00	318.08	320.00	324.68	325.00	330.00	330.85	335.00	336.67	340.00	342.16	345.00	347.36	350.00	352.29	355.00	356.99	360.00	361.47	365.00	365.75	369.83	370.00	373.71	373.95
);

@SI_water_Psat = qw(
	0.6117	0.8725	1.0000	1.2281	1.5000	1.7057	2.0000	2.3392	2.5000	3.0000	3.1698	4.0000	4.2469	5.0000	5.6291	7.3851	7.5000	9.5953	10.0000	12.3520	15.0000	15.7630	19.9470	20.0000	25.0430	30.0000	31.2020	38.5970	40.0000	47.4160	50.0000	57.8680	70.1830	75.0000	84.6090	100.0000	120.9000	125.0000	143.3800	150.0000	169.1800	175.0000	198.6700	200.0000	225.0000	232.2300	250.0000	270.2800	300.0000	313.2200	325.0000	350.0000	361.5300	375.0000	400.0000	415.6800	450.0000	476.1600	500.0000	543.4900	550.0000	600.0000	618.2300	650.0000	700.9300	750.0000	792.1800	800.0000	850.0000	892.6000	950.0000	1002.8000	1100.0000	1123.5000	1200.0000	1255.2000	1300.0000	1398.8000	1500.0000	1554.9000	1724.3000	1750.0000	1907.7000	2000.0000	2105.9000	2250.0000	2319.6000	2500.0000	2549.7000	2797.1000	3062.6000	3347.0000	3500.0000	3651.2000	3976.2000	4322.9000	4692.3000	5000.0000	5085.3000	5503.0000	5946.4000	6000.0000	6416.6000	6914.6000	7000.0000	7441.8000	7999.0000	8587.9000	9000.0000	9209.4000	9865.0000	10000.0000	10556.0000	11000.0000	11284.0000	12000.0000	12051.0000	12858.0000	13000.0000	13707.0000	14000.0000	14601.0000	15000.0000	15541.0000	16000.0000	16529.0000	17000.0000	17570.0000	18000.0000	18666.0000	19000.0000	19822.0000	20000.0000	21000.0000	21044.0000	22000.0000	22064.0000
);

@SI_water_vf = qw(
	0.001	0.001	0.001	0.001	0.001001	0.001001	0.001001	0.001002	0.001002	0.001003	0.001003	0.001004	0.001004	0.001005	0.001006	0.001008	0.001008	0.00101	0.00101	0.001012	0.001014	0.001015	0.001017	0.001017	0.00102	0.001022	0.001023	0.001026	0.001026	0.001029	0.00103	0.001032	0.001036	0.001037	0.00104	0.001043	0.001047	0.001048	0.001052	0.001053	0.001056	0.001057	0.00106	0.001061	0.001064	0.001065	0.001067	0.00107	0.001073	0.001075	0.001076	0.001079	0.00108	0.001081	0.001084	0.001085	0.001088	0.001091	0.001093	0.001096	0.001097	0.001101	0.001102	0.001104	0.001108	0.001111	0.001114	0.001115	0.001118	0.001121	0.001124	0.001127	0.001133	0.001134	0.001138	0.001141	0.001144	0.001149	0.001154	0.001157	0.001164	0.001166	0.001173	0.001177	0.001181	0.001187	0.00119	0.001197	0.001199	0.001209	0.001219	0.001229	0.001235	0.00124	0.001252	0.001263	0.001276	0.001286	0.001289	0.001303	0.001317	0.001319	0.001333	0.001349	0.001352	0.001366	0.001384	0.001404	0.001418	0.001425	0.001447	0.001452	0.001472	0.001488	0.001499	0.001526	0.001528	0.00156	0.001566	0.001597	0.00161	0.001638	0.001657	0.001685	0.00171	0.001741	0.00177	0.001808	0.00184	0.001895	0.001926	0.002015	0.002038	0.002207	0.002217	0.002703	0.003106
);

@SI_water_vfg = qw(
	205.999000	147.029000	129.189000	106.319000	87.962999	77.883999	66.988999	57.760998	54.240998	45.652997	43.338997	34.789996	32.877996	28.183995	25.203994	19.513992	19.231992	15.249990	14.668990	12.024988	10.018986	9.562885	7.665983	7.647083	6.192480	5.227678	5.038577	4.128074	3.992274	3.404271	3.239270	2.825068	2.358264	2.216163	1.979760	1.693057	1.417553	1.373952	1.208348	1.158347	1.034944	1.002643	0.890270	0.884719	0.792226	0.769055	0.717663	0.667010	0.604747	0.580715	0.560914	0.523141	0.507420	0.490249	0.461336	0.444915	0.412832	0.391389	0.373737	0.345384	0.341513	0.314499	0.305698	0.291496	0.271332	0.254409	0.241486	0.239235	0.225782	0.215469	0.202986	0.192713	0.176317	0.172766	0.162122	0.155219	0.150046	0.139741	0.130556	0.126053	0.113916	0.112274	0.103117	0.098410	0.093499	0.087530	0.084904	0.078755	0.077206	0.070296	0.064081	0.058478	0.055826	0.053416	0.048833	0.044678	0.040899	0.038162	0.037459	0.034319	0.031450	0.031130	0.028820	0.026407	0.026026	0.024188	0.022144	0.020255	0.019071	0.018507	0.016886	0.016576	0.015377	0.014500	0.013971	0.012738	0.012655	0.011419	0.011215	0.010251	0.009877	0.009145	0.008684	0.008087	0.007602	0.007065	0.006604	0.006064	0.005664	0.005055	0.004751	0.003994	0.003824	0.002787	0.002736	0.000941	0.000000
);

@SI_water_vg = qw(
	206	147.03	129.19	106.32	87.964	77.885	66.99	57.762	54.242	45.654	43.34	34.791	32.879	28.185	25.205	19.515	19.233	15.251	14.67	12.026	10.02	9.5639	7.667	7.6481	6.1935	5.2287	5.0396	4.1291	3.9933	3.4053	3.2403	2.8261	2.3593	2.2172	1.9808	1.6941	1.4186	1.375	1.2094	1.1594	1.036	1.0037	0.89133	0.88578	0.79329	0.77012	0.71873	0.66808	0.60582	0.58179	0.56199	0.52422	0.5085	0.49133	0.46242	0.446	0.41392	0.39248	0.37483	0.34648	0.34261	0.3156	0.3068	0.2926	0.27244	0.25552	0.2426	0.24035	0.2269	0.21659	0.20411	0.19384	0.17745	0.1739	0.16326	0.15636	0.15119	0.14089	0.13171	0.12721	0.11508	0.11344	0.10429	0.099587	0.09468	0.088717	0.086094	0.079952	0.078405	0.071505	0.0653	0.059707	0.057061	0.054656	0.050085	0.045941	0.042175	0.039448	0.038748	0.035622	0.032767	0.032449	0.030153	0.027756	0.027378	0.025554	0.023528	0.021659	0.020489	0.019932	0.018333	0.018028	0.016849	0.015988	0.01547	0.014264	0.014183	0.012979	0.012781	0.011848	0.011487	0.010783	0.010341	0.009772	0.009312	0.008806	0.008374	0.007872	0.007504	0.00695	0.006677	0.006009	0.005862	0.004994	0.004953	0.003644	0.003106
);

@SI_water_uf = qw(
	0	21.019	29.302	42.02	54.686	62.98	73.431	83.913	88.422	100.98	104.83	121.39	125.73	137.75	146.63	167.53	168.74	188.43	191.79	209.33	225.93	230.24	251.16	251.4	272.09	289.24	293.04	313.99	317.58	334.97	340.49	355.96	376.97	384.36	398	417.4	440.15	444.23	461.27	466.97	482.42	486.82	503.6	504.5	520.47	524.83	535.08	546.1	561.11	567.41	572.84	583.89	588.77	594.32	604.22	610.19	622.65	631.66	639.54	653.19	655.16	669.72	674.79	683.37	696.46	708.4	718.2	719.97	731	740.02	751.67	761.92	779.78	783.91	796.96	806	813.1	828.18	842.82	850.46	872.86	876.12	895.38	906.12	918.02	933.54	940.79	958.87	963.7	986.76	1010	1033.4	1045.4	1056.9	1080.7	1104.7	1128.8	1148.1	1153.3	1177.9	1202.9	1205.8	1228.2	1253.7	1258	1279.7	1306	1332.7	1350.9	1360	1387.7	1393.3	1416.1	1433.9	1445.1	1473	1475	1505.7	1511	1537.5	1548.4	1570.7	1585.5	1605.5	1622.6	1642.4	1660.2	1682.2	1699.1	1726.2	1740.3	1777.2	1785.8	1841.6	1844.5	1951.7	2015.7
);

@SI_water_ufg = qw(
	2374.9	2360.8	2355.2	2346.6	2338.1	2332.5	2325.5	2318.4	2315.4	2306.9	2304.3	2293.1	2290.2	2282.1	2276	2261.9	2261.1	2247.7	2245.4	2233.4	2222.1	2219.1	2204.7	2204.6	2190.3	2178.5	2175.8	2161.3	2158.8	2146.6	2142.7	2131.9	2117	2111.8	2102	2088.2	2071.8	2068.8	2056.4	2052.3	2040.9	2037.7	2025.3	2024.6	2012.7	2009.5	2001.8	1993.4	1982.1	1977.3	1973.1	1964.6	1960.9	1956.6	1948.9	1944.2	1934.5	1927.4	1921.2	1910.3	1908.8	1897.1	1893	1886.1	1875.4	1865.6	1857.5	1856.1	1846.9	1839.4	1829.6	1820.9	1805.7	1802.1	1790.9	1783	1776.8	1763.6	1750.6	1743.7	1723.5	1720.6	1702.9	1693	1681.9	1667.3	1660.5	1643.2	1638.6	1616.1	1593.2	1569.8	1557.6	1545.7	1521.1	1495.8	1469.9	1448.9	1443.2	1415.7	1387.4	1384.1	1358.2	1328.1	1323	1296.9	1264.5	1230.9	1207.6	1195.9	1159.3	1151.8	1121.1	1096.6	1080.9	1041.3	1038.5	993.5	985.5	945.5	928.7	893.8	870.3	837.7	809.4	775.9	745.1	706.4	675.9	625.7	598.9	526.4	509	391.9	385.6	140.8	0
);

@SI_water_ug = qw(
	2374.9	2381.8	2384.5	2388.7	2392.8	2395.5	2398.9	2402.3	2403.8	2407.9	2409.1	2414.5	2415.9	2419.8	2422.7	2429.4	2429.8	2436.1	2437.2	2442.7	2448	2449.3	2455.9	2456	2462.4	2467.7	2468.9	2475.3	2476.3	2481.6	2483.2	2487.8	2494	2496.1	2500.1	2505.6	2511.9	2513	2517.7	2519.2	2523.3	2524.5	2528.9	2529.1	2533.2	2534.3	2536.8	2539.5	2543.2	2544.7	2545.9	2548.5	2549.6	2550.9	2553.1	2554.4	2557.1	2559.1	2560.7	2563.5	2563.9	2566.8	2567.8	2569.4	2571.9	2574	2575.7	2576	2577.9	2579.4	2581.3	2582.8	2585.5	2586	2587.8	2589	2589.9	2591.7	2593.4	2594.2	2596.4	2596.7	2598.3	2599.1	2599.9	2600.9	2601.3	2602.1	2602.3	2602.9	2603.2	2603.1	2603	2602.7	2601.8	2600.5	2598.7	2597	2596.5	2593.7	2590.3	2589.9	2586.4	2581.8	2581	2576.5	2570.5	2563.6	2558.5	2555.8	2547.1	2545.2	2537.2	2530.4	2526	2514.3	2513.4	2499.2	2496.6	2483	2477.1	2464.5	2455.7	2443.2	2432	2418.3	2405.4	2388.6	2375	2351.9	2339.2	2303.6	2294.8	2233.5	2230.1	2092.4	2015.7
);

@SI_water_hf = qw(
	0.001	21.02	29.303	42.022	54.688	62.982	73.433	83.915	88.424	100.98	104.83	121.39	125.74	137.75	146.64	167.53	168.75	188.44	191.81	209.34	225.94	230.26	251.18	251.42	272.12	289.27	293.07	314.03	317.62	335.02	340.54	356.02	377.04	384.44	398.09	417.51	440.28	444.36	461.42	467.13	482.59	487.01	503.81	504.71	520.71	525.07	535.35	546.38	561.43	567.75	573.19	584.26	589.16	594.73	604.66	610.64	623.14	632.18	640.09	653.79	655.77	670.38	675.47	684.08	697.24	709.24	719.08	720.87	731.95	741.02	752.74	763.05	781.03	785.19	798.33	807.43	814.59	829.78	844.55	852.26	874.87	878.16	897.61	908.47	920.5	936.21	943.55	961.87	966.76	990.14	1013.7	1037.5	1049.7	1061.5	1085.7	1110.1	1134.8	1154.5	1159.8	1185.1	1210.7	1213.8	1236.7	1263.1	1267.5	1289.8	1317.1	1344.8	1363.7	1373.1	1402	1407.8	1431.6	1450.2	1462	1491.3	1493.4	1525.8	1531.4	1559.4	1571	1594.6	1610.3	1631.7	1649.9	1671.2	1690.3	1714	1732.2	1761.5	1776.8	1817.2	1826.6	1888	1891.2	2011.1	2084.3
);

@SI_water_hfg = qw(
	2500.9	2489.1	2484.4	2477.2	2470.1	2465.4	2459.5	2453.5	2451	2443.9	2441.7	2432.3	2429.8	2423	2417.9	2406	2405.3	2394	2392.1	2382	2372.3	2369.8	2357.7	2357.5	2345.4	2335.3	2333	2320.6	2318.4	2308	2304.7	2295.3	2282.5	2278	2269.6	2257.5	2243.1	2240.6	2229.7	2226	2216	2213.1	2202.1	2201.6	2191	2188.1	2181.2	2173.7	2163.5	2159.1	2155.4	2147.7	2144.3	2140.4	2133.4	2129.2	2120.3	2113.8	2108	2098	2096.6	2085.8	2082	2075.5	2065.6	2056.4	2048.8	2047.5	2038.8	2031.7	2022.4	2014.2	1999.6	1996.2	1985.4	1977.9	1971.9	1959	1946.4	1939.8	1920	1917.1	1899.7	1889.8	1878.8	1864.3	1857.4	1840.1	1835.4	1812.8	1789.5	1765.5	1753	1740.8	1715.3	1689	1661.8	1639.7	1633.7	1604.6	1574.5	1570.9	1543.2	1510.7	1505.2	1476.9	1441.6	1404.8	1379.3	1366.3	1325.9	1317.6	1283.4	1256.1	1238.5	1194.1	1191	1140.3	1131.3	1086	1067	1027.4	1000.5	963.4	931.1	892.7	857.4	812.9	777.8	720.1	689.2	605.5	585.5	450.4	443.1	161.5	0
);

@SI_water_hg = qw(
	2500.9	2510.1	2513.7	2519.2	2524.7	2528.3	2532.9	2537.4	2539.4	2544.8	2546.5	2553.7	2555.6	2560.7	2564.6	2573.5	2574	2582.4	2583.9	2591.3	2598.3	2600.1	2608.8	2608.9	2617.5	2624.6	2626.1	2634.6	2636.1	2643	2645.2	2651.4	2659.6	2662.4	2667.6	2675	2683.4	2684.9	2691.1	2693.1	2698.6	2700.2	2706	2706.3	2711.7	2713.1	2716.5	2720.1	2724.9	2726.9	2728.6	2732	2733.5	2735.1	2738.1	2739.8	2743.4	2745.9	2748.1	2751.8	2752.4	2756.2	2757.5	2759.6	2762.8	2765.7	2767.9	2768.3	2770.8	2772.7	2775.2	2777.2	2780.7	2781.4	2783.8	2785.3	2786.5	2788.8	2791	2792	2794.8	2795.2	2797.3	2798.3	2799.3	2800.5	2801	2801.9	2802.2	2802.9	2803.2	2803	2802.7	2802.2	2801	2799.1	2796.6	2794.2	2793.5	2789.7	2785.2	2784.6	2779.9	2773.7	2772.6	2766.7	2758.7	2749.6	2742.9	2739.4	2727.9	2725.5	2715	2706.3	2700.6	2685.4	2684.3	2666	2662.7	2645.4	2637.9	2622	2610.8	2595.1	2581	2563.9	2547.7	2526.9	2510	2481.6	2466	2422.7	2412.1	2338.4	2334.3	2172.6	2084.3
);

@SI_water_sf = qw(
	0	0.0763	0.1059	0.1511	0.1956	0.2245	0.2606	0.2965	0.3118	0.3543	0.3672	0.4224	0.4368	0.4762	0.5051	0.5724	0.5763	0.6386	0.6492	0.7038	0.7549	0.768	0.8313	0.832	0.8937	0.9441	0.9551	1.0158	1.0261	1.0756	1.0912	1.1346	1.1929	1.2132	1.2504	1.3028	1.3634	1.3741	1.4188	1.4337	1.4737	1.485	1.5279	1.5302	1.5706	1.5816	1.6072	1.6346	1.6717	1.6872	1.7005	1.7274	1.7392	1.7526	1.7765	1.7908	1.8205	1.8418	1.8604	1.8924	1.897	1.9308	1.9426	1.9623	1.9923	2.0195	2.0417	2.0457	2.0705	2.0906	2.1166	2.1392	2.1785	2.1875	2.2159	2.2355	2.2508	2.2831	2.3143	2.3305	2.3776	2.3844	2.4245	2.4467	2.4712	2.5029	2.5176	2.5542	2.5639	2.61	2.656	2.7018	2.7253	2.7476	2.7933	2.839	2.8847	2.9207	2.9304	2.9762	3.0221	3.0275	3.0681	3.1144	3.122	3.1608	3.2076	3.2548	3.2866	3.3024	3.3506	3.3603	3.3994	3.4299	3.4491	3.4964	3.4998	3.5516	3.5606	3.605	3.6232	3.6602	3.6848	3.7179	3.7461	3.7788	3.8082	3.8442	3.872	3.9165	3.9396	4.0004	4.0146	4.1071	4.1119	4.2942	4.407
);

@SI_water_sfg = qw(
	9.1556	8.9487	8.869	8.7488	8.6314	8.5559	8.4621	8.3696	8.3302	8.2222	8.1895	8.051	8.0152	7.9176	7.8466	7.6832	7.6738	7.5247	7.4996	7.371	7.2522	7.2218	7.0769	7.0752	6.936	6.8234	6.7989	6.6655	6.643	6.5355	6.5019	6.4089	6.2853	6.2426	6.1647	6.0562	5.9319	5.91	5.8193	5.7894	5.7092	5.6865	5.6013	5.5968	5.5171	5.4956	5.4453	5.3919	5.32	5.2901	5.2645	5.2128	5.1901	5.1645	5.1191	5.0919	5.0356	4.9953	4.9603	4.9002	4.8916	4.8285	4.8066	4.7699	4.7143	4.6642	4.6233	4.616	4.5705	4.5335	4.4862	4.4448	4.3735	4.3572	4.3058	4.2705	4.2428	4.1847	4.1287	4.0997	4.0154	4.0033	3.9318	3.8923	3.8489	3.7926	3.7664	3.7016	3.6844	3.6028	3.5216	3.4405	3.3991	3.3596	3.2788	3.1979	3.1169	3.053	3.0358	2.9542	2.8723	2.8627	2.7898	2.7066	2.6927	2.6225	2.5374	2.4511	2.3925	2.3633	2.2737	2.2556	2.1821	2.1245	2.0881	1.9975	1.9911	1.8906	1.873	1.7857	1.7497	1.6756	1.6261	1.5585	1.5005	1.4326	1.3709	1.2942	1.2343	1.1373	1.086	0.9489	0.9164	0.7005	0.689	0.2496	0
);

@SI_water_sg = qw(
	9.1556	9.0249	8.9749	8.8999	8.827	8.7803	8.7227	8.6661	8.6421	8.5765	8.5567	8.4734	8.452	8.3938	8.3517	8.2556	8.2501	8.1633	8.1488	8.0748	8.0071	7.9898	7.9082	7.9073	7.8296	7.7675	7.754	7.6812	7.6691	7.6111	7.5931	7.5435	7.4782	7.4558	7.4151	7.3589	7.2952	7.2841	7.2382	7.2231	7.1829	7.1716	7.1292	7.127	7.0877	7.0771	7.0525	7.0265	6.9917	6.9773	6.965	6.9402	6.9294	6.9171	6.8955	6.8827	6.8561	6.8371	6.8207	6.7927	6.7886	6.7593	6.7492	6.7322	6.7067	6.6837	6.665	6.6616	6.6409	6.6242	6.6027	6.5841	6.552	6.5447	6.5217	6.5059	6.4936	6.4678	6.443	6.4302	6.393	6.3877	6.3563	6.339	6.32	6.2954	6.284	6.2558	6.2483	6.2128	6.1775	6.1424	6.1244	6.1072	6.0721	6.0369	6.0017	5.9737	5.9662	5.9305	5.8944	5.8902	5.8579	5.821	5.8148	5.7834	5.745	5.7059	5.6791	5.6657	5.6243	5.6159	5.5816	5.5544	5.5372	5.4939	5.4908	5.4422	5.4336	5.3907	5.3728	5.3358	5.3108	5.2765	5.2466	5.2114	5.1791	5.1384	5.1064	5.0537	5.0256	4.9493	4.931	4.8076	4.8009	4.5439	4.407
);

###############
###         ###
###   air   ###
###         ###
###############

@SI_air_T = qw(
	200	210	220	230	240	250	260	270	280	285	290	295	298	300	305	310	315	320	325	330	340	350	360	370	380	390	400	410	420	430	440	450	460	470	480	490	500	510	520	530	540	550	560	570	580	590	600	610	620	630	640	650	660	670	680	690	700	710	720	730	740	750	760	780	800	820	840	860	880	900	920	940	960	980	1000	1020	1040	1060	1080	1100	1120	1140	1160	1180	1200	1220	1240	1260	1280	1300	1320	1340	1360	1380	1400	1420	1440	1460	1480	1500	1520	1540	1560	1580	1600	1620	1640	1660	1680	1700	1750	1800	1850	1900	1950	2000	2050	2100	2150	2200	2250
);

@SI_air_h = qw(
	199.97	209.97	219.97	230.02	240.02	250.05	260.09	270.11	280.13	285.14	290.16	295.17	298.18	300.19	305.22	310.24	315.27	320.29	325.31	330.34	340.42	350.49	360.58	370.67	380.77	390.88	400.98	411.12	421.26	431.43	441.61	451.8	462.02	472.24	482.49	492.74	503.02	513.32	523.63	533.98	544.35	555.74	565.17	575.59	586.04	596.52	607.02	617.53	628.07	638.63	649.22	659.84	670.47	681.14	691.82	702.52	713.27	724.04	734.82	745.62	756.44	767.29	778.18	800.03	821.95	843.98	866.08	888.27	910.56	932.93	955.38	977.92	1000.55	1023.25	1046.04	1068.89	1091.85	1114.86	1137.89	1161.07	1184.28	1207.57	1230.92	1254.34	1277.79	1301.31	1324.93	1348.55	1372.24	1395.97	1419.76	1443.6	1467.49	1491.44	1515.42	1539.44	1563.51	1587.63	1611.79	1635.97	1660.23	1684.51	1708.82	1733.17	1757.57	1782	1806.46	1830.96	1855.5	1880.1	1941.6	2003.3	2065.3	2127.4	2189.7	2252.1	2314.6	2377.7	2440.3	2503.2	2566.4
);

@SI_air_Pr = qw(
	0.3363	0.3987	0.469	0.5477	0.6355	0.7329	0.8405	0.959	1.0889	1.1584	1.2311	1.3068	1.3543	1.386	1.4686	1.5546	1.6442	1.7375	1.8345	1.9352	2.149	2.379	2.626	2.892	3.176	3.481	3.806	4.153	4.522	4.915	5.332	5.775	6.245	6.742	7.268	7.824	8.411	9.031	9.684	10.37	11.1	11.86	12.66	13.5	14.38	15.31	16.28	17.3	18.36	19.84	20.64	21.86	23.13	24.46	25.85	27.29	28.8	30.38	32.02	33.72	35.5	37.35	39.27	43.35	47.75	52.59	57.6	63.09	68.98	75.29	82.05	89.28	97	105.2	114	123.4	133.3	143.9	155.2	167.1	179.7	193.1	207.2	222.2	238	254.7	272.3	290.8	310.4	330.9	352.5	375.3	399.1	424.2	450.5	478	506.9	537.1	568.8	601.9	636.5	672.8	710.5	750	791.2	834.1	878.9	925.6	974.2	1025	1161	1310	1475	1655	1852	2068	2303	2559	2837	3138	3464
);

@SI_air_u = qw(
	142.56	149.69	156.82	164	171.13	178.28	185.45	192.6	199.75	203.33	206.91	210.49	212.64	214.07	217.67	221.25	224.85	228.42	232.02	235.61	242.82	250.02	257.24	264.46	271.69	278.93	286.16	293.43	300.69	307.99	315.3	322.62	329.97	337.32	344.7	352.08	359.49	366.92	374.36	381.84	389.34	396.86	404.42	411.97	419.55	427.15	434.78	442.42	450.09	457.78	465.5	473.25	481.01	488.81	496.62	504.45	512.33	520.23	528.14	536.07	544.02	551.99	560.01	576.12	592.3	608.59	624.95	641.4	657.95	674.58	691.28	708.08	725.02	741.98	758.94	776.1	793.36	810.62	827.88	845.33	862.79	880.35	897.91	915.57	933.33	951.09	968.95	986.9	1004.76	1022.82	1040.88	1058.94	1077.1	1095.26	1113.52	1131.77	1150.13	1168.49	1186.95	1205.41	1223.87	1242.43	1260.99	1279.65	1298.3	1316.96	1335.72	1354.48	1373.24	1392.7	1439.8	1487.2	1534.9	1582.6	1630.6	1678.7	1726.8	1775.3	1823.8	1872.4	1921.3
);

@SI_air_vr = qw(
	1707	1512	1346	1205	1084	979	887.8	808	738	706.1	676.1	647.9	631.9	621.2	596	572.3	549.8	528.6	508.4	489.4	454.1	422.2	393.4	367.2	343.4	321.5	301.6	283.3	266.6	251.1	236.8	223.6	211.4	200.1	189.5	179.7	170.6	162.1	154.1	146.7	139.7	133.1	127	121.2	115.7	110.6	105.8	101.2	96.92	92.84	88.99	85.34	81.89	78.61	75.5	72.56	69.76	67.07	64.53	62.13	59.82	57.63	55.54	51.64	48.08	44.84	41.85	39.12	36.61	34.31	32.18	30.22	28.4	26.73	25.17	23.72	23.29	21.14	19.98	18.896	17.886	16.946	16.064	15.241	14.47	13.747	13.069	12.435	11.835	11.275	10.747	10.247	9.78	9.337	8.919	8.526	8.153	7.801	7.468	7.152	6.854	6.569	6.301	6.046	5.804	5.574	5.355	5.147	4.949	4.761	4.328	3.994	3.601	3.295	3.022	2.776	2.555	2.356	2.175	2.012	1.864
);

@SI_air_so = qw(
	1.29559	1.34444	1.39105	1.43557	1.47824	1.51917	1.55848	1.59634	1.63279	1.65055	1.66802	1.68515	1.69528	1.70203	1.71865	1.73498	1.75106	1.7669	1.78249	1.79783	1.8279	1.85708	1.88543	1.91313	1.94001	1.96633	1.99194	2.01699	2.04142	2.06533	2.0887	2.11161	2.13407	2.15604	2.1776	2.19876	2.21952	2.23993	2.25997	2.27967	2.29906	2.31809	2.33685	2.35531	2.37348	2.3914	2.40902	2.42644	2.44356	2.46048	2.47716	2.49364	2.50985	2.52589	2.54175	2.55731	2.57277	2.5881	2.60319	2.61803	2.6328	2.64737	2.66176	2.69013	2.71787	2.74504	2.7717	2.79783	2.82344	2.84856	2.87324	2.89748	2.92128	2.94468	2.9677	2.99034	3.0126	3.03449	3.05608	3.07732	3.09825	3.11883	3.13916	3.15916	3.17888	3.19834	3.21751	3.23638	3.2551	3.27345	3.2916	3.30959	3.32724	3.34474	3.362	3.37901	3.39586	3.41247	3.42892	3.44516	3.4612	3.47712	3.49276	3.50829	3.52364	3.53879	3.55381	3.56867	3.58335	3.5979	3.6336	3.6684	3.7023	3.7354	3.7677	3.7994	3.8303	3.8605	3.8901	3.9191	3.9474
);

#############################
###                       ###
###   superheated water   ###
###                       ###
#############################

####             ####
####   0.1 MPa   ####
####             ####

@SI_superWater_0p1MPa_T = qw(
	99.61 100	150	200	250	300	400	500	600	700	800	900	1000	1100	1200	1300
);

@SI_superWater_0p1MPa_v = qw(
	1.6941 1.6959	1.9367	2.1724	2.4062	2.6389	3.1027	3.5655	4.0279	4.49	4.9519	5.4137	5.8755	6.3372	6.7988	7.2605
);

@SI_superWater_0p1MPa_u = qw(
	2505.6 2506.2	2582.9	2658.2	2733.9	2810.7	2968.3	3132.2	3302.8	3480.4	3665	3856.7	4055	4259.8	4470.7	4687.2
);

@SI_superWater_0p1MPa_h = qw(
	2675 2675.8	2776.6	2875.5	2974.5	3074.5	3278.6	3488.7	3705.6	3929.4	4160.2	4398	4642.6	4893.6	5150.6	5413.3
);

@SI_superWater_0p1MPa_s = qw(
	7.3589 7.3611	7.6148	7.8356	8.0346	8.2172	8.5452	8.8362	9.0999	9.3424	9.5682	9.78	9.98	10.1698	10.3504	10.5229
);

####             ####
####   1.2 MPa   ####
####             ####

@SI_superWater_1p2MPa_T = qw(
	179.88	200	250	300	350	400	500	600	700	800	900	1000	1100	1200	1300
);

@SI_superWater_1p2MPa_v = qw(
	0.16326	0.16934	0.19241	0.21386	0.23455	0.25482	0.29464	0.33395	0.37297	0.41184	0.45059	0.48928	0.52792	0.56652	0.60509
);

@SI_superWater_1p2MPa_u = qw(
	2587.8	2612.9	2704.7	2789.7	2872.7	2955.5	3123.4	3296.3	3475.3	3661	3853.3	4052.2	4257.5	4468.7	4685.5
);

@SI_superWater_1p2MPa_h = qw(
	2783.8	2816.1	2935.6	3046.3	3154.2	3261.3	3477	3697	3922.9	4155.2	4394	4639.4	4891	5148.5	5411.6
);

@SI_superWater_1p2MPa_s = qw(
	6.5217	6.5909	6.8313	7.0335	7.2139	7.3793	7.6779	7.9456	8.1904	8.4176	8.6303	8.831	9.0212	9.2022	9.375
);

####             ####
####   1.4 MPa   ####
####             ####

@SI_superWater_1p4MPa_T = qw(
	195.04	200	250	300	350	400	500	600	700	800	900	1000	1100	1200	1300
);

@SI_superWater_1p4MPa_v = qw(
	0.14078	0.14303	0.16356	0.18233	0.20029	0.21782	0.25216	0.28597	0.31951	0.35288	0.38614	0.41933	0.45247	0.48558	0.51866
);

@SI_superWater_1p4MPa_u = qw(
	2591.8	2602.7	2698.9	2785.7	2869.7	2953.1	3121.8	3295.1	3474.4	3660.3	3852.7	4051.7	4257	4468.3	4685.1
);

@SI_superWater_1p4MPa_h = qw(
	2788.9	2803	2927.9	3040.9	3150.1	3258.1	3474.8	3695.5	3921.7	4154.3	4393.3	4638.8	4890.5	5148.1	5411.3
);

@SI_superWater_1p4MPa_s = qw(
	6.4675	6.4975	6.7488	6.9553	7.1379	7.3046	7.6047	7.873	8.1183	8.3458	8.5587	8.7595	8.9497	9.1308	9.3036
);

####             ####
####   1.6 MPa   ####
####             ####

@SI_superWater_1p6MPa_T = qw(
	201.37	225	250	300	350	400	500	600	700	800	900	1000	1100	1200	1300
);

@SI_superWater_1p6MPa_v = qw(
	0.12374	0.13293	0.1419	0.15866	0.17459	0.19007	0.22029	0.24999	0.27941	0.30865	0.3378	0.36687	0.39589	0.42488	0.45383
);

@SI_superWater_1p6MPa_u = qw(
	2594.8	2645.1	2692.9	2781.6	2866.6	2950.8	3120.1	3293.9	3473.5	3659.5	3852.1	4051.2	4256.6	4467.9	4684.8
);

@SI_superWater_1p6MPa_h = qw(
	2792.8	2857.8	2919.9	3035.4	3146	3254.9	3472.6	3693.9	3920.5	4153.4	4392.6	4638.2	4890	5147.7	5410.9
);

@SI_superWater_1p6MPa_s = qw(
	6.42	6.5537	6.6753	6.8864	7.0713	7.2394	7.541	7.8101	8.0558	8.2834	8.4965	8.6974	8.8878	9.0689	9.2418
);

####             ####
####   1.8 MPa   ####
####             ####

@SI_superWater_1p8MPa_T = qw(
	207.11	225	250	300	350	400	500	600	700	800	900	1000	1100	1200	1300
);

@SI_superWater_1p8MPa_v = qw(
	0.11037	0.11678	0.12502	0.14025	0.1546	0.16849	0.19551	0.222	0.24822	0.27426	0.3002	0.32606	0.35188	0.37766	0.40341
);

@SI_superWater_1p8MPa_u = qw(
	2597.3	2637	2686.7	2777.4	2863.6	2948.3	3118.5	3292.7	3472.6	3658.8	3851.5	4050.7	4256.2	4467.6	4684.5
);

@SI_superWater_1p8MPa_h = qw(
	2795.9	2847.2	2911.7	3029.9	3141.9	3251.6	3470.4	3692.3	3919.4	4152.4	4391.9	4637.6	4889.6	5147.3	5410.6
);

@SI_superWater_1p8MPa_s = qw(
	6.3775	6.4825	6.6088	6.8246	7.012	7.1814	7.4845	7.7543	8.0005	8.2284	8.4417	8.6427	8.8331	9.0143	9.1872
);

####             ####
####   10 MPa    ####
####             ####

@SI_superWater_10MPa_T = qw(
	311 325	350	400	450	500	550	600	650	700	800	900	1000	1100	1200	1300
);

@SI_superWater_10MPa_v = qw(
	.018028 0.019877	0.02244	0.026436	0.029782	0.032811	0.035655	0.038378	0.041018	0.043597	0.048629	0.053547	0.058391	0.063183	0.067938	0.072667
);

@SI_superWater_10MPa_u = qw(
	2545.2 2611.6	2699.6	2833.1	2944.5	3047	3145.4	3242	3338	3434	3628.2	3826.5	4029.9	4238.5	4452.4	4671.3
);

@SI_superWater_10MPa_h = qw(
	2725.5 2810.3	2924	3097.5	3242.4	3375.1	3502	3625.8	3748.1	3870	4114.5	4362	4613.8	4870.3	5131.7	5398
);

@SI_superWater_10MPa_s = qw(
	5.6159 5.7596	5.946	6.2141	6.4219	6.5995	6.7585	6.9045	7.0408	7.1693	7.4085	7.629	7.8349	8.0289	8.2126	8.3874
);

############################
###                      ###
###   saturated R-134a   ###
###                      ###
############################

@SI_R134a_Tsat = qw(
	-40.00	-38.00	-36.95	-36.00	-34.00	-33.87	-32.00	-31.13	-30.00	-28.65	-28.00	-26.37	-26.00	-24.00	-22.32	-22.00	-20.00	-18.77	-18.00	-16.00	-15.60	-14.00	-12.73	-12.00	-10.09	-10.00	-8.00	-6.00	-5.38	-4.00	-2.00	-1.25	0.00	2.00	2.46	4.00	5.82	6.00	8.00	8.91	10.00	12.00	12.46	14.00	15.71	16.00	18.00	18.73	20.00	21.55	22.00	24.00	24.20	26.00	26.69	28.00	29.06	30.00	31.31	32.00	33.45	34.00	35.51	36.00	37.48	38.00	39.37	40.00	42.00	44.00	46.00	46.29	48.00	52.00	52.40	56.00	57.88	60.00	62.87	65.00	67.45	70.00	75.00	77.54	80.00	85.00	86.16	90.00	95.00	100.00
);

@SI_R134a_Psat = qw(
	51.250	56.860	60.00	62.950	69.560	70.00	76.710	80.00	84.430	90.00	92.760	100.00	101.730	111.370	120.00	121.720	132.820	140.00	144.690	157.380	160.00	170.930	180.00	185.370	200.00	200.740	217.080	234.440	240.00	252.850	272.360	280.00	293.010	314.840	320.00	337.900	360.00	362.230	387.880	400.00	414.890	443.310	450.00	473.190	500.00	504.580	537.520	550.00	572.070	600.00	608.270	646.180	650.00	685.840	700.00	727.310	750.00	770.640	800.00	815.890	850.00	863.110	900.00	912.350	950.00	963.680	1000.00	1017.100	1072.800	1130.700	1191.000	1200.00	1253.600	1386.200	1400.00	1529.100	1600.00	1682.800	1800.00	1891.000	2000.00	2118.200	2365.800	2500.00	2635.300	2928.200	3000.00	3246.900	3594.100	3975.100
);

@SI_R134a_vf = qw(
	0.0007054	0.0007083	0.0007098	0.0007112	0.0007142	0.0007144	0.0007172	0.0007185	0.0007203	0.0007223	0.0007234	0.0007259	0.0007265	0.0007297	0.0007324	0.0007329	0.0007362	0.0007383	0.0007396	0.000743	0.0007437	0.0007464	0.0007487	0.0007499	0.0007533	0.0007535	0.0007571	0.0007608	0.000762	0.0007646	0.0007684	0.0007699	0.0007723	0.0007763	0.0007772	0.0007804	0.0007841	0.0007845	0.0007887	0.0007907	0.000793	0.0007975	0.0007985	0.000802	0.0008059	0.0008066	0.0008113	0.000813	0.0008161	0.0008199	0.000821	0.0008261	0.0008266	0.0008313	0.0008331	0.0008366	0.0008395	0.0008421	0.0008458	0.0008478	0.000852	0.0008536	0.000858	0.0008595	0.0008641	0.0008657	0.00087	0.000872	0.0008786	0.0008854	0.0008924	0.0008934	0.0008996	0.000915	0.0009166	0.0009317	0.00094	0.0009498	0.0009639	0.000975	0.0009886	0.0010037	0.0010372	0.0010566	0.0010772	0.001127	0.0011406	0.0011932	0.0012933	0.0015269
);

@SI_R134a_vfg = qw(
	0.360105	0.326612	0.310500	0.296799	0.270186	0.268576	0.246393	0.236812	0.225080	0.211908	0.205937	0.191814	0.188734	0.173220	0.161388	0.159217	0.146554	0.139402	0.135090	0.124677	0.122736	0.115224	0.109661	0.106610	0.099114	0.098763	0.091595	0.085041	0.083135	0.079039	0.073536	0.071582	0.068483	0.063836	0.062827	0.059558	0.055954	0.055614	0.051973	0.050410	0.048610	0.045498	0.044821	0.042615	0.040312	0.039941	0.037460	0.036595	0.035153	0.033475	0.033007	0.031008	0.030819	0.029145	0.028528	0.027405	0.026532	0.025780	0.024775	0.024260	0.023217	0.022837	0.021825	0.021505	0.020574	0.020253	0.019443	0.019080	0.017976	0.016939	0.015961	0.015822	0.015039	0.013350	0.013190	0.011839	0.011183	0.010484	0.009595	0.008975	0.008299	0.007638	0.006443	0.005879	0.005359	0.004359	0.004134	0.003406	0.002433	0.001103
);

@SI_R134a_vg = qw(
	0.36081	0.32732	0.31121	0.29751	0.2709	0.26929	0.24711	0.23753	0.2258	0.21263	0.20666	0.19254	0.18946	0.17395	0.16212	0.15995	0.14729	0.14014	0.13583	0.12542	0.12348	0.11597	0.11041	0.10736	0.099867	0.099516	0.092352	0.085802	0.083897	0.079804	0.074304	0.072352	0.069255	0.064612	0.063604	0.060338	0.056738	0.056398	0.052762	0.051201	0.049403	0.046295	0.045619	0.043417	0.041118	0.040748	0.038271	0.037408	0.035969	0.034295	0.033828	0.031834	0.031646	0.029976	0.029361	0.028242	0.027371	0.026622	0.025621	0.025108	0.024069	0.023691	0.022683	0.022364	0.021438	0.021119	0.020313	0.019952	0.018855	0.017824	0.016853	0.016715	0.015939	0.014265	0.014107	0.012771	0.012123	0.011434	0.010559	0.00995	0.009288	0.008642	0.00748	0.006936	0.006436	0.005486	0.005275	0.004599	0.003726	0.00263
);

@SI_R134a_uf = qw(
	-0.036	2.475	3.798	4.992	7.517	7.68	10.05	11.15	12.59	14.31	15.13	17.21	17.69	20.25	22.4	22.82	25.39	26.98	27.98	30.57	31.09	33.17	34.83	35.78	38.28	38.4	41.03	43.66	44.48	46.31	48.96	49.97	51.63	54.3	54.92	56.99	59.44	59.68	62.39	63.62	65.1	67.83	68.45	70.57	72.93	73.32	76.08	77.1	78.86	81.02	81.64	84.44	84.72	87.26	88.24	90.09	91.59	92.93	94.79	95.79	97.87	98.66	100.83	101.55	103.69	104.45	106.45	107.38	110.32	113.28	116.26	116.7	119.26	125.33	125.94	131.49	134.43	137.76	142.33	145.77	149.78	154.01	162.53	166.99	171.4	180.77	183.04	190.89	202.4	218.72
);

@SI_R134a_ufg = qw(
	207.4	206.04	205.32	204.67	203.29	203.2	201.91	201.3	200.52	199.57	199.12	197.98	197.72	196.3	195.11	194.88	193.45	192.57	192.01	190.56	190.27	189.09	188.16	187.62	186.21	186.14	184.64	183.13	182.67	181.61	180.08	179.5	178.53	176.97	176.61	175.39	173.94	173.8	172.19	171.45	170.56	168.92	168.54	167.26	165.82	165.58	163.88	163.25	162.16	160.81	160.42	158.65	158.48	156.87	156.24	155.05	154.08	153.22	152	151.35	149.98	149.46	148.01	147.54	146.1	145.58	144.23	143.6	141.58	139.52	137.42	137.11	135.29	130.88	130.43	126.28	124.04	121.46	117.83	115.05	111.73	108.14	100.6	96.47	92.23	82.67	80.22	71.29	56.47	29.19
);

@SI_R134a_ug = qw(
	207.37	208.51	209.12	209.66	210.81	210.88	211.96	212.46	213.11	213.88	214.25	215.19	215.4	216.55	217.51	217.7	218.84	219.54	219.98	221.13	221.35	222.27	222.99	223.4	224.48	224.54	225.67	226.8	227.14	227.92	229.04	229.46	230.16	231.27	231.52	232.38	233.38	233.48	234.58	235.07	235.67	236.75	237	237.83	238.75	238.9	239.96	240.35	241.02	241.83	242.06	243.1	243.2	244.12	244.48	245.14	245.67	246.14	246.79	247.14	247.85	248.12	248.85	249.08	249.79	250.04	250.68	250.97	251.89	252.8	253.68	253.81	254.55	256.21	256.37	257.77	258.47	259.22	260.17	260.82	261.51	262.15	263.13	263.45	263.63	263.44	263.26	262.18	258.87	247.91
);

@SI_R134a_hf = qw(
	0	2.515	3.841	5.037	7.566	7.73	10.1	11.21	12.65	14.37	15.2	17.28	17.76	20.33	22.49	22.91	25.49	27.08	28.09	30.69	31.21	33.3	34.97	35.92	38.43	38.55	41.19	43.84	44.66	46.5	49.17	50.18	51.86	54.55	55.16	57.25	59.72	59.97	62.69	63.94	65.43	68.18	68.81	70.95	73.33	73.73	76.52	77.54	79.32	81.51	82.14	84.98	85.26	87.83	88.82	90.69	92.22	93.58	95.47	96.48	98.6	99.4	101.61	102.33	104.51	105.29	107.32	108.26	111.26	114.28	117.32	117.77	120.39	126.59	127.22	132.91	135.93	139.36	144.07	147.62	151.76	156.13	164.98	169.63	174.24	184.07	186.46	194.76	207.05	224.79
);

@SI_R134a_hfg = qw(
	225.86	224.61	223.95	223.35	222.09	222	220.81	220.25	219.52	218.65	218.22	217.16	216.92	215.59	214.48	214.26	212.91	212.08	211.55	210.18	209.9	208.79	207.9	207.38	206.03	205.96	204.52	203.07	202.62	201.6	200.11	199.54	198.6	197.07	196.71	195.51	194.08	193.94	192.35	191.62	190.73	189.09	188.71	187.42	185.98	185.73	184.01	183.38	182.27	180.9	180.49	178.69	178.51	176.85	176.21	174.99	173.98	173.08	171.82	171.14	169.71	169.17	167.66	167.16	165.64	165.1	163.67	163	160.86	158.67	156.43	156.1	154.14	149.39	148.9	144.38	141.93	139.1	135.11	132.02	128.33	124.32	115.85	111.16	106.35	95.44	92.63	82.35	65.21	33.58
);

@SI_R134a_hg = qw(
	225.86	227.12	227.79	228.39	229.65	229.73	230.91	231.46	232.17	233.02	233.43	234.44	234.68	235.92	236.97	237.17	238.41	239.16	239.64	240.87	241.11	242.09	242.86	243.3	244.46	244.51	245.72	246.91	247.28	248.1	249.28	249.72	250.45	251.61	251.88	252.77	253.81	253.91	255.04	255.55	256.16	257.27	257.53	258.37	259.3	259.46	260.53	260.92	261.59	262.4	262.64	263.67	263.77	264.68	265.03	265.68	266.2	266.66	267.29	267.62	268.31	268.57	269.26	269.49	270.15	270.39	270.99	271.27	272.12	272.95	273.75	273.87	274.53	275.98	276.12	277.3	277.86	278.46	279.17	279.64	280.09	280.46	280.82	280.79	280.59	279.51	279.09	277.11	272.26	258.37
);

@SI_R134a_sf = qw(
	0	0.01072	0.01634	0.02138	0.03199	0.03267	0.04253	0.04711	0.05301	0.06008	0.06344	0.07188	0.07382	0.08414	0.09275	0.09441	0.10463	0.11087	0.11481	0.12493	0.12693	0.13501	0.14139	0.14504	0.15457	0.15504	0.16498	0.17489	0.17794	0.18476	0.19459	0.19829	0.20439	0.21415	0.21637	0.22387	0.2327	0.23356	0.24323	0.24761	0.25286	0.26246	0.26465	0.27204	0.28023	0.28159	0.29112	0.29461	0.30063	0.30799	0.31011	0.31958	0.32051	0.32903	0.3323	0.33846	0.34345	0.34789	0.35404	0.3573	0.36413	0.3667	0.37377	0.37609	0.38301	0.38548	0.39189	0.39486	0.40425	0.41363	0.42302	0.42441	0.43242	0.45126	0.45315	0.47018	0.47911	0.4892	0.50294	0.5132	0.52509	0.53755	0.56241	0.57531	0.588	0.61473	0.62118	0.64336	0.67578	0.72217
);

@SI_R134a_sfg = qw(
	0.96866	0.95511	0.94807	0.94176	0.92859	0.92775	0.9156	0.90999	0.90278	0.89419	0.89012	0.87995	0.87762	0.86527	0.85503	0.85307	0.84101	0.83368	0.82908	0.81729	0.81496	0.80561	0.79826	0.79406	0.78316	0.78263	0.7713	0.76008	0.75664	0.74896	0.73794	0.73381	0.72701	0.71616	0.71369	0.7054	0.69566	0.69471	0.6841	0.67929	0.67356	0.66308	0.66069	0.65266	0.64377	0.6423	0.63198	0.62821	0.62172	0.61378	0.61149	0.6013	0.6003	0.59115	0.58763	0.58102	0.57567	0.57091	0.56431	0.56082	0.55349	0.55074	0.54315	0.54066	0.53323	0.53058	0.52368	0.52049	0.51039	0.50027	0.49012	0.48863	0.47993	0.45941	0.45734	0.43863	0.42873	0.41749	0.40204	0.39039	0.37675	0.36227	0.33272	0.31695	0.30111	0.26644	0.25776	0.22674	0.17711	0.08999
);

@SI_R134a_sg = qw(
	0.96866	0.96584	0.96441	0.96315	0.96058	0.96042	0.95813	0.9571	0.95579	0.95427	0.95356	0.95183	0.95144	0.94941	0.94779	0.94748	0.94564	0.94456	0.94389	0.94222	0.9419	0.94063	0.93965	0.93911	0.93773	0.93766	0.93629	0.93497	0.93458	0.93372	0.93253	0.9321	0.93139	0.93031	0.93006	0.92927	0.92836	0.92828	0.92733	0.92691	0.92641	0.92554	0.92535	0.9247	0.924	0.92389	0.9231	0.92282	0.92234	0.92177	0.9216	0.92088	0.92081	0.92018	0.91994	0.91948	0.91912	0.91879	0.91835	0.91811	0.91762	0.91743	0.91692	0.91675	0.91624	0.91606	0.91558	0.91536	0.91464	0.91391	0.91315	0.91303	0.91236	0.91067	0.9105	0.9088	0.90784	0.90669	0.90498	0.90359	0.90184	0.89982	0.89512	0.89226	0.88912	0.88117	0.87894	0.8701	0.85289	0.81215
);

##############################
###                        ###
###   superheated R-134a   ###
###                        ###
##############################

####              ####
####   0.7 MPa    ####
####              ####

@SI_superR134a_0p7MPa_T = qw(
	26.69	30	40	50	60	70	80	90	100	110	120	130	140	150	160
);

@SI_superR134a_0p7MPa_v = qw(
	0.029361	0.029966	0.031696	0.033322	0.034875	0.036373	0.037829	0.03925	0.040642	0.04201	0.043358	0.044688	0.046004	0.047306	0.048597
);

@SI_superR134a_0p7MPa_u = qw(
	244.48	247.48	256.39	265.2	274.01	282.87	291.8	300.82	309.95	319.19	328.55	338.04	347.66	357.41	367.29
);

@SI_superR134a_0p7MPa_h = qw(
	265.03	268.45	278.57	288.53	298.42	308.33	318.28	328.29	338.4	348.6	358.9	369.32	379.86	390.52	401.31
);

@SI_superR134a_0p7MPa_s = qw(
	0.9199	0.9313	0.9641	0.9954	1.0256	1.0549	1.0835	1.1114	1.1389	1.1658	1.1924	1.2186	1.2444	1.2699	1.2951
);

####              ####
####   0.8 MPa    ####
####              ####

@SI_superR134a_0p8MPa_T = qw(
	31.31	40	50	60	70	80	90	100	110	120	130	140	150	160	170	180
);

@SI_superR134a_0p8MPa_v = qw(
	0.025621	0.027035	0.028547	0.029973	0.03134	0.032659	0.033941	0.035193	0.03642	0.037625	0.038813	0.039985	0.041143	0.04229	0.043427	0.044554
);

@SI_superR134a_0p8MPa_u = qw(
	246.79	254.82	263.86	272.83	281.81	290.84	299.95	309.15	318.45	327.87	337.4	347.06	356.85	366.76	376.81	386.99
);

@SI_superR134a_0p8MPa_h = qw(
	267.29	276.45	286.69	296.81	306.88	316.97	327.1	337.3	347.59	357.97	368.45	379.05	389.76	400.59	411.55	422.64
);

@SI_superR134a_0p8MPa_s = qw(
	0.9183	0.948	0.9802	1.011	1.0408	1.0698	1.0981	1.1258	1.153	1.1798	1.2061	1.2321	1.2577	1.283	1.308	1.3327
);

####              ####
####   0.9 MPa    ####
####              ####

@SI_superR134a_0p9MPa_T = qw(
	35.51	40	50	60	70	80	90	100	110	120	130	140	150	160	170	180
);

@SI_superR134a_0p9MPa_v = qw(
	0.022683	0.023375	0.024809	0.026146	0.027413	0.02863	0.029806	0.030951	0.032068	0.033164	0.034241	0.035302	0.036349	0.037384	0.038408	0.039423
);

@SI_superR134a_0p9MPa_u = qw(
	248.85	253.13	262.44	271.6	280.72	289.86	299.06	308.34	317.7	327.18	336.76	346.46	356.28	366.23	376.31	386.52
);

@SI_superR134a_0p9MPa_h = qw(
	269.26	274.17	284.77	295.13	305.39	315.63	325.89	336.19	346.56	357.02	367.58	378.23	389	399.88	410.88	422
);

@SI_superR134a_0p9MPa_s = qw(
	0.9169	0.9327	0.966	0.9976	1.028	1.0574	1.086	1.114	1.1414	1.1684	1.1949	1.221	1.2467	1.2721	1.2972	1.3221
);

####              ####
####   1.2 MPa    ####
####              ####

@SI_superR134a_1p2MPa_T = qw(
	46.29	50	60	70	80	90	100	110	120	130	140	150	160	170	180
);

@SI_superR134a_1p2MPa_v = qw(
	0.016715	0.017201	0.018404	0.019502	0.020529	0.021506	0.022442	0.023348	0.024228	0.025086	0.025927	0.026753	0.027566	0.028367	0.029158
);

@SI_superR134a_1p2MPa_u = qw(
	253.81	257.63	267.56	277.21	286.75	296.26	305.8	315.38	325.03	334.77	344.61	354.56	364.61	374.78	385.08
);

@SI_superR134a_1p2MPa_h = qw(
	273.87	278.27	289.64	300.61	311.39	322.07	332.73	343.4	354.11	364.88	375.72	386.66	397.69	408.82	420.07
);

@SI_superR134a_1p2MPa_s = qw(
	0.913	0.9267	0.9614	0.9938	1.0248	1.0546	1.0836	1.1118	1.1394	1.1664	1.193	1.2192	1.2449	1.2703	1.2954
);

1;    #required at end of file - a perl thing