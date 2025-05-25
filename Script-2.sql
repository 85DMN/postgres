SELECT naimenovanie,dlitelnost FROM Trek WHERE dlitelnost = (SELECT MAX(dlitelnost) FROM Trek);
SELECT naimenovanie FROM Trek WHERE dlitelnost > 3.5;
SELECT namer FROM Sbornik WHERE year_v > 2017 AND year_v < 2021;
SELECT name FROM Ispolnitel WHERE name NOT like '% %';
SELECT naimenovanie FROM Trek WHERE naimenovanie SIMILAR TO '%(мой|my)%';
