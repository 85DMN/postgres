
SELECT naimenovanie,dlitelnost FROM Trek WHERE dlitelnost = (SELECT MAX(dlitelnost) FROM Trek);
SELECT naimenovanie FROM Trek WHERE dlitelnost > 3.5;
SELECT namer FROM Sbornik WHERE year_v > 2017 AND year_v < 2021;
SELECT name FROM Ispolnitel WHERE name NOT like '% %';
SELECT naimenovanie FROM Trek WHERE naimenovanie SIMILAR TO '%(мой|my)%';

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(naimenovanie) FROM Trek t LEFT JOIN Albom a ON t.trekz = a.albomID  WHERE year_pr > 2018 AND year_pr < 2021;
--Средняя продолжительность треков по каждому альбому.
SELECT a.albomID, AVG(dlitelnost) FROM Trek t LEFT JOIN Albom a ON t.trekz = a.albomID GROUP BY albomID ORDER BY albomID;
--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT i.name FROM ispolnitel i LEFT JOIN Albom a ON i.ispolnitelId = a.albomID where year_pr<>2020;
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
 SELECT s.namer FROM Sbornik s LEFT JOIN Trek t ON s.sbonikID = t.trekID LEFT JOIN Albom a ON t.trekID = a.albomID LEFT JOIN ispolnitel i ON a.albomID = i.ispolnitelID where i.name = 'Frank Sinatra';
