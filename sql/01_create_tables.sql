DROP TABLE IF EXISTS Priima, Vizitas, Kontaktai, Gydytojas, Pacientas CASCADE;

CREATE TABLE Pacientas (
    Paciento_ID INT PRIMARY KEY,
    Vardas      VARCHAR(100) NOT NULL,
    Pavarde     VARCHAR(100) NOT NULL,
    AK          VARCHAR(11)  NOT NULL,
    Lytis       CHAR(1)      NOT NULL CHECK (Lytis IN ('V', 'M')),
    Gimimo_data DATE         NOT NULL CHECK (Gimimo_data <= CURRENT_DATE)
);

CREATE TABLE Kontaktai (
    Paciento_ID INT,
    Tel_Nr      VARCHAR(20)  NOT NULL CHECK (LENGTH(Tel_Nr) = 9),
    El_Pastas   VARCHAR(100) NOT NULL,
    PRIMARY KEY (Paciento_ID, Tel_Nr, El_Pastas),
    FOREIGN KEY (Paciento_ID) REFERENCES Pacientas
        ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE TABLE Vizitas (
    Vizito_ID     INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    Paciento_ID   INT,
    Data          DATE DEFAULT CURRENT_DATE,
    Nusiskundimai TEXT DEFAULT 'Bendri negalavimai',
    FOREIGN KEY (Paciento_ID) REFERENCES Pacientas
        ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE TABLE Gydytojas (
    Gydytojo_ID INT PRIMARY KEY,
    Vardas      VARCHAR(100),
    Pavarde     VARCHAR(100),
    Specialybe  VARCHAR(100)
);

CREATE TABLE Priima (
    Vizito_ID   INT,
    Gydytojo_ID INT,
    PRIMARY KEY (Vizito_ID, Gydytojo_ID),
    FOREIGN KEY (Vizito_ID)   REFERENCES Vizitas
        ON DELETE CASCADE ON UPDATE RESTRICT,
    FOREIGN KEY (Gydytojo_ID) REFERENCES Gydytojas
        ON DELETE CASCADE ON UPDATE RESTRICT
);
