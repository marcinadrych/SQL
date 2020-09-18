CREATE TABLE konto 
  ( 
    id      INTEGER NOT NULL , 
    login   VARCHAR2 (50) NOT NULL , 
    haslo   VARCHAR2 (100) NOT NULL , 
    rola_id INTEGER NOT NULL 
  ) ;

ALTER TABLE konto ADD CONSTRAINT uzytkownik_PK PRIMARY KEY ( id ) ;

ALTER TABLE konto ADD CONSTRAINT uzytkownik__UN UNIQUE ( login ) ;

CREATE TABLE adresy ( 
    id_adresy     INTEGER NOT NULL, 
    miasto        VARCHAR2(30) NOT NULL, 
    miejscowosc   VARCHAR2(30) NOT NULL, 
    wojewodztwo   VARCHAR2(30) NOT NULL, 
    kod           VARCHAR2(6) CHECK (kod == 6), 
    ulica         VARCHAR2(30) NOT NULL, 
    nr_domu       NUMBER(60) NOT NULL, 
    nr_lokalu     NUMBER(60) DEFAULT 0 
);

ALTER TABLE adresy ADD CONSTRAINT adresy_pk PRIMARY KEY ( id_adresy );

CREATE TABLE adresy_klientow ( 
    klienci_id         INTEGER NOT NULL, 
    adresy_id_adresy   INTEGER NOT NULL 
);

ALTER TABLE adresy_klientow ADD CONSTRAINT adresy_klientow_pk PRIMARY KEY ( klienci_id );

CREATE TABLE adresy_pracownikow ( 
    pracownicy_id   INTEGER NOT NULL, 
    adresy_id       INTEGER NOT NULL 
);

ALTER TABLE adresy_pracownikow ADD CONSTRAINT adresy_pracownikow_pk PRIMARY KEY ( pracownicy_id );

CREATE TABLE artyk_internet ( 
    sklepy_internet_id   NUMBER NOT NULL, 
    rodzaj_id            INTEGER NOT NULL, 
    skl_internet_id      INTEGER NOT NULL 
);

ALTER TABLE artyk_internet ADD CONSTRAINT artyk_internet_pk PRIMARY KEY ( sklepy_internet_id );

CREATE TABLE biura ( 
    id_biura                 INTEGER NOT NULL, 
    numer_biura              NUMBER(100) NOT NULL, 
    nazwa                    VARCHAR2(30) NOT NULL, 
    ulica                    VARCHAR2(20) NOT NULL, 
    miejscowosc              VARCHAR2(30) NOT NULL, 
    kod                      VARCHAR2(6) CHECK (kod == 6), 
    hurtownie_id_hurtownie   INTEGER NOT NULL 
);

ALTER TABLE biura ADD CONSTRAINT biura_pk PRIMARY KEY ( id_biura );

CREATE TABLE dzialy ( 
    id_dzialy       INTEGER, 
    nazwa           VARCHAR2(30) NOT NULL, 
    numer_dzialu    VARCHAR2(100) UNIQUE, 
    opis            VARCHAR2(250) NOT NULL, 
    pracownicy_id   INTEGER NOT NULL 
);

CREATE TABLE faktury ( 
    id_faktury         INTEGER NOT NULL, 
    nr_faktury         VARCHAR2(45) UNIQUE, 
    data_sprzedazy     DATE, 
    wartosc_netto      VARCHAR2(45) NOT NULL, 
    wartosc_brutto     VARCHAR2(45) NOT NULL, 
    wartosc_vat        VARCHAR2(45) NOT NULL, 
    forma_platnosci    VARCHAR2(45) NOT NULL, 
    rodzaj_dokumentu   VARCHAR2(30) NOT NULL, 
    klienci_id         INTEGER NOT NULL 
);

ALTER TABLE faktury ADD CONSTRAINT faktury_pk PRIMARY KEY ( id_faktury );

