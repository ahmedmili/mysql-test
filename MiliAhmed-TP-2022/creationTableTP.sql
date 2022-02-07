-- creation table labo
create table LABO_MED (
		CODE_LABO varchar(6) ,
		NOM_LABO varchar(30),
		SECT_LABO varchar(10),
		VILLE_LABO varchar(30), 
		TEL_LABO integer,
		PRIMARY KEY (CODE_LABO),
		CHECK (CODE_LABO LIKE 'LB%'),
		CHECK (SECT_LABO IN('Public', 'Prive'))	
  );

		
		
create table PERSONNE (
		matr_pers varchar(10) ,
		NOM_pers varchar(20),
		pren_pers varchar(20),
		VILLE_pers varchar(30), 
		reg_pers varchar(20),
		sexe_pers varchar(1),
		salarie varchar(3),
		TEL_pers integer,
		PRIMARY KEY (matr_pers),
		CHECK (matr_pers LIKE 'TN%' OR matr_pers LIKE 'ET%'),
		CHECK (sexe_pers IN ('H', 'F')),
		CHECK (salarie IN ('OUI', 'NON'))
);
	
CREATE TABLE test_pcr (
		code_test varchar(10),
		data_prel date,
		heure_prel varchar(5),
		resultat varchar(8),
		code_labo varchar(6),
		matr_pers varchar(10),
		CHECK (code_test like 'TS%'),
		PRIMARY KEY(code_test),
		CHECK (heure_prel like '%h%'),
		CHECK(heure_prel BETWEEN '00h00' AND '23h59'),
		CHECK(resultat in ('Positif','Negatif')),
		FOREIGN KEY (code_labo) REFERENCES labo_med(code_labo),
		FOREIGN KEY (matr_pers) REFERENCES personne(matr_pers)
	);
	
CREATE table test_presc_med(
    code_test varchar(10),
    nom_med varchar(30),
    avis varchar(50),
    FOREIGN key (code_test) REFERENCES test_pcr(code_test),
    PRIMARY key (code_test)
    );

	
CREATE TABLE test_voyageur (
    code_test varchar(10),
    date_arr date,
    heure_arr varchar(5),
    ville_dest varchar(30),
    pays_dest varchar(30),
	PRIMARY key (code_test),
	FOREIGN KEY (code_test) REFERENCES test_pcr(code_test),
    CHECK(heure_arr BETWEEN '00h00' AND '23h59')
	);



	

-- drop table test_voyageur ;
-- drop table test_presc_med ;
-- drop table test_pcr ;
-- drop table PERSONNE ;

	