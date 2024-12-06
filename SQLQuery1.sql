use  MyS;
create table urunler(
urun_kodu nvarchar(10) NOT NULL,
urun_ismi nvarchar(30)NOT NULL,
urun_rengi nvarchar(10)NOT NULL,
urun_adet tinyint ,
urun_fiyat smallint NOT NULL
)