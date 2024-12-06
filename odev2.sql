create database odev2

create table ogr(
ogrno char(9) primary key not null,
ad nvarchar(11) not null,
soyad nvarchar(11) not null,
dtarih datetime not null,
cinsiyet nvarchar(5),
sinif nvarchar(10) not null,
puan tinyint not null
);
create table yazar(
yazarno char(30) primary key not null,
ad nvarchar(11) not null,
soyad nvarchar(11) not null
);
create table tur(
turno char(11) primary key not null,
ad nvarchar(50) not null
);
create table book (
bookno char(11) primary key not null,
ad nvarchar(30) not null,
sayfasayisi smallint not null,
puan tinyint not null,
yazarno char(30) foreign key references yazar(yazarno) not null,
turno char(11) foreign key references tur(turno) not null
);
create table islem(
islemno int primary key not null,
ogrno char(9) foreign key references ogr(ogrno) not null,
bookno char(11) foreign key references book(bookno) not null,
atarih datetime not null,
vtarih datetime not null
)
insert into ogr values ('220403003','hilmi','sözer',2022/01/02,'erkek','4. Sýnýf',100);
insert into yazar values ('190118049', 'mark','twain');
insert into tur values('210201018','gelisim g blok');
insert into book values ('123456789','oliver twist',223,97,'190118049','210201018')
insert into islem values (0001,'220403003','123456789',06-12-2022,2022/01/02)

select *from ogr;
select *from yazar;
select *from tur;
select *from book;
select *from islem;

