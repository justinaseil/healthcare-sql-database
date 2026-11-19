-- Šiandienos vizitai ir juos priimantys gydytojai
SELECT V.Vizito_ID, V.Data, G.Vardas AS Gydytojo_Vardas, G.Pavarde AS Gydytojo_Pavarde
FROM Vizitas V
JOIN Pacientas P ON V.Paciento_ID = P.Paciento_ID
JOIN Priima PR   ON V.Vizito_ID   = PR.Vizito_ID
JOIN Gydytojas G ON PR.Gydytojo_ID = G.Gydytojo_ID
WHERE V.Data = CURRENT_DATE;

-- Vizitų skaičius pagal pacientą
SELECT Paciento_ID, COUNT(Vizito_ID) AS Vizitu_sk
FROM Vizitas
GROUP BY Paciento_ID;

-- Vizitų skaičius pagal gydytoją
SELECT Gydytojo_ID, COUNT(Vizito_ID) AS Vizitu_sk
FROM Priima
GROUP BY Gydytojo_ID;

-- Vizitų skaičius pagal gydytojų specialybę
SELECT G.Specialybe, COUNT(PR.Vizito_ID) AS Vizitu_sk
FROM Gydytojas G
LEFT JOIN Priima PR ON G.Gydytojo_ID = PR.Gydytojo_ID
GROUP BY G.Specialybe
ORDER BY Vizitu_sk DESC;

-- Pacientai, kurie dar neturėjo nė vieno vizito
SELECT P.Paciento_ID, P.Vardas, P.Pavarde
FROM Pacientas P
LEFT JOIN Vizitas V ON P.Paciento_ID = V.Paciento_ID
WHERE V.Vizito_ID IS NULL;

-- Vizitai, kuriuos priėmė keli gydytojai
SELECT Vizito_ID, COUNT(Gydytojo_ID) AS Gydytoju_sk
FROM Priima
GROUP BY Vizito_ID
HAVING COUNT(Gydytojo_ID) > 1;

-- Pacientų amžius ir vizitų skaičius
SELECT P.Vardas, P.Pavarde,
       DATE_PART('year', AGE(P.Gimimo_data)) AS Amzius,
       COUNT(V.Vizito_ID) AS Vizitu_sk
FROM Pacientas P
LEFT JOIN Vizitas V ON P.Paciento_ID = V.Paciento_ID
GROUP BY P.Paciento_ID, P.Vardas, P.Pavarde, P.Gimimo_data
ORDER BY Vizitu_sk DESC;

-- Vizitai pagal mėnesį
SELECT DATE_TRUNC('month', Data)::DATE AS Menuo, COUNT(*) AS Vizitu_sk
FROM Vizitas
GROUP BY Menuo
ORDER BY Menuo;

-- Naudojant virtualią lentelę
SELECT * FROM Vizitu_suvestine ORDER BY Data;
SELECT * FROM Seimos_gydytojai;
