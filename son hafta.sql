create database universite;

create table ogrenci(
ogrencino int primary key not null,
ad varchar(50) not null,
soyad varchar(50) not null)

create table ders(
derskodu varchar(20) primary key not null,
dersadi varchar(50) not null,
kredi integer not null)

create table puan(
ogrencino int foreign key references ogrenci(ogrencino ) not null,
derskodu varchar(20) foreign key references ders(derskodu) not null,
puanno integer not null);

insert into ogrenci values (1011,'ebru','yýlmaz')
insert into ogrenci values (1012,'ahmet','þahin')
insert into ogrenci values (1013,'mustafa','þeker')
insert into ogrenci values (1014,'sibel','tekcan')

insert into ders values (501,'visual basic','3')
insert into ders values (502,'pascal','3')
insert into ders values (503,'ingilizce','2')
insert into ders values (504,'tarih','2')

insert into puan  values (1011,'501',85)  
insert into puan  values (1011,'502',70)
insert into puan  values (1011,'503',45)	
insert into puan  values (1011,'504',77)

insert into puan  values (1012,'501',78)  
insert into puan  values (1012,'502',50)
insert into puan  values (1012,'503',69)	
insert into puan  values (1012,'504',100)

insert into puan  values (1013,'501',80)  
insert into puan  values (1013,'502',86)
insert into puan  values (1013,'503',65)	
insert into puan  values (1013,'504',98)

insert into puan  values (1014,'501',57)  
insert into puan  values (1014,'502',63)
insert into puan  values (1014,'503',72)	
insert into puan  values (1014,'504',61)

select ad ,soyad from ogrenci
select *from ders
select *from puan
select ogrenci.ad,ogrenci.soyad, ders.dersadi from ogrenci,ders;

--select ogrenci.ogrencino,ders.dersadi, puan.puanno as'Not' from puan, ogrenci,ders where  puan.puanno>90
--select puan.puanno,ogrenci.ogrencino,ders.dersadi from puan, ogrenci,ders where puanno in (100,50) 
select puan.puanno from puan where puanno between 90 and 100;
select ogrencino,ad,soyad from ogrenci where soyad like 'þ%'; --içinde þ bulunan bütün soyadlar
select ogrencino,ad,soyad from ogrenci where soyad not like 'þ%'; --içinde þ bulunmayan bütün soyadlar
select ogrencino,ad,soyad from ogrenci where soyad not like '%þ%'; --kelimenin içinde þ bulunmayan bütün soyadlar
select ogrencino,ad,soyad from ogrenci where soyad not like 's%'  ; --kelimenin içinde þ bulunmayan bütün soyadlar
select ogrenci.ogrencino,ogrenci.ad,ogrenci.soyad, ders.dersadi, ders.derskodu, puan.puanno from ogrenci,ders, puan where ogrenci.ogrencino = puan.ogrencino and ders.derskodu = puan.derskodu
select ogrenci.ogrencino,ogrenci.ad,ogrenci.soyad, ders.dersadi, ders.derskodu, puan.puanno from ogrenci,ders, puan where ogrenci.ogrencino = puan.ogrencino and ders.derskodu = puan.derskodu and ders.dersadi='tarih'






