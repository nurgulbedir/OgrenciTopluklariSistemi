CREATE TABLE Bolgeler (
    B_id INT PRIMARY KEY,
    B_ad VARCHAR(100)
);

CREATE TABLE Sehirler (
    S_id INT PRIMARY KEY,
    S_ad VARCHAR(100),
    B_id INT,
    FOREIGN KEY (B_id) REFERENCES Bolgeler(B_id)
);

CREATE TABLE Universiteler (
    U_id INT PRIMARY KEY,
    U_ad VARCHAR(100),
    S_id INT,
    FOREIGN KEY (S_id) REFERENCES Sehirler(S_id)
);

CREATE TABLE Bolumler (
    Bol_id INT PRIMARY KEY,
    Bol_ad VARCHAR(100),
    U_id INT,
    FOREIGN KEY (U_id) REFERENCES Universiteler(U_id)
);

CREATE TABLE Akademisyenler (
    A_id INT PRIMARY KEY,
    A_ad VARCHAR(100),
    A_soyad VARCHAR(100),
    A_unvan VARCHAR(50),
    Bol_id INT,
    FOREIGN KEY (Bol_id) REFERENCES Bolumler(Bol_id)
);

CREATE TABLE OgrenciTopluluklari (
    Ot_id INT PRIMARY KEY,
    Ot_ad VARCHAR(100),
    U_id INT,
    FOREIGN KEY (U_id) REFERENCES Universiteler(U_id)
);

CREATE TABLE Etkinlikler (
    E_id INT PRIMARY KEY,
    E_ad VARCHAR(100),
    Ot_id INT,
    FOREIGN KEY (Ot_id) REFERENCES OgrenciTopluluklari(Ot_id)
);

CREATE TABLE Sponsorlar (
    Sp_id INT PRIMARY KEY,
    Sp_ad VARCHAR(100)
);

CREATE TABLE EtkinlikSponsorlar (
    E_id INT,
    Sp_id INT,
    PRIMARY KEY (E_id, Sp_id),
    FOREIGN KEY (E_id) REFERENCES Etkinlikler(E_id),
    FOREIGN KEY (Sp_id) REFERENCES Sponsorlar(Sp_id)
);

CREATE TABLE Uyeler (
    O_id INT PRIMARY KEY,
    O_ad VARCHAR(100),
    O_soyad VARCHAR(100),
    Bol_id INT,
    FOREIGN KEY (Bol_id) REFERENCES Bolumler(Bol_id)
);

CREATE TABLE ToplulukUyeler (
    Ot_id INT,
    O_id INT,
    PRIMARY KEY (Ot_id, O_id),
    FOREIGN KEY (Ot_id) REFERENCES OgrenciTopluluklari(Ot_id),
    FOREIGN KEY (O_id) REFERENCES Uyeler(O_id)
);