CREATE TABLE galeria_zdjec ( 
    id_galeria_zdjec       INTEGER NOT NULL, 
    zdjecie_produktu       BLOB, 
    nazwa_zdj              VARCHAR2(46) NOT NULL, 
    opis                   VARCHAR2(100) NOT NULL, 
    id_produkty            INTEGER NOT NULL, 
    produkty_id_produkty   INTEGER NOT NULL, 
    skl_internet_id        INTEGER NOT NULL 
);

CREATE TABLE historia_stanowisk ( 
    id_historia_stanowisk   INTEGER, 
    numer                   NUMBER(50)NOT NULL, 
    od_kiedy                DATE, 
    stanowisko              VARCHAR2(25) NOT NULL, 
    pracownicy_id           INTEGER NOT NULL 
);

CREATE TABLE historia_zarobokow ( 
    id_historia_zarobkow   INTEGER, 
    zarobki                VARCHAR2(100) NOT NULL, 
    numer                  NUMBER(100) NOT NULL, 
    za_okres               VARCHAR2(50) NOT NULL, 
    pracownicy_id          INTEGER NOT NULL 
);

CREATE TABLE hurtownie ( 
    id_hurtownie   INTEGER NOT NULL, 
    nazwa          VARCHAR2(30) NOT NULL UNIQUE, 
    numer          VARCHAR2(30) NOT NULL, 
    adres          VARCHAR2(20) NOT NULL, 
    miejscowosc    VARCHAR2(40) NOT NULL, 
    ulica          VARCHAR2(30) NOT NULL 
);

ALTER TABLE hurtownie ADD CONSTRAINT hurtownie_pk PRIMARY KEY ( id_hurtownie );

CREATE TABLE kategorie ( 
    id_kategorie           INTEGER, 
    nazwa                  VARCHAR2(45) NOT NULL UNIQUE, 
    opis                   VARCHAR2(200) NOT NULL, 
    kategorie_id           NUMBER NOT NULL, 
    produkty_id_produkty   INTEGER NOT NULL 
);

ALTER TABLE kategorie ADD CONSTRAINT kategorie_pk PRIMARY KEY ( kategorie_id );

CREATE TABLE kategorie_prpdicentow ( 
    kategorie_kategorie_id     NUMBER NOT NULL, 
    producenci_id_producenci   INTEGER NOT NULL 
);

ALTER TABLE kategorie_prpdicentow ADD CONSTRAINT kategorie_prpdicentow_pk PRIMARY KEY ( kategorie_kategorie_id );

CREATE TABLE klienci ( 
    id                         INTEGER NOT NULL, 
    imie                       VARCHAR2(20) NOT NULL, 
    nazwisko                   VARCHAR2(30) NOT NULL, 
    tel                        VARCHAR2(9) DEFAULT , 
    ulica                      VARCHAR2(20) CHECK (nr_tel == 9), 
    kod                        VARCHAR2(6) CHECK (kod == 6), 
    miasto                     VARCHAR2(20) NOT NULL, 
    id_reklamacje              INTEGER NOT NULL, 
    reklamacje_id_reklamacje   INTEGER NOT NULL 
);

ALTER TABLE klienci ADD CONSTRAINT klienci_pk PRIMARY KEY ( id );

CREATE TABLE kont_prac ( 
    pracownicy_id   INTEGER NOT NULL, 
    kontakt         VARCHAR2(9) NOT NULL 
);

ALTER TABLE kont_prac ADD CONSTRAINT kont_prac_pk PRIMARY KEY ( pracownicy_id );

CREATE TABLE kontakty ( 
    id_kontakty   INTEGER NOT NULL, 
    nr_tel_1      VARCHAR2(9) CHECK (nr_tel_1 == 9), 
    nr_tel_2      VARCHAR2(9) CHECK (nr_tel_2 == 9), 
    fax           VARCHAR2(15) UNIQUE, 
    email         VARCHAR2(30) CHECK (LENGTH(e_mail)-LENGTH(REPLACE(e_mail,'@',''))>0),, 
    www           VARCHAR2(45) DEFAULT 0 
);

ALTER TABLE kontakty ADD CONSTRAINT kontakty_pk PRIMARY KEY ( id_kontakty );

