Insert into biura values (1,'1','Biuro1','Beniowskiego35','Pruszcz Gdanski','83-200');

Insert into biura values (2,'2','Biuro2','Beniowskiego21','Pruszcz Gdanski','83-200');

Insert into biura values (3,'3','Biuro3','Kasprowicza5A','Starogard Gdanski','83-240');
Insert into biura values (4,'4','Biuro4','Sloneczna','Pruszcz Gdanski','83-200');

Insert into biura values (5,'5','Biuro5','Kowalskiego','Warszawa','83-112');

Insert into biura values (6,'6','Biuro6','Osiadla','Krakow','83-220');

Insert into hurtownie values (1,'BOBO','1','Beniowskiego12','Pruszcz Gdanski','83-200');

Insert into hurtownie values (2,'WARIAT','2','Kowalskiego21','Pruszcz Gdanski','83-200');

Insert into hurtownie values (3,'JOJO','3','Kasprowicza28','Starogard Gdanski','83-240');

Insert into hurtownie values (4,'ZIOMEL','4','Jasna','Pruszcz Gdanski','83-200');

Insert into hurtownie values (5,'POMPEX','5','Ciemna','Warszawa','83-112');

Insert into hurtownie values (6,'ROMA','6','Osiadla','Krakow','83-220');

Insert into stanowiska values (1,'Dyrektor magazynu','Zarzadza ludzmi z magazynu');
Insert into stanowiska values (2,'Dyrektor','Zarzadza ludzmi calej hurtowni');
Insert into stanowiska values (3,'Sprzataczka','Sprzata');
Insert into stanowiska values (4,'Magazynier','Magazynuje produkty');
Insert into stanowiska values (5,'Pomocnik magazyniera','Pomaga magazynierowi');
Insert into stanowiska values (6,'Operator wozka widlowego','Jezdzi wozkiem widlowym bo ma uprawnienia');

Insert into historia_stanowisk values (1,'B101','12-06-2018','Dyrektor');

Insert into historia_stanowisk values (2,'B121','12-06-2017','Sprzataczka');

Insert into historia_stanowisk values (3,'B155','12-02-2018','Operator wozka widlowego');


Insert into skl_internet values (1,'TUTANIEJ','Sklep hurtowni spozywczej TUTANIEJ');

Insert into skl_internet values (2,'HURTIX','Sklep hurtowni spozywczej HURTIX');

Insert into skl_internet values (3,'GRUSZKA','Sklep hurtowni spozywczej GRUSZKA');

Insert into skl_internet values (4,'SPOZYWCZAK','Sklep hurtowni spozywczej SPOZYWCZAK');

Insert into skl_internet values (5,'TRUSKAWECZKA','Sklep hurtowni spozywczej TRUSKAWECZKA');

Insert into skl_internet values (6,'CHLEBUS','Sklep hurtowni spozywczej CHLEBUS');


Insert into rodzaj_artykulow values (1,'napoje','produkty pitne','31');

Insert into rodzaj_artykulow values (2,'slodycze','produkty slodkie, czekolada itp.','32');

Insert into rodzaj_artykulow values (3,'pelno ziarniste','produkty pelnoziarniste takie jak bulki, chleb.','33');


Insert into historia_zarobkow values (1,'2200','92','od 12-12-2018');
Insert into historia_zarobkow values (1,'2220','91','od 12-12-2018');
Insert into historia_zarobkow values (1,'3000','92','od 12-12-2018');

Insert into historia_zarobkow values (1,'2200','1700','staraj sie dalej','01-01-2019');
Insert into historia_zarobkow values (1,'2500','1900','staraj sie dalej','01-01-2019');
Insert into historia_zarobkow values (1,'2200','1700','staraj sie dalej','01-01-2019');
Insert into historia_zarobkow values (1,'3000','2600','staraj sie dalej','01-01-2019');
Insert into historia_zarobkow values (1,'3000','2600','staraj sie dalej','01-01-2019');
Insert into historia_zarobkow values (1,'2200','1700','staraj sie dalej','01-01-2019');

Insert into pracownicy values (default,'Marek','Piatek','823271568','Prusa','83-240','Lubichowo');

Insert into pracownicy values (default,'Marek','Pepka','758945687','Sloneczna','83-240','Lubichowo');

Insert into pracownicy values (default,'Wieslaw','Kowalski','425613256','Beniowskiego','83-200','Pruszcz Gdanski');

Insert into pracownicy values (default,'Marcin','Piatek','963271568','Cicha','83-220','Krakow');

Insert into pracownicy values (default,'Kasia','Szostak','456271567','Glucha','83-220','Krakow');

Insert into pracownicy values (default,'Piotr','Piatek','158271561','Jasna','83-220','Krakow');


Insert into dzialy values (1,'Czyszczenia','1','zajmowanie sie czyszczeniem produktow');
Insert into dzialy values (2,'Sprzatania','2','zajmowanie sie sprzataniem hurtowni');
Insert into dzialy values (3,'Pakowania','3','zajmowanie sie pakowaniem produktow');

Insert into galeria_zdjec values (1,BLOOB,'zdj1','zdjecie przedstawia czekolade');
Insert into galeria_zdjec values (2,BLOOB,'zdj2','zdjecie przedstawia chleb');
Insert into galeria_zdjec values (3,BLOOB,'zdj3','zdjecie przedstawia napoj');

