--- selection data part

	-- exercice B-1
	select P.matr_pers, NOM_pers, sexe_pers, resultat, NOM_LABO
	from personne P, test_pcr T , labo_med L
	where (P.matr_pers = T.matr_pers and L.code_labo = T.code_labo) 
	and data_prel = TO_DATE('2020-01-04','YYYY-MM-DD') 
	and VILLE_LABO = 'Nabeul';	
	
	-- exercice B-2	
	select NOM_pers, pren_pers
	from personne P, test_pcr T , test_presc_med Tm
	where (P.matr_pers = T.matr_pers ) 
	and T.code_test = Tm.code_test
	and nom_med = 'ahmed mili';
	
	-- exercice B-3
	select P.matr_pers, NOM_pers, pren_pers
	from personne P, test_pcr T, test_presc_med Tm
	where (P.matr_pers = T.matr_pers ) 
	and T.code_test = Tm.code_test
	and nom_med = 'ahmed mili'
	and P.matr_pers like 'ET%'
	and resultat = 'Negatif'
	and data_prel > TO_DATE('2021-01-01','YYYY-MM-DD') 
	ORDER BY data_prel DESC;
	
	-- exercice B-4
	select count(P.matr_pers), reg_pers
	from personne P, test_pcr T 
	WHERE (P.matr_pers=T.matr_pers)
	AND data_prel > to_date('2021-10-01','YYYY-MM-DD') 
	and data_prel < TO_DATE('2021-10-31','YYYY-MM-DD')
	AND resultat='Positif'  
	group by reg_pers;
	
	-- exercice B-5
	select count(P.matr_pers), VILLE_LABO
	FROM personne P , test_pcr T  ,labo_med L
	WHERE P.matr_pers=T.matr_pers
	and T.code_labo=L.code_labo
	AND resultat='Positif' 
	AND data_prel >= to_date('2021-12-01','YYYY-MM-DD') 
	and data_prel <= TO_DATE('2021-12-31','YYYY-MM-DD')
	and reg_pers='tunis' 
	and VILLE_PERS= VILLE_LABO
	group by VILLE_LABO;

	-- exercice B-6
	select P.matr_pers,nom_pers,pren_pers 
	from personne P , test_pcr T
	WHERE P.matr_pers=T.matr_pers
	and (SELECT COUNT(P.matr_pers)
	FROM personne P , test_pcr T  
	WHERE P.matr_pers=T.matr_pers)>1;

	-- exercice B-7
	-- select data_prel 
	-- from test_pcr 
	-- where matr_pers='TN05248369'
	-- and date_prel=(select max (date_prel) from test_pcr);
		
	-- exercice B-8
	select count(code_test), L.code_labo
	from test_pcr T, labo_med L
	WHERE t.code_labo=l.code_labo 
	and data_prel= to_date('2021-12-19','YYYY-MM-DD') 
	group by L.code_labo;

	-- exercice B-9
	select P.matr_pers,nom_pers,pren_pers 
	from personne P , test_pcr T,labo_med L
	WHERE P.matr_pers=T.matr_pers
	and T.code_labo=L.code_labo
	and (SELECT COUNT(P.matr_pers)
	FROM personne P , test_pcr T  
	WHERE P.matr_pers=T.matr_pers)>2
	and  sect_labo='Prive';

	-- exercice B-10	
	select p.matr_pers,nom_pers,pren_pers 
	from personne p , test_pcr t,labo_med l
	WHERE p.matr_pers=t.matr_pers
	and t.code_labo=l.code_labo
	AND sect_labo='Public';
	
	-- exercice B-11
	select p.matr_pers,nom_pers,pren_pers 
	from personne p , test_pcr t
	WHERE p.matr_pers=t.matr_pers
	and HEURE_PREL BETWEEN '11h00' and '15h00';


	-- exercice B-11 
	ALTER table personne
	ADD age_pers INTEGER;

	select  reg_pers
	from personne p,test_pcr t
	where  p.matr_pers=t.matr_pers
	and age_pers>59
	and (SELECT COUNT(code_test)
	FROM personne p )<51
	and data_prel = to_date('2021-01-07','YYYY-MM-DD');
	
	-- exercice B-13
	select P.matr_pers,nom_pers,pren_pers 
	from personne P, test_pcr T
	WHERE P.matr_pers = T.matr_pers
	and code_test NOT IN (select code_test from test_presc_med)
	and sexe_pers='F' ;
	
	-- exercice B-14
	select l.code_labo,nom_labo
	FROM  labo_med l , test_pcr t
	WHERE l.code_labo not in(SELECT code_labo FROM test_pcr)
	and  data_prel = to_date('2021-12-19','YYYY-MM-DD') 
	;
	-- exercice B-15
	select reg_pers, COUNT(p.matr_pers)
	FROM personne p,test_pcr t
	WHERE p.matr_pers=t.matr_pers
	and resultat='Positif'
	and data_prel=to_date('2021-12-19','YYYY-MM-DD')
	group by reg_pers, p.matr_pers;
   
	-- B-1
	ALTER table test_pcr
	ADD VULNERABLE varchar(3);

	ALTER TABLE test_pcr
	ADD CHECK (VULNERABLE in ('OUI','NON'));
	
	-- B-2
	select p.matr_pers,nom_pers,pren_pers 
	FROM personne p,test_pcr t
	WHERE p.matr_pers=t.matr_pers
	and VULNERABLE='OUI'
	and age_pers>59
	and resultat='Positif'
	AND data_prel > to_date('2021-01-01','YYYY-MM-DD') 
	and data_prel < TO_DATE('2021-01-17','YYYY-MM-DD');
	
	-- b-3
	select COUNT(salarie) , ville_pers
	FROM personne p,test_pcr t
	where data_prel > to_date('2021-01-01','YYYY-MM-DD') 
	and data_prel < TO_DATE('2021-12-13','YYYY-MM-DD')
	AND reg_pers='tunis' 
	group by (ville_pers);
	
	
	-- C-1
	
	select COUNT(p.matr_pers)
	from personne p, test_voyageur tv, test_pcr tp
	where p.matr_pers=tp.matr_pers 
	AND tp.code_test=tv.code_test
	and pays_dest='Allemagne' 
	AND resultat='Positif' 
	and DATE_arr=TO_DATE('2021-01-12','YYYY-MM-DD')
	and data_prel=TO_DATE('2021-01-12','YYYY-MM-DD');   

	-- c-2
	select  p.MATR_PERS, NOM_PERS, PREN_PERS, tv.code_test
	from personne p,test_voyageur tv,test_pcr tp
	where p.matr_pers=tp.matr_pers 
	AND tp.code_test=tv.code_test
	and pays_dest="Espagne"
	AND resultat='Negatif'
	and DATE_arr=TO_DATE('2021-02-02','YYYY-MM-DD')
	and data_prel > to_date('2021-01-17','YYYY-MM-DD') 
	and data_prel < TO_DATE('2021-01-20','YYYY-MM-DD')
	or NB_HEURES (DATE_PREL, HEURE_PREL, DATE_ARR, HEURE_ARR)>= 94 ; 

	
	
	
	