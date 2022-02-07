-- insertion des donner 
	-- insertion labo data
	INSERT into LABO_MED VALUES ( 'LB0001','yensef labo','Public','Bizerte','95791673');
	insert into LABO_MED VALUES ( 'LB0002','wassimos labo','Prive','kasr halal','27505301');
	insert into LABO_MED VALUES ( 'LB0003','Ahmed labo','Public','jammel','53406288');
	insert into LABO_MED VALUES ( 'LB0004','mhammed labo','Prive','tunis','53604521');
	insert into LABO_MED VALUES ( 'LB0005','saifoun labo','Public','jammel','55703882');
	INSERT into LABO_MED VALUES ( 'LB0006','yensef labo','Public','Bizerte','95791673');
	insert into LABO_MED VALUES ( 'LB0007','wassimos labo','Prive','kasr halal','27505301');
	insert into LABO_MED VALUES ( 'LB0009','Ahmed labo','Public','jammel','53406288');
	insert into LABO_MED VALUES ( 'LB0010','mhammed labo','Prive','tunis','53604521');
	insert into LABO_MED VALUES ( 'LB0011','saifoun labo','Public','jammel','55703882');
	
	INSERT into LABO_MED VALUES ( 'LB0012','rami labo','Public','nabeul','2156478');
	insert into LABO_MED VALUES ( 'LB0013','shady labo','Prive','jamel','2145677');
	insert into LABO_MED VALUES ( 'LB0014','hasan labo','Public','bizerte','5461288');
	insert into LABO_MED VALUES ( 'LB0015','ramroum labo','Prive','klibia','53604881');
	insert into LABO_MED VALUES ( 'LB0016','ilyes labo','Public','tunis','95703882');
	INSERT into LABO_MED VALUES ( 'LB0017','khalil labo','Public','mestir','95791600');
	insert into LABO_MED VALUES ( 'LB0018','mehdy labo','Prive','jandouba','27500301');
	insert into LABO_MED VALUES ( 'LB0019','montasar labo','Public','jammel','53401118');
	insert into LABO_MED VALUES ( 'LB0020','badis labo','Prive','tunis','53004501');
	insert into LABO_MED VALUES ( 'LB0021','sara labo','Public','nabeul','5570002');
	
	INSERT into LABO_MED VALUES ( 'LB0022','rami labo','Public','nabeul','2256478');
	insert into LABO_MED VALUES ( 'LB0023','shady labo','Prive','tunis','2345677');
	insert into LABO_MED VALUES ( 'LB0024','hasan labo','Public','jammel','5451288');
	insert into LABO_MED VALUES ( 'LB0025','ramroum labo','Prive','jandouba','53404881');
	insert into LABO_MED VALUES ( 'LB0026','ilyes labo','Public','mestir','95722882');
	INSERT into LABO_MED VALUES ( 'LB0027','khalil labo','Public','tunis','96591600');
	insert into LABO_MED VALUES ( 'LB0028','mehdy labo','Prive','jandouba','276600301');
	insert into LABO_MED VALUES ( 'LB0029','montasar labo','Public','jammel','58401118');
	insert into LABO_MED VALUES ( 'LB0030','badis labo','Prive','klibia','53004581');
	insert into LABO_MED VALUES ( 'LB0031','sara labo','Public','jandouba','5570082');
	INSERT into LABO_MED VALUES ( 'LB0032','xxx labo','Public','Nabeul','93791673');

	-- insertion pers data 
	INSERT into PERSONNE VALUES('ET0001','ben said','youssef','bizerte','tunis','H','OUI','95791673');
	INSERT into PERSONNE VALUES('ET0002','mili','ahmed','jammel','tunis','H','OUI','95701673');
	INSERT into PERSONNE VALUES('ET0003','lafandina','wassim','jammel','tunis','H','NON','95111673');
	INSERT into PERSONNE VALUES('ET0004','ghoul','rami','bizerte','tunis','H','OUI','95321673');
	INSERT into PERSONNE VALUES('ET0005','ben salem','khawla','tatouin','tunis','F','OUI','951341673');
	INSERT into PERSONNE VALUES('ET0006','ben said','ahmed','touzeur','tunis','H','OUI','21456883');
	INSERT into PERSONNE VALUES('ET0007','mili','hamida','kebeli','tunis','F','OUI','95000001');
	INSERT into PERSONNE VALUES('ET0008','dado','mohammed','jerba','tunis','H','OUI','21791673');
	INSERT into PERSONNE VALUES('ET0009','ben slimen','jamila','mednine','tunis','F','OUI','55791673');
	INSERT into PERSONNE VALUES('ET0010','nasr','lafandi','hammamet','tunis','H','OUI','75791673');
	INSERT into PERSONNE VALUES('ET0011','nasr','khawla','nabeul','tunis','F','OUI','73491673');
	
	-- insert  TEST_PCR data 
	insert into test_pcr VALUES('TS00000001',TO_DATE('2021-12-19','YYYY-MM-DD'),'22h02','Positif','LB0001','ET0001');
	insert into test_pcr VALUES('TS00000002',TO_DATE('2021-12-29','YYYY-MM-DD'),'12h45','Positif','LB0002','ET0002');
	insert into test_pcr VALUES('TS00000003',TO_DATE('2021-12-15','YYYY-MM-DD'),'05h50','Negatif','LB0003','ET0003');
	insert into test_pcr VALUES('TS00000004',TO_DATE('2021-12-30','YYYY-MM-DD'),'13h59','Positif','LB0004','ET0004');
	insert into test_pcr VALUES('TS00000005',TO_DATE('2021-10-15','YYYY-MM-DD'),'23h59','Positif','LB0005','ET0005');
	insert into test_pcr VALUES('TS00000006',TO_DATE('2021-11-22','YYYY-MM-DD'),'11h02','Negatif','LB0006','ET0006');
	insert into test_pcr VALUES('TS00000007',TO_DATE('2021-10-18','YYYY-MM-DD'),'15h07','Negatif','LB0007','ET0007');
	insert into test_pcr VALUES('TS00000008',TO_DATE('2021-10-01','YYYY-MM-DD'),'18h22','Positif','LB0010','ET0008');
	insert into test_pcr VALUES('TS00000009',TO_DATE('2021-11-09','YYYY-MM-DD'),'08h52','Negatif','LB0009','ET0009');
	insert into test_pcr VALUES('TS0000010',TO_DATE('2020-01-04','YYYY-MM-DD'),'08h52','Negatif','LB0032','ET0010');
	insert into test_pcr VALUES('TS0000011',TO_DATE('2020-01-04','YYYY-MM-DD'),'09h52','Negatif','LB0002','ET0011');
	
	-- insert test meds DATABASE
	INSERT INTO test_presc_med VALUES ('TS00000001','ahmed mili', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000002','wassim nasr', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000003','youssef ben said', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000004','mouhammed harizi', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000005','hani taher', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000006','ahmed mili', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000007','ahmed mili', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000008','wassim nasr', 'faible jcdqgckjb cnch');
	INSERT INTO test_presc_med VALUES ('TS00000009','mouhammed harizi', 'faible jcdqgckjb cnch');