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