		/* CREATE TABLE PROCEDURE */
CREATE procedure CREATE_DATABASE_NEWS
AS
CREATE TABLE tbl_News (
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Title NVARCHAR(100),
	Detail NVARCHAR(1000),
	ImageUrls NVARCHAR(1000),
	Category NVARCHAR(50)
)
GO
GO
CREATE procedure CREATE_DATABASE_DICTIONARY
AS
CREATE TABLE tbl_Dictionary (
    id int identity(1,1) not null,
    en NVARCHAR(25),
	tr NVARCHAR(25),
)
GO
GO
		/* INSERT TABLE PROCEDURE */
CREATE procedure INSERT_DATABASE_NEWS
AS
INSERT INTO tbl_News(Name,Title,Detail,ImageUrls,Category)
VALUES
      ('News1','en-News1-Title','en-News1-Detail','en-News1-ImgUrl1, en-News1-ImgUrl2,en-News1-ImgUrln','Education')
    , ('News2','en-News2-Title','en-News1-Detail','en-News1-ImgUrl1, en-News1-ImgUrl2,en-News1-ImgUrln','Economy')
    , ('News3','en-News3-Title','en-News1-Detail','en-News1-ImgUrl1, en-News1-ImgUrl2,en-News1-ImgUrln','Sport')
    , ('News4','en-News4-Title','en-News1-Detail','en-News1-ImgUrl1, en-News1-ImgUrl2,en-News1-ImgUrln','Technology')
    , ('News5','en-News5-Title','en-News1-Detail','en-News1-ImgUrl1, en-News1-ImgUrl2,en-News1-ImgUrln','Science')
    , ('News6','tr-News1-Baslik','tr-News1-Detay','en-News1-ImgUrl1, tr-News1-ImgUrl2,tr-News1-ImgUrln','Egitim')
    , ('News7','tr-News2-Baslik','tr-News1-Detay','en-News1-ImgUrl1, tr-News1-ImgUrl2,tr-News1-ImgUrln','Ekonomi')
    , ('News8','tr-News3-Baslik','tr-News1-Detay','en-News1-ImgUrl1, tr-News1-ImgUrl2,tr-News1-ImgUrln','Tarih')
    , ('News9','tr-News4-Baslik','tr-News1-Detay','en-News1-ImgUrl1, tr-News1-ImgUrl2,tr-News1-ImgUrln','Teknoloji')
GO
GO
CREATE procedure INSERT_DATABASE_DICTIONARY
AS
INSERT INTO tbl_Dictionary(tr,en)
VALUES
      ('Giriþ Yap','Login')
    , ('Kategori','Category')
    , ('Ekonomi','Economy')
    , ('Spor','Sport')
    , ('Teknoloji','Technology')
    , ('Tarih','History')
    , ('Eðitim','Education')
    , ('Menü','Menu')
    , ('Haberler','News')
GO
GO

		/* SELECT TABLE PROCEDURE */
CREATE procedure SELECT_DATA @Language nvarchar(100)
AS
IF @Language = 'tr'
	SELECT * FROM tbl_News WHERE Title LIKE 'tr%';
ELSE IF @Language = 'en'
	SELECT * FROM tbl_News WHERE Title LIKE 'en%'

GO

CREATE procedure SELECT_DICTIONARY @Language nvarchar(100)
AS
IF @Language = 'tr'
	SELECT tr FROM tbl_Dictionary 
ELSE IF @Language = 'en'
	SELECT en FROM tbl_Dictionary

GO


		/*EXECUTE PRODESURE*/
EXEC CREATE_DATABASE_NEWS 
EXEC CREATE_DATABASE_DICTIONARY
EXEC INSERT_DATABASE_NEWS
EXEC INSERT_DATABASE_DICTIONARY

EXEC SELECT_DATA @Language = 'tr'
EXEC SELECT_DATA @Language = 'en'

EXEC SELECT_DICTIONARY @Language = 'tr'
EXEC SELECT_DICTIONARY @Language = 'en'

		/*DROP PROCEDURE*/
/*
DROP PROCEDURE CREATE_DATABASE_NEWS 
DROP PROCEDURE CREATE_DATABASE_DICTIONARY
DROP PROCEDURE INSERT_DATABASE_NEWS
DROP PROCEDURE INSERT_DATABASE_DICTIONARY
*/