CREATE TABLE kontakty_klientow ( 
    klienci_id   INTEGER NOT NULL, 
    kontakt      VARCHAR2(9) NOT NULL 
);

ALTER TABLE kontakty_klientow ADD CONSTRAINT kontakty_klientow_pk PRIMARY KEY ( klienci_id );

CREATE TABLE pensje ( 
    id_pensje              INTEGER NOT NULL, 
    wys_pensji_brutto      VARCHAR2(10000) NOT NULL, 
    wys_pensji_netto       VARCHAR2(10000) NOT NULL, 
    opis                   VARCHAR2(100) NOT NULL, 
    data_wyslania_pensji   DATE, 
    premia                 VARCHAR2(60) NOT NULL, 
    pracownicy_id          INTEGER NOT NULL 
);

ALTER TABLE pensje ADD CONSTRAINT pensje_pk PRIMARY KEY ( id_pensje );

CREATE TABLE pracownicy ( 
    id_pracownicy   INTEGER NOT NULL, 
    imie            VARCHAR2(20) NOT NULL, 
    nazwisko        VARCHAR2(30) NOT NULL, 
    nr_tel          VARCHAR2(9) CHECK (nr_tel == 9), 
    ulica           VARCHAR2(20) NOT NULL, 
    kod             VARCHAR2(6) CHECK (kod == 6), 
    miasto          VARCHAR2(30) NOT NULL 
);

ALTER TABLE pracownicy ADD CONSTRAINT pracownicy_pk PRIMARY KEY ( id_pracownicy );

CREATE TABLE producenci ( 
    id_producenci      INTEGER NOT NULL, 
    nazwa_producenta   VARCHAR2(46) NOT NULL, 
    nr_tel             NUMBER(9) CHECK (nr_tel == 9), 
    miejscowosc        VARCHAR2(45) NOT NULL, 
    kod                VARCHAR2(6) CHECK (kod == 6), 
    nip                VARCHAR2(10) NOT NULL UNIQUE 
);

ALTER TABLE producenci ADD CONSTRAINT producenci_pk PRIMARY KEY ( id_producenci );

CREATE TABLE produkty ( 
    id_produkty     INTEGER NOT NULL, 
    nazwa           VARCHAR2(30) NOT NULL UNIQUE, 
    opis            VARCHAR2(100) NOT NULL, 
    kod_kreskowy    VARCHAR2(30) NOT NULL, 
    data_waznosci   DATE, 
    rodzaj          VARCHAR2(46) NOT NULL 
);

ALTER TABLE produkty ADD CONSTRAINT produkty_pk PRIMARY KEY ( id_produkty );

CREATE TABLE reklamacje ( 
    id_reklamacje   INTEGER NOT NULL, 
    powod           VARCHAR2(250) NOT NULL, 
    imie            VARCHAR2(20) NOT NULL, 
    nazwisko        VARCHAR2(30) NOT NULL, 
    data            DATE, 
    ¿¹danie         VARCHAR2(150) NOT NULL 
);

ALTER TABLE reklamacje ADD CONSTRAINT reklamacje_pk PRIMARY KEY ( id_reklamacje );

CREATE TABLE rodzaj_artykulow ( 
    id_rodzaj_artykulu     INTEGER, 
    nazwa                  VARCHAR2(45) NOT NULL UNIQUE, 
    opis                   VARCHAR2(45) NOT NULL, 
    numer                  VARCHAR2(45) NOT NULL, 
    rodzaj_artykulow_id    INTEGER NOT NULL, 
    produkty_id_produkty   INTEGER NOT NULL 
);

ALTER TABLE rodzaj_artykulow ADD CONSTRAINT rodzaj_artykulow_pk PRIMARY KEY ( rodzaj_artykulow_id );

CREATE TABLE skl_internet ( 
    id_sklepy_internetowe    INTEGER NOT NULL, 
    nazwa                    VARCHAR2(45) NOT NULL UNIQUE, 
    opis                     VARCHAR2(100) NOT NULL, 
    hurtownie_id_hurtownie   INTEGER NOT NULL 
);

