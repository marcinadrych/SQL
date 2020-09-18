CREATE TRIGGER usun AFTER DELETE ON pracownik
FOR EACH ROW
BEGIN
    DELETE FROM uprawnienia WHERE userID = OLD.userID;
END

-- trigger usunie za ka¿dym razem uprawnienia pracownika zaraz po tym jak dany pracownik zostanie usuniêty. --

CREATE PROCEDURE p_pracownicy
@nazwisko varchar(40)='Piatek'
AS
SELECT imie, nazwisko
FROM Osoby
WHERE nazwisko=@nazwisko
GO 

--szukanie nazwiska pracownika 'Piatek'

CREATE PROCEDURE pobierz_adresy
AS
SELECT * FROM adresy
GO

--pobiera wszystkie adresy

CREATE PROCEDURE dodaj_dane
 
@imie VARCHAR2(20) = NULL,
@nazwisko VARCHAR2(30) = NULL,
@nr_tel VARCHAR2(9) = NULL,
@ulica VARCHAR2(20) = NULL,
@kod VARCHAR2(6) = NULL,
@miasto VARCHAR2(30) = NULL
 
AS
 
DECLARE @blad AS NVARCHAR(500);
 
IF @imie IS NULL OR @nazwisko IS NULL OR @nr_tel IS NULL OR 
@ulica IS NULL OR @kod IS NULL OR @miasto IS NULL
BEGIN
     SET @blad = 'B³êdne dane!';
     RAISERROR(@blad, 16,1);
     RETURN;
END
 
INSERT INTO pracownicy(imie, nazwisko, nr_tel, ulica, kod, miasto)
VALUES (@imie, @nazwisko, @nr_tel, @ulica, @kod, @miasto);
 
GO
