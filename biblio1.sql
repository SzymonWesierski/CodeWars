CREATE TABLE czytelnik
(
	nr_karty       char(6)       not null, 
  	imie		   varchar(32)   not null,
  	nazwisko       VARCHAR(32)   not null,
  	CONSTRAINT czytelnik_pk PRIMARY KEY(nr_karty)
);
CREATE TABLE ksiazka
(
    nr_inw             char(6)       not null,
    tytul              varchar(32)   not null,
    imie_autor         varchar(32)   not null,
    nazwisko_autor	   varchar(32)   not null,
    wydawnictwo	 	varchar(32)   not null,
    cena               INTEGER  	 not null,
    rok		       INTEGER       not null,
    data_wypozyczenia  INTEGER       not null,
  	nr_czytelnika      char(6)       NOT null,
    CONSTRAINT ksiazka_pk PRIMARY KEY(nr_inw),
  	CONSTRAINT czytelnik_fk FOREIGN KEY(nr_czytelnika)
  				REFERENCES czytelnik(nr_karty)
);