ALTER TABLE skl_internet ADD CONSTRAINT skl_internet_pk PRIMARY KEY ( id_sklepy_internetowe );

CREATE TABLE stanowiska ( 
    id_stanowiska   INTEGER, 
    nazwa           VARCHAR2(30) UNIQUE, 
    opis            VARCHAR2(150) NOT NULL, 
    pracownicy_id   INTEGER NOT NULL 
);

CREATE TABLE zamowienia ( 
    id_zamowienia              INTEGER NOT NULL, 
    data_zlozenia_zamowienia   DATE, 
    czy_przyeto_zamowienie     CHAR(1) NOT NULL, 
    data_przyjecia_zam         DATE, 
    zaplacono                  CHAR(1) NOT NULL, 
    data_wysylki               VARCHAR2(46) NOT NULL, 
    czy_zam_zrealizowano       CHAR(1) NOT NULL, 
    data_realzacji_zam         DATE, 
    klienci_id                 INTEGER NOT NULL 
);

ALTER TABLE zamowienia ADD CONSTRAINT zamowienia_pk PRIMARY KEY ( id_zamowienia );

CREATE OR REPLACE VIEW widok_ilu_pracownikow  AS 
SELECT stanowiska.nazwa, 
  COUNT(pracownicy.id) AS ilu 
FROM pracownicy 
INNER JOIN stanowiska 
ON stanowisko.id = pracownicy.stanowiska_id 
GROUP BY stanowiska.nazwa ;

CREATE OR REPLACE VIEW widok_zarobki  AS 
SELECT pensje.wys_pensji_brutto, 
  pensje.pensje, 
  pracownicy.imie 
  || ' ' 
  || pracownicy.nazwisko AS pracownicy, 
  konto.login, 
  stanowiska.nazwa AS stanowiska 
FROM pensje 
INNER JOIN pracownicy 
ON pracownicy.id = pensje.pracownicy_id 
INNER JOIN stanowiska 
ON stanowiska.id  = pensje.stanowiska_id 
AND stanowiska.id = pracownicy.oddzial_id 
INNER JOIN konto 
ON pracownicy.id = konto.id 
ORDER BY stanowiska, 
  pracownicy ;

ALTER TABLE adresy_pracownikow 
    ADD CONSTRAINT adresy_fk FOREIGN KEY ( adresy_id ) 
        REFERENCES adresy ( id_adresy );

ALTER TABLE adresy_klientow 
    ADD CONSTRAINT adresy_klientow_fk FOREIGN KEY ( klienci_id ) 
        REFERENCES klienci ( id );

ALTER TABLE adresy_klientow 
    ADD CONSTRAINT adresy_klientow_fkv2 FOREIGN KEY ( adresy_id_adresy ) 
        REFERENCES adresy ( id_adresy );

ALTER TABLE adresy_pracownikow 
    ADD CONSTRAINT adresy_prac_fk FOREIGN KEY ( pracownicy_id ) 
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE artyk_internet 
    ADD CONSTRAINT artyk_inter_rodz_fk FOREIGN KEY ( rodzaj_id ) 
        REFERENCES rodzaj_artykulow ( rodzaj_artykulow_id );

ALTER TABLE artyk_internet 
    ADD CONSTRAINT artyk_internet_fk FOREIGN KEY ( skl_internet_id ) 
        REFERENCES skl_internet ( id_sklepy_internetowe );

ALTER TABLE biura 
    ADD CONSTRAINT biura_hurtownie_fk FOREIGN KEY ( hurtownie_id_hurtownie ) 
        REFERENCES hurtownie ( id_hurtownie );

ALTER TABLE dzialy 
    ADD CONSTRAINT dzialy_pracownicy_fk FOREIGN KEY ( pracownicy_id ) 
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE faktury 
    ADD CONSTRAINT faktury_klienci_fk FOREIGN KEY ( klienci_id ) 
        REFERENCES klienci ( id );

