INSERT INTO Zhanr(zhanrID, name) VALUES ((1,'pop'),(2,'shanson'),(3,'rock'));
INSERT INTO Ispolnitel(ispolnitelID, name) VALUES ((1,'Alton John'),(2,'Sting'),(3,'Frank Sinatra'),(4,'Shakira'));
INSERT INTO ZhanrIspolnitel(id,zhanrID,ispolnitelID) VALUES ((1,1,1),(2,2,2),(3,3,1),(4,2,3));

INSERT INTO Albom(albomID,name, year_pr) VALUES ((1,'sss',2019),(2,'xxx',2018),(3,'zzz',2020));
INSERT INTO AlbomIspolnitel(id,albom_id,ispolnitel_id) VALUES ((1,1,1),(2,2,2),(3,3,3),(4,2,1));
    

INSERT INTO Trek(trekID,naimenovanie,trekz,dlitelnost) VALUES ((1,'first_t',1,3.5),(2,'my_first',2,4.2),(3,'my_third',3,5),(4,'fouth',3,3.6),(5,'second',1,3.7),(6,'my_parts',2,4));
INSERT INTO Sbornik(sbonikID,namer,year_v) VALUES ((1,'first',2018),(2,'second',2019),(3,'third',2020),(4,'fourth',2021));
INSERT INTO TrekSbornik(dis,idt,ids) VALUES ((1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,1));