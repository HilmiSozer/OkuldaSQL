create database kitapyayin
use kitapyayin
create table yayinci( 
YayineviID int primary key,
YayineviAdi nvarchar(30),
iletisim nvarchar(30),
IBAN nvarchar(26),)

Create table kitap(
constraint YayineviID int,
KitapID int ,
KitapAdi nvarchar(30),
yazar nvarchar(30),
Fiyat smallmoney,
)

select * from yayinci;
select * from kitap;
