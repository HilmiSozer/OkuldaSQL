
create database hastane_DB
create table hasta2 (
tc char(11)  NOT NULL,
ad nvarchar(20) NOT NULL,
soyad nvarchar (20) NOT NULL,
cinsiyet nvarchar(5),
adres nvarchar(50),
mail nvarchar(50),
tel nvarchar(50))
insert into hasta2 values ('58081172410','Mustafa','Tunay', 'E',
'Malatya','mtunay@gelisim.edu.tr', '05308202368')
insert into hasta2 values ('58081172411','Abdullah','Turan', 'E',
'Malatya','aturan@gelisim.edu.tr', '05328202369')
insert into hasta2 values ('58081172412','Semiha','Tuna', 'K',
'Eskisehir','stuna@gelisim.edu.tr', '05338202371')
insert into hasta2 values ('58081172414','Musa','Tunal�', 'E',
'Elaz�g','mtunal�@gelisim.edu.tr', '05228202377')
insert into hasta2 values ('58081172413','Recep','Yorulmaz', 'E',
'�zmir','ryorulmaz@gelisim.edu.tr', '05438202372')
create table b�l�m2 (
b�l�m_no nvarchar(20)  NOT NULL,
b�l�m_ad nvarchar(20)
)
insert into b�l�m2 values ('1','Kardiyoloji')
insert into b�l�m2 values ('2','�roloji')
insert into b�l�m2 values ('3','Psikoloji')
insert into b�l�m2 values ('4','Dahiliye')
insert into b�l�m2 values ('5','Check up')
create table doktorlar2 (
sicil_no nvarchar(20) NOT NULL,
ad nvarchar(20) NOT NULL,
soyad nvarchar (20) NOT NULL,
adres nvarchar(50),
mail nvarchar(50),
b�l�m_no nvarchar(20) )
insert into doktorlar2 values ('110','Bilal','Cu�lan', 'Malatya', '','1')
insert into doktorlar2 values ('111','Hasan','Demir', 'Malatya','','1')
insert into doktorlar2 values ('112','Ali','Ku�', 'Eskisehir','', '2')
insert into doktorlar2 values ('113','Hasan','U�', 'Elaz�g','', '2')
insert into doktorlar2 values ('114','Recep','Sar�', '�zmir','','3')
insert into doktorlar2 values ('115','Ay�e','Karabulut', 'Malatya','', '4')
insert into doktorlar2 values ('116','Song�l','�u�lan', 'Malatya','', '5')
insert into doktorlar2 values ('117','�i�dem','Ayd�n', 'Eskisehir','', '5')
create table randevu2(
randevu_no char(5) primary key NOT NULL,
tc char(11) ,
sicil_no nvarchar(20)  ,
tarih date)
insert into randevu2 values ('1','58081172410', '115','12/12/2022')
insert into randevu2 values ('2','58081172411', '110','12/12/2022')
insert into randevu2 values ('3','58081172412', '112','12/12/2022')
insert into randevu2 values ('4','58081172413', '114','12/12/2022')
insert into randevu2 values ('5','58081172414', '117','12/12/2022')
insert into randevu2 values ('6','58081172410', '113','12/19/2022')
insert into randevu2 values ('7','58081172414', '115','12/19/2022')
insert into randevu2 values ('8','58081172411', '111','12/21/2022')
insert into randevu2 values ('9','58081172413', '116','12/20/2022')
insert into randevu2 values ('10','58081172411', '115','12/27/2022')
insert into randevu2 values ('11','58081172413', '116','12/22/2022')
select hasta2.ad,hasta2.soyad, hasta2.tc, randevu2.sicil_no from hasta2 , randevu2 where   hasta2.tc = randevu2.tc and randevu2.sicil_no=110
