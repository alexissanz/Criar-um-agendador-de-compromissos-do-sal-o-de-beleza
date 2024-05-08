--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying(50)
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(50),
    phone character varying(15)
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.appointments (appointment_id, customer_id, service_id, "time") FROM stdin;
428	28	1	
429	28	1	
430	28	1	
431	28	1	
432	28	1	
433	28	1	
434	28	1	
435	28	1	
436	28	1	
437	28	1	
21	18	1	10:00
32	28	1	
68	\N	1	Test
72	\N	1	
76	\N	1	
78	\N	1	
80	\N	1	
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.customers (customer_id, name, phone) FROM stdin;
2	555-5555	1
18	ALEXIS	955000000
28		
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.services (service_id, name) FROM stdin;
1	cut
2	color
3	perm
4	style
5	trim
6	cut
7	color
8	perm
9	style
10	trim
11	cut
12	color
13	perm
14	style
15	trim
16	cut
17	color
18	perm
19	style
20	trim
21	cut
22	color
23	perm
24	style
25	trim
26	cut
27	color
28	perm
29	style
30	trim
31	cut
32	color
33	perm
34	style
35	trim
36	cut
37	color
38	perm
39	style
40	trim
41	cut
42	color
43	perm
44	style
45	trim
46	cut
47	color
48	perm
49	style
50	trim
51	cut
52	color
53	perm
54	style
55	trim
56	cut
57	color
58	perm
59	style
60	trim
61	cut
62	color
63	perm
64	style
65	trim
66	cut
67	color
68	perm
69	style
70	trim
71	cut
72	color
73	perm
74	style
75	trim
76	cut
77	color
78	perm
79	style
80	trim
81	cut
82	color
83	perm
84	style
85	trim
86	cut
87	color
88	perm
89	style
90	trim
91	cut
92	color
93	perm
94	style
95	trim
96	cut
97	color
98	perm
99	style
100	trim
101	cut
102	color
103	perm
104	style
105	trim
106	cut
107	color
108	perm
109	style
110	trim
111	cut
112	color
113	perm
114	style
115	trim
116	cut
117	color
118	perm
119	style
120	trim
121	cut
122	color
123	perm
124	style
125	trim
126	cut
127	color
128	perm
129	style
130	trim
131	cut
132	color
133	perm
134	style
135	trim
136	cut
137	color
138	perm
139	style
140	trim
141	cut
142	color
143	perm
144	style
145	trim
146	cut
147	color
148	perm
149	style
150	trim
151	cut
152	color
153	perm
154	style
155	trim
156	cut
157	color
158	perm
159	style
160	trim
161	cut
162	color
163	perm
164	style
165	trim
166	cut
167	color
168	perm
169	style
170	trim
171	cut
172	color
173	perm
174	style
175	trim
176	cut
177	color
178	perm
179	style
180	trim
181	cut
182	color
183	perm
184	style
185	trim
186	cut
187	color
188	perm
189	style
190	trim
191	cut
192	color
193	perm
194	style
195	trim
196	cut
197	color
198	perm
199	style
200	trim
201	cut
202	color
203	perm
204	style
205	trim
206	cut
207	color
208	perm
209	style
210	trim
211	cut
212	color
213	perm
214	style
215	trim
216	cut
217	color
218	perm
219	style
220	trim
221	cut
222	color
223	perm
224	style
225	trim
226	cut
227	color
228	perm
229	style
230	trim
231	cut
232	color
233	perm
234	style
235	trim
236	cut
237	color
238	perm
239	style
240	trim
241	cut
242	color
243	perm
244	style
245	trim
246	cut
247	color
248	perm
249	style
250	trim
251	cut
252	color
253	perm
254	style
255	trim
256	cut
257	color
258	perm
259	style
260	trim
261	cut
262	color
263	perm
264	style
265	trim
266	cut
267	color
268	perm
269	style
270	trim
271	cut
272	color
273	perm
274	style
275	trim
276	cut
277	color
278	perm
279	style
280	trim
281	cut
282	color
283	perm
284	style
285	trim
286	cut
287	color
288	perm
289	style
290	trim
291	cut
292	color
293	perm
294	style
295	trim
296	cut
297	color
298	perm
299	style
300	trim
301	cut
302	color
303	perm
304	style
305	trim
306	cut
307	color
308	perm
309	style
310	trim
311	cut
312	color
313	perm
314	style
315	trim
316	cut
317	color
318	perm
319	style
320	trim
321	cut
322	color
323	perm
324	style
325	trim
326	cut
327	color
328	perm
329	style
330	trim
331	cut
332	color
333	perm
334	style
335	trim
336	cut
337	color
338	perm
339	style
340	trim
341	cut
342	color
343	perm
344	style
345	trim
346	cut
347	color
348	perm
349	style
350	trim
351	cut
352	color
353	perm
354	style
355	trim
356	cut
357	color
358	perm
359	style
360	trim
361	cut
362	color
363	perm
364	style
365	trim
366	cut
367	color
368	perm
369	style
370	trim
371	cut
372	color
373	perm
374	style
375	trim
376	cut
377	color
378	perm
379	style
380	trim
381	cut
382	color
383	perm
384	style
385	trim
386	cut
387	color
388	perm
389	style
390	trim
391	cut
392	color
393	perm
394	style
395	trim
396	cut
397	color
398	perm
399	style
400	trim
401	cut
402	color
403	perm
404	style
405	trim
406	cut
407	color
408	perm
409	style
410	trim
411	cut
412	color
413	perm
414	style
415	trim
416	cut
417	color
418	perm
419	style
420	trim
421	cut
422	color
423	perm
424	style
425	trim
426	cut
427	color
428	perm
429	style
430	trim
431	cut
432	color
433	perm
434	style
435	trim
436	cut
437	color
438	perm
439	style
440	trim
441	cut
442	color
443	perm
444	style
445	trim
446	cut
447	color
448	perm
449	style
450	trim
451	cut
452	color
453	perm
454	style
455	trim
456	cut
457	color
458	perm
459	style
460	trim
461	cut
462	color
463	perm
464	style
465	trim
466	cut
467	color
468	perm
469	style
470	trim
471	cut
472	color
473	perm
474	style
475	trim
476	cut
477	color
478	perm
479	style
480	trim
481	cut
482	color
483	perm
484	style
485	trim
486	cut
487	color
488	perm
489	style
490	trim
491	cut
492	color
493	perm
494	style
495	trim
496	cut
497	color
498	perm
499	style
500	trim
501	cut
502	color
503	perm
504	style
505	trim
506	cut
507	color
508	perm
509	style
510	trim
511	cut
512	color
513	perm
514	style
515	trim
516	cut
517	color
518	perm
519	style
520	trim
521	cut
522	color
523	perm
524	style
525	trim
526	cut
527	color
528	perm
529	style
530	trim
531	cut
532	color
533	perm
534	style
535	trim
536	cut
537	color
538	perm
539	style
540	trim
541	cut
542	color
543	perm
544	style
545	trim
546	cut
547	color
548	perm
549	style
550	trim
551	cut
552	color
553	perm
554	style
555	trim
556	cut
557	color
558	perm
559	style
560	trim
561	cut
562	color
563	perm
564	style
565	trim
566	cut
567	color
568	perm
569	style
570	trim
571	cut
572	color
573	perm
574	style
575	trim
576	cut
577	color
578	perm
579	style
580	trim
581	cut
582	color
583	perm
584	style
585	trim
586	cut
587	color
588	perm
589	style
590	trim
591	cut
592	color
593	perm
594	style
595	trim
596	cut
597	color
598	perm
599	style
600	trim
601	cut
602	color
603	perm
604	style
605	trim
606	cut
607	color
608	perm
609	style
610	trim
611	cut
612	color
613	perm
614	style
615	trim
616	cut
617	color
618	perm
619	style
620	trim
621	cut
622	color
623	perm
624	style
625	trim
626	cut
627	color
628	perm
629	style
630	trim
631	cut
632	color
633	perm
634	style
635	trim
636	cut
637	color
638	perm
639	style
640	trim
641	cut
642	color
643	perm
644	style
645	trim
646	cut
647	color
648	perm
649	style
650	trim
651	cut
652	color
653	perm
654	style
655	trim
656	cut
657	color
658	perm
659	style
660	trim
661	cut
662	color
663	perm
664	style
665	trim
666	cut
667	color
668	perm
669	style
670	trim
671	cut
672	color
673	perm
674	style
675	trim
676	cut
677	color
678	perm
679	style
680	trim
681	cut
682	color
683	perm
684	style
685	trim
686	cut
687	color
688	perm
689	style
690	trim
691	cut
692	color
693	perm
694	style
695	trim
696	cut
697	color
698	perm
699	style
700	trim
701	cut
702	color
703	perm
704	style
705	trim
706	cut
707	color
708	perm
709	style
710	trim
711	cut
712	color
713	perm
714	style
715	trim
716	cut
717	color
718	perm
719	style
720	trim
721	cut
722	color
723	perm
724	style
725	trim
726	cut
727	color
728	perm
729	style
730	trim
731	cut
732	color
733	perm
734	style
735	trim
736	cut
737	color
738	perm
739	style
740	trim
741	cut
742	color
743	perm
744	style
745	trim
746	cut
747	color
748	perm
749	style
750	trim
751	cut
752	color
753	perm
754	style
755	trim
756	cut
757	color
758	perm
759	style
760	trim
761	cut
762	color
763	perm
764	style
765	trim
766	cut
767	color
768	perm
769	style
770	trim
771	cut
772	color
773	perm
774	style
775	trim
776	cut
777	color
778	perm
779	style
780	trim
781	cut
782	color
783	perm
784	style
785	trim
786	cut
787	color
788	perm
789	style
790	trim
791	cut
792	color
793	perm
794	style
795	trim
796	cut
797	color
798	perm
799	style
800	trim
801	cut
802	color
803	perm
804	style
805	trim
806	cut
807	color
808	perm
809	style
810	trim
811	cut
812	color
813	perm
814	style
815	trim
816	cut
817	color
818	perm
819	style
820	trim
821	cut
822	color
823	perm
824	style
825	trim
826	cut
827	color
828	perm
829	style
830	trim
831	cut
832	color
833	perm
834	style
835	trim
836	cut
837	color
838	perm
839	style
840	trim
841	cut
842	color
843	perm
844	style
845	trim
846	cut
847	color
848	perm
849	style
850	trim
851	cut
852	color
853	perm
854	style
855	trim
856	cut
857	color
858	perm
859	style
860	trim
861	cut
862	color
863	perm
864	style
865	trim
866	cut
867	color
868	perm
869	style
870	trim
871	cut
872	color
873	perm
874	style
875	trim
876	cut
877	color
878	perm
879	style
880	trim
881	cut
882	color
883	perm
884	style
885	trim
886	cut
887	color
888	perm
889	style
890	trim
891	cut
892	color
893	perm
894	style
895	trim
896	cut
897	color
898	perm
899	style
900	trim
901	cut
902	color
903	perm
904	style
905	trim
906	cut
907	color
908	perm
909	style
910	trim
911	cut
912	color
913	perm
914	style
915	trim
916	cut
917	color
918	perm
919	style
920	trim
921	cut
922	color
923	perm
924	style
925	trim
926	cut
927	color
928	perm
929	style
930	trim
931	cut
932	color
933	perm
934	style
935	trim
936	cut
937	color
938	perm
939	style
940	trim
941	cut
942	color
943	perm
944	style
945	trim
946	cut
947	color
948	perm
949	style
950	trim
951	cut
952	color
953	perm
954	style
955	trim
956	cut
957	color
958	perm
959	style
960	trim
961	cut
962	color
963	perm
964	style
965	trim
966	cut
967	color
968	perm
969	style
970	trim
971	cut
972	color
973	perm
974	style
975	trim
976	cut
977	color
978	perm
979	style
980	trim
981	cut
982	color
983	perm
984	style
985	trim
986	cut
987	color
988	perm
989	style
990	trim
991	cut
992	color
993	perm
994	style
995	trim
996	cut
997	color
998	perm
999	style
1000	trim
1001	cut
1002	color
1003	perm
1004	style
1005	trim
1006	cut
1007	color
1008	perm
1009	style
1010	trim
1011	cut
1012	color
1013	perm
1014	style
1015	trim
1016	cut
1017	color
1018	perm
1019	style
1020	trim
1021	cut
1022	color
1023	perm
1024	style
1025	trim
1026	cut
1027	color
1028	perm
1029	style
1030	trim
1031	cut
1032	color
1033	perm
1034	style
1035	trim
1036	cut
1037	color
1038	perm
1039	style
1040	trim
1041	cut
1042	color
1043	perm
1044	style
1045	trim
1046	cut
1047	color
1048	perm
1049	style
1050	trim
1051	cut
1052	color
1053	perm
1054	style
1055	trim
1056	cut
1057	color
1058	perm
1059	style
1060	trim
1061	cut
1062	color
1063	perm
1064	style
1065	trim
1066	cut
1067	color
1068	perm
1069	style
1070	trim
1071	cut
1072	color
1073	perm
1074	style
1075	trim
1076	cut
1077	color
1078	perm
1079	style
1080	trim
1081	cut
1082	color
1083	perm
1084	style
1085	trim
1086	cut
1087	color
1088	perm
1089	style
1090	trim
1091	cut
1092	color
1093	perm
1094	style
1095	trim
1096	cut
1097	color
1098	perm
1099	style
1100	trim
1101	cut
1102	color
1103	perm
1104	style
1105	trim
1106	cut
1107	color
1108	perm
1109	style
1110	trim
1111	cut
1112	color
1113	perm
1114	style
1115	trim
1116	cut
1117	color
1118	perm
1119	style
1120	trim
1121	cut
1122	color
1123	perm
1124	style
1125	trim
1126	cut
1127	color
1128	perm
1129	style
1130	trim
1131	cut
1132	color
1133	perm
1134	style
1135	trim
1136	cut
1137	color
1138	perm
1139	style
1140	trim
1141	cut
1142	color
1143	perm
1144	style
1145	trim
1146	cut
1147	color
1148	perm
1149	style
1150	trim
1151	cut
1152	color
1153	perm
1154	style
1155	trim
1156	cut
1157	color
1158	perm
1159	style
1160	trim
1161	cut
1162	color
1163	perm
1164	style
1165	trim
1166	cut
1167	color
1168	perm
1169	style
1170	trim
1171	cut
1172	color
1173	perm
1174	style
1175	trim
1176	cut
1177	color
1178	perm
1179	style
1180	trim
1181	cut
1182	color
1183	perm
1184	style
1185	trim
1186	cut
1187	color
1188	perm
1189	style
1190	trim
1191	cut
1192	color
1193	perm
1194	style
1195	trim
1196	cut
1197	color
1198	perm
1199	style
1200	trim
1201	cut
1202	color
1203	perm
1204	style
1205	trim
1206	cut
1207	color
1208	perm
1209	style
1210	trim
1211	cut
1212	color
1213	perm
1214	style
1215	trim
1216	cut
1217	color
1218	perm
1219	style
1220	trim
1221	cut
1222	color
1223	perm
1224	style
1225	trim
1226	cut
1227	color
1228	perm
1229	style
1230	trim
1231	cut
1232	color
1233	perm
1234	style
1235	trim
1236	cut
1237	color
1238	perm
1239	style
1240	trim
1241	cut
1242	color
1243	perm
1244	style
1245	trim
1246	cut
1247	color
1248	perm
1249	style
1250	trim
1251	cut
1252	color
1253	perm
1254	style
1255	trim
1256	cut
1257	color
1258	perm
1259	style
1260	trim
1261	cut
1262	color
1263	perm
1264	style
1265	trim
1266	cut
1267	color
1268	perm
1269	style
1270	trim
1271	cut
1272	color
1273	perm
1274	style
1275	trim
1276	cut
1277	color
1278	perm
1279	style
1280	trim
1281	cut
1282	color
1283	perm
1284	style
1285	trim
1286	cut
1287	color
1288	perm
1289	style
1290	trim
1291	cut
1292	color
1293	perm
1294	style
1295	trim
1296	cut
1297	color
1298	perm
1299	style
1300	trim
1301	cut
1302	color
1303	perm
1304	style
1305	trim
1306	cut
1307	color
1308	perm
1309	style
1310	trim
1311	cut
1312	color
1313	perm
1314	style
1315	trim
1316	cut
1317	color
1318	perm
1319	style
1320	trim
1321	cut
1322	color
1323	perm
1324	style
1325	trim
1326	cut
1327	color
1328	perm
1329	style
1330	trim
1331	cut
1332	color
1333	perm
1334	style
1335	trim
1336	cut
1337	color
1338	perm
1339	style
1340	trim
1341	cut
1342	color
1343	perm
1344	style
1345	trim
1346	cut
1347	color
1348	perm
1349	style
1350	trim
1351	cut
1352	color
1353	perm
1354	style
1355	trim
1356	cut
1357	color
1358	perm
1359	style
1360	trim
1361	cut
1362	color
1363	perm
1364	style
1365	trim
1366	cut
1367	color
1368	perm
1369	style
1370	trim
1371	cut
1372	color
1373	perm
1374	style
1375	trim
1376	cut
1377	color
1378	perm
1379	style
1380	trim
1381	cut
1382	color
1383	perm
1384	style
1385	trim
1386	cut
1387	color
1388	perm
1389	style
1390	trim
1391	cut
1392	color
1393	perm
1394	style
1395	trim
1396	cut
1397	color
1398	perm
1399	style
1400	trim
1401	cut
1402	color
1403	perm
1404	style
1405	trim
1406	cut
1407	color
1408	perm
1409	style
1410	trim
1411	cut
1412	color
1413	perm
1414	style
1415	trim
1416	cut
1417	color
1418	perm
1419	style
1420	trim
1421	cut
1422	color
1423	perm
1424	style
1425	trim
1426	cut
1427	color
1428	perm
1429	style
1430	trim
1431	cut
1432	color
1433	perm
1434	style
1435	trim
1436	cut
1437	color
1438	perm
1439	style
1440	trim
1441	cut
1442	color
1443	perm
1444	style
1445	trim
1446	cut
1447	color
1448	perm
1449	style
1450	trim
1451	cut
1452	color
1453	perm
1454	style
1455	trim
1456	cut
1457	color
1458	perm
1459	style
1460	trim
1461	cut
1462	color
1463	perm
1464	style
1465	trim
1466	cut
1467	color
1468	perm
1469	style
1470	trim
1471	cut
1472	color
1473	perm
1474	style
1475	trim
1476	cut
1477	color
1478	perm
1479	style
1480	trim
1481	cut
1482	color
1483	perm
1484	style
1485	trim
1486	cut
1487	color
1488	perm
1489	style
1490	trim
1491	cut
1492	color
1493	perm
1494	style
1495	trim
1496	cut
1497	color
1498	perm
1499	style
1500	trim
1501	cut
1502	color
1503	perm
1504	style
1505	trim
1506	cut
1507	color
1508	perm
1509	style
1510	trim
1511	cut
1512	color
1513	perm
1514	style
1515	trim
1516	cut
1517	color
1518	perm
1519	style
1520	trim
1521	cut
1522	color
1523	perm
1524	style
1525	trim
1526	cut
1527	color
1528	perm
1529	style
1530	trim
1531	cut
1532	color
1533	perm
1534	style
1535	trim
1536	cut
1537	color
1538	perm
1539	style
1540	trim
1541	cut
1542	color
1543	perm
1544	style
1545	trim
1546	cut
1547	color
1548	perm
1549	style
1550	trim
1551	cut
1552	color
1553	perm
1554	style
1555	trim
1556	cut
1557	color
1558	perm
1559	style
1560	trim
1561	cut
1562	color
1563	perm
1564	style
1565	trim
1566	cut
1567	color
1568	perm
1569	style
1570	trim
1571	cut
1572	color
1573	perm
1574	style
1575	trim
1576	cut
1577	color
1578	perm
1579	style
1580	trim
1581	cut
1582	color
1583	perm
1584	style
1585	trim
1586	cut
1587	color
1588	perm
1589	style
1590	trim
1591	cut
1592	color
1593	perm
1594	style
1595	trim
1596	cut
1597	color
1598	perm
1599	style
1600	trim
1601	cut
1602	color
1603	perm
1604	style
1605	trim
1606	cut
1607	color
1608	perm
1609	style
1610	trim
1611	cut
1612	color
1613	perm
1614	style
1615	trim
1616	cut
1617	color
1618	perm
1619	style
1620	trim
1621	cut
1622	color
1623	perm
1624	style
1625	trim
1626	cut
1627	color
1628	perm
1629	style
1630	trim
1631	cut
1632	color
1633	perm
1634	style
1635	trim
1636	cut
1637	color
1638	perm
1639	style
1640	trim
1641	cut
1642	color
1643	perm
1644	style
1645	trim
1646	cut
1647	color
1648	perm
1649	style
1650	trim
1651	cut
1652	color
1653	perm
1654	style
1655	trim
1656	cut
1657	color
1658	perm
1659	style
1660	trim
1661	cut
1662	color
1663	perm
1664	style
1665	trim
1666	cut
1667	color
1668	perm
1669	style
1670	trim
1671	cut
1672	color
1673	perm
1674	style
1675	trim
1676	cut
1677	color
1678	perm
1679	style
1680	trim
1681	cut
1682	color
1683	perm
1684	style
1685	trim
1686	cut
1687	color
1688	perm
1689	style
1690	trim
1691	cut
1692	color
1693	perm
1694	style
1695	trim
1696	cut
1697	color
1698	perm
1699	style
1700	trim
1701	cut
1702	color
1703	perm
1704	style
1705	trim
1706	cut
1707	color
1708	perm
1709	style
1710	trim
1711	cut
1712	color
1713	perm
1714	style
1715	trim
1716	cut
1717	color
1718	perm
1719	style
1720	trim
1721	cut
1722	color
1723	perm
1724	style
1725	trim
1726	cut
1727	color
1728	perm
1729	style
1730	trim
1731	cut
1732	color
1733	perm
1734	style
1735	trim
1736	cut
1737	color
1738	perm
1739	style
1740	trim
1741	cut
1742	color
1743	perm
1744	style
1745	trim
1746	cut
1747	color
1748	perm
1749	style
1750	trim
1751	cut
1752	color
1753	perm
1754	style
1755	trim
1756	cut
1757	color
1758	perm
1759	style
1760	trim
1761	cut
1762	color
1763	perm
1764	style
1765	trim
1766	cut
1767	color
1768	perm
1769	style
1770	trim
1771	cut
1772	color
1773	perm
1774	style
1775	trim
1776	cut
1777	color
1778	perm
1779	style
1780	trim
1781	cut
1782	color
1783	perm
1784	style
1785	trim
1786	cut
1787	color
1788	perm
1789	style
1790	trim
1791	cut
1792	color
1793	perm
1794	style
1795	trim
1796	cut
1797	color
1798	perm
1799	style
1800	trim
1801	cut
1802	color
1803	perm
1804	style
1805	trim
1806	cut
1807	color
1808	perm
1809	style
1810	trim
1811	cut
1812	color
1813	perm
1814	style
1815	trim
1816	cut
1817	color
1818	perm
1819	style
1820	trim
1821	cut
1822	color
1823	perm
1824	style
1825	trim
1826	cut
1827	color
1828	perm
1829	style
1830	trim
1831	cut
1832	color
1833	perm
1834	style
1835	trim
1836	cut
1837	color
1838	perm
1839	style
1840	trim
1841	cut
1842	color
1843	perm
1844	style
1845	trim
1846	cut
1847	color
1848	perm
1849	style
1850	trim
1851	cut
1852	color
1853	perm
1854	style
1855	trim
1856	cut
1857	color
1858	perm
1859	style
1860	trim
1861	cut
1862	color
1863	perm
1864	style
1865	trim
1866	cut
1867	color
1868	perm
1869	style
1870	trim
1871	cut
1872	color
1873	perm
1874	style
1875	trim
1876	cut
1877	color
1878	perm
1879	style
1880	trim
1881	cut
1882	color
1883	perm
1884	style
1885	trim
1886	cut
1887	color
1888	perm
1889	style
1890	trim
1891	cut
1892	color
1893	perm
1894	style
1895	trim
1896	cut
1897	color
1898	perm
1899	style
1900	trim
1901	cut
1902	color
1903	perm
1904	style
1905	trim
1906	cut
1907	color
1908	perm
1909	style
1910	trim
1911	cut
1912	color
1913	perm
1914	style
1915	trim
1916	cut
1917	color
1918	perm
1919	style
1920	trim
1921	cut
1922	color
1923	perm
1924	style
1925	trim
1926	cut
1927	color
1928	perm
1929	style
1930	trim
1931	cut
1932	color
1933	perm
1934	style
1935	trim
1936	cut
1937	color
1938	perm
1939	style
1940	trim
1941	cut
1942	color
1943	perm
1944	style
1945	trim
1946	cut
1947	color
1948	perm
1949	style
1950	trim
1951	cut
1952	color
1953	perm
1954	style
1955	trim
\.


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 469, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 373, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 1955, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--