Insert into produkty values (1,'CHLEB','Pelnoziarnisty chleb','552231','01-01-2019','pelnoziarnisty');
Insert into produkty values (2,'CHLEB','Ciemny chleb','552331','01-03-2019','razowy');
Insert into produkty values (3,'MARS','Baton o smaku mlecznej czekolady','124262','22-03-2019','BATON');
Insert into produkty values (4,'SNICKERS','Baton o smaku mlecznej czekolady z orzechami','344262','22-03-2019','BATON');
Insert into produkty values (5,'NESTEA','Napoj o smaku herbaty','116262','04-04-2019','NAPOJ');
Insert into produkty values (6,'ICETEA','Napoj o smaku herbaty','189262','02-15-2019','NAPOJ');

Insert into kontakty values (1,'789456123','789654321','585885798','wariat@wp.pl','wariat.pl');
Insert into kontakty values (2,'789786123','779654324','585885321','pompa@wp.pl','pompa.pl');
Insert into kontakty values (3,'747646123','889659321','585885124','kora@wp.pl','kora.pl');
Insert into kontakty values (4,'123746123','559651327','585885421','wat@wp.pl','wat.pl');
Insert into kontakty values (5,'989116123','449658324','585885568','roma@wp.pl','roma.pl');
Insert into kontakty values (6,'789226123','229654323','585885747','moma@wp.pl','moma.pl');

Insert into producenci values (1,'PEPSI','789654321','Lubichowo','83-240','5921814574');
Insert into producenci values (2,'COLA','74854321','Starogard Gdanski','83-200','5921817447');
Insert into producenci values (3,'SOBIESKI','123456789','Starogard Gdanski','83-20','5921814554');
Insert into producenci values (4,'TWIX','987654321','Lubichowo','83-240','59218141123');
Insert into producenci values (5,'HUBABUBA','741852963','Pruszcz Gdanski','83-220','5921817896');
Insert into producenci values (6,'ORBIT','963456852','Pruszcz Gdanski','83-220','5921814511');

Insert into kategorie values (1,'Artykuly pitne','Zawiera artykuly pitne');
Insert into kategorie values (2,'Artykuly miesne','Zawiera artykuly miesne');
Insert into kategorie values (3,'Artykuly tytoniowe','Zawiera artykuly tytoniowe');

Insert into adresy values (1,'Starogard Gdanski','Starogard Gdanski','Pomorskie','83-200','Sloneczna','15','1');
Insert into adresy values (2,'Starogard Gdanski','Starogard Gdanski','Pomorskie','83-200','Cicha','21','2');
Insert into adresy values (3,'Starogard Gdanski','Starogard Gdanski','Pomorskie','83-200','Glucha','11','1A');
Insert into adresy values (4,'Lubichowo','Lubichowo','Pomorskie','83-240','Sloneczna','15','1');
Insert into adresy values (4,'Lubichowo','Lubichowo','Pomorskie','83-240','Mickiewicza','1','2');
Insert into adresy values (4,'Lubichowo','Lubichowo','Pomorskie','83-240','Prusa','12','1');

Insert into pracownicy values (1,'Marek','Kowalski','823271564','Prusa','83-240','Lubichowo');

Insert into pracownicy values (2,'Marcin','Adrych','787271565','Mickiewicza','83-220','Krakow');

Insert into pracownicy values (3,'Filip','Breja','654271561','Wojska Polskiego','83-220','Krakow');

Insert into pracownicy values (4,'Rafal','Kowal','989271564','Cicha','83-240','Starogard Gdanski');

Insert into pracownicy values (5,'Ala','Cicha','557271563','Ciemna','83-220','Starogard Gdanski');

Insert into pracownicy values (6,'Michal','Gebe','555271569','Prusa','83-240','Lubichowo');


Insert into pracownicy values (1,'10','22-02-2019','505','600','23','przelew internetowy','faktura elektroniczna');
Insert into pracownicy values (2,'11','15-03-2019','1200','1600','23','przelew internetowy','faktura elektroniczna');
Insert into pracownicy values (3,'12','25-04-2019','1200','1600','23','przelew internetowy','faktura elektroniczna');
Insert into pracownicy values (4,'13','01-05-2019','1800','2400','23','przelew tradycyjny','faktura elektroniczna');
Insert into pracownicy values (5,'14','22-06-2019','1900','2500','23','przelew internetowy','faktura elektroniczna');
Insert into pracownicy values (6,'15','21-07-2019,''600','760','23','gotowka','faktura elektroniczna');


Insert into pracownicy values (1,'Produkt uszkodzony','Marcin','Adrych','01-01-2019','zwrot pieniedzy');
Insert into pracownicy values (2,'Produkt stary','Marcin','Kowalski','05-02-2019','Wymiana');
Insert into pracownicy values (3,'Produkt ma dziwny smak','Michal','Cichy','01-04-2019','zwrot pieniedzy');
Insert into pracownicy values (4,'Nie ten zamawialam','Kasia','Kowalska','22-01-2019','wymiana na inny');
Insert into pracownicy values (5,'Produkt uszkodzony','Piotr','Nowak','03-03-2019','zwrot pieniedzy');
Insert into pracownicy values (6,'Produkt ma dziwny zapach','Filip','Kot','26-04-2019','zwrot pieniedzy');















