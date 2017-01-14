create table gmaps
(
Id int primary key identity,
Area nvarchar(60),
Name nvarchar(100),
LocLat nvarchar(60),
LocLong nvarchar(60),
ReadUrl nvarchar(500)
)

select *from gmaps



insert into gmaps values('Irving','Bawarchi','32.923597','-96.953877','http://irving.bawarchibiryanipoint.com/')
insert into gmaps values('Irving','Sarvana Bhavan','32.923601','-96.954504','http://www.saravanabhavan.com/')
insert into gmaps values('Irving','Royal Sweets','32.923597','-96.953877','http://www.royalsweets.net/')
insert into gmaps values('Irving','Hill top','32.921647','-96.956287','http://www.hilltopdallas.com/')


insert into gmaps values('Irving','India Bazar','32.923597','-96.953877','http://www.indiabazaardfw.com/')


ALTER table gmaps Add Type nvarchar(60);