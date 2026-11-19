CREATE VIEW Vizitu_suvestine AS
SELECT V.Vizito_ID,
       P.Vardas  AS Paciento_Vardas,
       P.Pavarde AS Paciento_Pavarde,
       V.Data,
       V.Nusiskundimai,
       G.Vardas  AS Gydytojo_Vardas,
       G.Pavarde AS Gydytojo_Pavarde
FROM Vizitas V
JOIN Pacientas P ON V.Paciento_ID = P.Paciento_ID
JOIN Priima PR   ON V.Vizito_ID   = PR.Vizito_ID
JOIN Gydytojas G ON PR.Gydytojo_ID = G.Gydytojo_ID;

CREATE VIEW Seimos_gydytojai AS
SELECT Gydytojo_ID, Vardas, Pavarde, Specialybe
FROM Gydytojas
WHERE Specialybe LIKE '%Seimos gydytojas%';
