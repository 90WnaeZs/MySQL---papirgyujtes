A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:

3. feladat:
    SELECT tanulok.nev, tanulok.osztaly, leadasok.idopont, leadasok.mennyiseg 
    FROM tanulok JOIN leadasok ON tanulok.tazon=leadasok.tanulo 
    WHERE tanulok.osztaly LIKE '1%';

4. feladat:
    SELECT DISTINCT(idopont), AVG(mennyiseg) AS napi_atlag 
    FROM `leadasok` 
    GROUP BY idopont;
5. feladat:
    SELECT DISTINCT(tanulok.osztaly) 
    FROM tanulok JOIN leadasok ON tanulok.tazon=leadasok.tanulo 
    WHERE leadasok.idopont='2016-10-28'
    ORDER BY tanulok.osztaly ASC;
6. feladat:
    SELECT DISTINCT(tanulok.osztaly),SUM(leadasok.mennyiseg/10000) AS mazsa
    FROM `tanulok`
    JOIN leadasok ON tanulok.tazon=leadasok.tanulo
    GROUP BY tanulok.osztaly
    ORDER BY mazsa DESC;

7. feladat:
    SELECT tanulok.nev,tanulok.osztaly, leadasok.mennyiseg 
    FROM `tanulok` 
    JOIN leadasok ON tanulok.tazon=leadasok.tanulo 
    ORDER BY leadasok.mennyiseg DESC 
    LIMIT 10;
  