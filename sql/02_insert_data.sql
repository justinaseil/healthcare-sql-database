INSERT INTO Pacientas (Paciento_ID, Vardas, Pavarde, AK, Lytis, Gimimo_data) VALUES
    (101, 'Jonas',    'Petrulionis', '12345678901', 'V', '1980-01-01'),
    (102, 'Juste',    'Giedraityte', '23456789012', 'M', '1975-05-05'),
    (103, 'Audrius',  'Lapenas',     '34567890123', 'V', '1990-10-10'),
    (104, 'Sandra',   'Petraityte',  '21226759012', 'M', '2004-06-24'),
    (105, 'Ieva',     'Gelyte',      '34347894587', 'M', '1999-08-11'),
    (106, 'Juozas',   'Kudrauskas',  '12049635728', 'V', '1977-02-25'),
    (107, 'Lukas',    'Sakauskas',   '35698623451', 'V', '2006-12-24'),
    (108, 'Marina',   'Busokaityte', '65748764500', 'M', '1976-04-08'),
    (109, 'Juste',    'Ugnaite',     '56837456748', 'M', '2002-05-02'),
    (110, 'Tadas',    'Ivanauskas',  '45790876934', 'V', '1976-04-16'),
    (111, 'Kotryna',  'Norbutiene',  '20495834859', 'M', '2004-02-14'),
    (112, 'Juozas',   'Juginskis',   '04957348574', 'V', '1990-11-23');

INSERT INTO Kontaktai (Paciento_ID, Tel_Nr, El_Pastas) VALUES
    (101, '869123456', 'jjj@email.com'),
    (102, '860987654', 'aaa@email.com'),
    (103, '861703656', 'bbb@email.com'),
    (104, '861643454', 'ccc@email.com'),
    (105, '862425745', 'iii@email.com'),
    (106, '869293658', 'ddd@email.com'),
    (107, '866667986', 'eee@email.com'),
    (108, '866777899', 'kkk@email.com'),
    (109, '863655554', 'fff@email.com'),
    (110, '861224754', 'ggg@email.com'),
    (111, '861243567', 'lll@email.com'),
    (112, '865647459', 'hhh@email.com');

INSERT INTO Vizitas (Paciento_ID, Data, Nusiskundimai) VALUES
    (104, '2024-06-15', 'Galvos skausmas'),
    (107, '2024-05-20', 'Depresija'),
    (102, '2024-07-25', 'Luzis'),
    (104, '2024-05-24', 'Aukstas spaudimas'),
    (103, DEFAULT,      'Zemas spaudimas'),
    (111, DEFAULT,      'Atauga'),
    (106, '2024-06-24', DEFAULT),
    (105, '2024-05-30', 'Gripas'),
    (111, '2024-06-15', 'Luzis'),
    (102, '2024-07-27', 'Isvarza');

INSERT INTO Gydytojas (Gydytojo_ID, Vardas, Pavarde, Specialybe) VALUES
    (1001, 'Algirdas', 'Jonauskas',      'Seimos gydytojas'),
    (1002, 'Gabija',   'Aukstaite',      'Psichiatras'),
    (1003, 'Nijole',   'Andrijauskiene', 'Kardiologas'),
    (1004, 'Vytautas', 'Grincevicius',   'Traumatologas'),
    (1005, 'Rita',     'Masiulioniene',  'Seimos gydytojas'),
    (1006, 'Kazys',    'Babrauskas',     'Chirurgas'),
    (1007, 'Monikas',  'Gabciugaite',    'Kardiologas'),
    (1008, 'Juozas',   'Kazlas',         'Seimos gydytojas');

INSERT INTO Priima (Vizito_ID, Gydytojo_ID) VALUES
    (1, 1001), (2, 1002), (3, 1004), (4, 1007), (5, 1007), (6, 1006),
    (7, 1007), (8, 1005), (9, 1004), (10, 1004),
    (3, 1002), (7, 1006);
