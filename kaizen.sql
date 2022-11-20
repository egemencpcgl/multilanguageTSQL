/*************************************************** DDL */

CREATE TABLE tbl_News (
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Title NVARCHAR(100),
	Detail NVARCHAR(1000),
	ImageUrls NVARCHAR(1000),
	Category NVARCHAR(50)
)
GO
CREATE TABLE tbl_Dictionary (
    id int identity(1,1) not null,
    en NVARCHAR(25),
	tr NVARCHAR(25),
)
GO

/* ALTER TABLE tbl_Dictionary
ADD newlanguagecolumn  NVARCHAR(25);
GO
ALTER TABLE tbl_News
ADD newnewscolumn  NVARCHAR(25);
GO


DROP TABLE tbl_News;
GO
DROP TABLE tbl_Dictionary;
GO
*/
 
/*************************************************** DML */
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
 
/*
select * from tbl_News where Title like 'tr%'
GO
select * from tbl_News where Title like 'en%'
GO

select * from tbl_News
GO
select * from tbl_Dictionary
GO
select en from tbl_Dictionary
GO
select tr from tbl_Dictionary
GO

Delete from tbl_News /* where id='' )*/
Delete from tbl_Dictionary /* where tr='' , en='')*/