ALTER TABLE galeria_zdjec 
    ADD CONSTRAINT galeria_zdjec_prod_fk FOREIGN KEY ( produkty_id_produkty ) 
        REFERENCES produkty ( id_produkty );

ALTER TABLE galeria_zdjec 
    ADD CONSTRAINT galeria_zdjec_sklepow_fk FOREIGN KEY ( skl_internet_id ) 
        REFERENCES skl_internet ( id_sklepy_internetowe );

ALTER TABLE historia_stanowisk 
    ADD CONSTRAINT historia_stanowisk_fk FOREIGN KEY ( pracownicy_id ) 
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE historia_zarobokow 
    ADD CONSTRAINT historia_zarob_fk FOREIGN KEY ( pracownicy_id ) 
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE kategorie_prpdicentow 
    ADD CONSTRAINT kat_producenci_fk FOREIGN KEY ( producenci_id_producenci ) 
        REFERENCES producenci ( id_producenci );

ALTER TABLE kategorie 
    ADD CONSTRAINT kategorie_produkty_fk FOREIGN KEY ( produkty_id_produkty ) 
        REFERENCES produkty ( id_produkty );

ALTER TABLE kategorie_prpdicentow 
    ADD CONSTRAINT kategorieproduc_fk FOREIGN KEY ( kategorie_kategorie_id ) 
        REFERENCES kategorie ( kategorie_id );

ALTER TABLE klienci 
    ADD CONSTRAINT klienci_reklamacje_fk FOREIGN KEY ( reklamacje_id_reklamacje ) 
        REFERENCES reklamacje ( id_reklamacje );

ALTER TABLE kont_prac 
    ADD CONSTRAINT kont_prac_pracownicy_fk FOREIGN KEY ( pracownicy_id ) 
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE kontakty_klientow 
    ADD CONSTRAINT kontakty_klientowi_fk FOREIGN KEY ( klienci_id ) 
        REFERENCES klienci ( id );

ALTER TABLE pensje 
    ADD CONSTRAINT pensje_pracownicy_fk FOREIGN KEY ( pracownicy_id ) 
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE rodzaj_artykulow 
    ADD CONSTRAINT rodzaj_artyk_prod_fk FOREIGN KEY ( produkty_id_produkty ) 
        REFERENCES produkty ( id_produkty );

ALTER TABLE skl_internet 
    ADD CONSTRAINT sklepy_internetowe_fk FOREIGN KEY ( hurtownie_id_hurtownie ) 
        REFERENCES hurtownie ( id_hurtownie );

ALTER TABLE stanowiska 
    ADD CONSTRAINT stanowiska_pracownicy_fk FOREIGN KEY ( pracownicy_id ) 
        REFERENCES pracownicy ( id_pracownicy );

ALTER TABLE zamowienia 
    ADD CONSTRAINT zamowienia_klienci_fk FOREIGN KEY ( klienci_id ) 
        REFERENCES klienci ( id );

CREATE SEQUENCE kategorie_kategorie_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER kategorie_kategorie_id_trg BEFORE 
    INSERT ON kategorie 
    FOR EACH ROW 
    WHEN ( new.kategorie_id IS NULL ) 
BEGIN 
    :new.kategorie_id := kategorie_kategorie_id_seq.nextval; 
END; 
/

CREATE SEQUENCE rodzaj_artykulow_rodzaj_artyku START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER rodzaj_artykulow_rodzaj_artyku BEFORE 
    INSERT ON rodzaj_artykulow 
    FOR EACH ROW 
    WHEN ( new.rodzaj_artykulow_id IS NULL ) 
BEGIN 
    :new.rodzaj_artykulow_id := rodzaj_artykulow_rodzaj_artyku.nextval; 
END; 
/

INSERT INTO konto VALUES(1,'admin','admin',1);

INSERT INTO konto VALUES(2,'user','user',2);

INSERT INTO konto VALUES(3,'mieciu','mieciu',2);

INSERT INTO konto VALUES(4,'zenia','zenia',2);