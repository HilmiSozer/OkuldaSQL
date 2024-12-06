-- Database olu�turma kodu
Create database personel

-- Tablo olusturma kodlar�
Create table personel_veri (
adi nvarchar(20) Null,
soyadi nvarchar(20) Null,
yas tinyint
)

-- Verileri tabloya ekleme kodu
insert into personel_veri (adi,soyadi,yas) values ('Mustafa', 'Tunay', 18)
insert into personel_veri (adi,soyadi,yas) values ('Ayse', 'Durmaz', 30)
insert into personel_veri values ('Ali', 'Veli', 21)
insert into personel_veri (yas) values (25)
insert into personel_veri (adi) values ('Ahmet')
insert into personel_veri values ('Ali', 'Merhaba', 25)

-- Verileri silme
delete from personel_veri where yas=25
delete from personel_veri where adi='Ali' and yas=21
delete from personel_veri

-- Verileri G�ncelleme
update personel_veri set soyadi= 'Tunay' where soyadi='Merhaba'
update personel_veri set adi='John', soyadi='Davies' where adi='Ali' and soyadi='Tunay'

select * from personel_veri
-- Alter tablo �zerinde yeni �zellikler olu�turmaya yarar...
Alter table personel_veri add adres nvarchar(50)
-- Alter komutunun drop ile kullanarak tablodaki �zelli�in silinmesi
Alter table personel_veri drop column yas
-- Tablo silmek i�in
drop table personel_veri












