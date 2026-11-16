# Pacientų valdymo sistema – PostgreSQL

## Apie projektą

Šis projektas – tai reliacinė duomenų bazė, skirta pacientų informacijai, jų kontaktiniams duomenims, medicininiams vizitams ir gydytojų informacijai saugoti bei valdyti.

Duomenų bazė sukurta naudojant **PostgreSQL**. Projekto tikslas – praktiškai pritaikyti SQL žinias, parodyti reliacinių duomenų bazių projektavimo principų supratimą ir gebėjimą atlikti duomenų analizę naudojant SQL užklausas.

Projektą sudaro lentelių kūrimas, pirminiai ir išoriniai raktai, duomenų vientisumo apribojimai, indeksai, pavyzdiniai duomenys ir analitinės SQL užklausos.

## Duomenų bazės struktūra

Duomenų bazę sudaro penkios pagrindinės lentelės:

| Lentelė | Paskirtis |
|---|---|
| `Pacientas` | Saugo pacientų asmeninę informaciją |
| `Kontaktai` | Saugo pacientų kontaktinius duomenis |
| `Vizitas` | Saugo informaciją apie pacientų vizitus |
| `Gydytojas` | Saugo gydytojų informaciją ir specialybes |
| `Priima` | Susieja vizitus su juos priimančiais gydytojais |

## Lentelių tarpusavio ryšiai

- Vienas pacientas gali turėti kelis vizitus.
- Vienas pacientas gali turėti kelis kontaktinius įrašus.
- Vieną vizitą gali aptarnauti keli gydytojai.
- Vienas gydytojas gali dalyvauti daugelyje vizitų.

Lentelė `Priima` realizuoja Many-to-Many ryšį tarp vizitų ir gydytojų.

## Pritaikytos SQL funkcijos ir principai

Projekte panaudotos šios PostgreSQL ir SQL funkcijos bei galimybės:

- Lentelių kūrimas (`CREATE TABLE`)
- Duomenų įterpimas (`INSERT INTO`)
- Pirminiai ir išoriniai raktai (`PRIMARY KEY`, `FOREIGN KEY`)
- Duomenų apribojimai (`UNIQUE`, `NOT NULL`, `CHECK`)
- Numatytosios reikšmės (`DEFAULT`)
- Automatinis ID generavimas (`IDENTITY`)
- Duomenų trynimo taisyklės (`ON DELETE CASCADE`)
- Indeksų kūrimas (`CREATE INDEX`)
- Lentelių jungimas (`INNER JOIN`, `LEFT JOIN`)
- Grupavimas ir filtravimas (`GROUP BY`, `HAVING`)
- Agregavimo funkcijos (`COUNT`, `AVG` ir kt.)
- Bendrosios lentelių išraiškos (`CTE`)
- Įdėtinės užklausos (Subqueries)
- Langų funkcijos (`ROW_NUMBER`, `DENSE_RANK`)
- Duomenų kokybės tikrinimas

## Duomenų analizės pavyzdžiai

Projekte sukurtos SQL užklausos, leidžiančios atsakyti į įvairius praktinius klausimus:

1. Kiek vizitų turėjo kiekvienas pacientas?
2. Kurie gydytojai priėmė daugiausiai pacientų?
3. Kokios gydytojų specialybės yra dažniausiai pasitaikančios?
4. Kurie pacientai lankėsi daugiau nei vieną kartą?
5. Koks buvo paskutinis kiekvieno paciento vizitas?
6. Kaip galima surikiuoti gydytojus pagal vizitų skaičių?
7. Kurie gydytojai dar nėra priėmę pacientų?
8. Kaip pasiskirsto vizitų skaičius pagal mėnesius?
9. Kuriuos pacientus priėmė keli skirtingi gydytojai?
---
