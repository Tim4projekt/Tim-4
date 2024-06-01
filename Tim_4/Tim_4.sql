DROP DATABASE IF EXISTS proizvodnja_metalnih_konstrukcija;
CREATE DATABASE proizvodnja_metalnih_konstrukcija;
USE proizvodnja_metalnih_konstrukcija;

CREATE TABLE klijent (
id INTEGER PRIMARY KEY,
naziv_klijenta VARCHAR(35),
odgovorna_osoba VARCHAR(35),
kontakt_broj VARCHAR(15),
mail_adresa VARCHAR(50)
);

INSERT INTO klijent VALUES
	(1, 'Holcim', 'Borna Karlović', '0997314087', 'borna.karlovic@holcim.com'),
    (2, 'British American Tabacco', 'Toni Belić' , '0997871285', 'toni.belic@bat.com'),
    (3, 'Rockwool Adriatic', 'Ivana Marić', '0970196856', 'ivana.maric@rockwool.com'),
    (4, 'Plodine', 'Lucas Perić', '0916813627', 'lucas.peric@plodine.com'),
    (5, 'INA - Naftaplin d.d.', 'Ljubic Topić', '0970504540', 'ljubica.topic@ina.com'),
    (6, 'HEP Proizvodnja', 'Draženko Čerkez', '0929430314', 'd.cerkez@hep.com'),
    (7, 'Kaufland', 'Matej Horvat', '0918925648', 'matej.horvat@kaufland.com'),
    (8, 'AD Plastik d.o.o.', 'Renata Blašković', '0992020998', 'renata.blaskovic@ad-plastik.com'),
    (9, 'A1 Hrvatska', 'Mirko Marković', '0919565248', 'mirko.markovic@a1.com'),
    (10, 'Podravka Vegeta', 'Lucija Anić', '0928925445', 'lucija.anic@podravka.com'),
    (11, 'Franck', 'Tomislav Bačić', '0978938448', 'tomislav.bacic@franck.com'),
    (12, 'T-com Hrvatska', 'Matea Defar', '0981111234', 'matea.defar@t-com.com'),
    (13, 'Philip Morris Zagreb', 'Lea Mihaljević', '0997334567', 'lea.mihaljevic@philipmorris.com'),
	(14, 'Fortenova Grupa', 'Ante Tomić', '0997543210', 'ante.tomic@fortenova.com'),
	(15, 'Rimac Automobili', 'Nikolina Živković', '0970223344', 'nikolina.zivkovic@rimac-automobili.com'),
	(16, 'Tommy', 'Hrvoje Crnić', '0916798234', 'hrvoje.crnic@tommy.com'),
	(17, 'Orbico', 'Maja Kušić', '0970677891', 'maja.kusic@orbico.com'),
	(18, 'INA - Industrija nafte', 'Ivan Rajković', '0929465712', 'ivan.rajkovic@ina.hr'),
	(19, 'Decathlon', 'Martina Blažević', '0918932345', 'martina.blazevic@decathlon.com'),
	(20, 'Ledo', 'Petar Kos', '0992123456', 'petar.kos@ledo.hr'),
	(21, 'Agrokor', 'Tina Šarić', '0919587345', 'tina.saric@agrokor.hr'),
	(22, 'Belupo', 'Stjepan Barišić', '0928945643', 'stjepan.barisic@belupo.hr'),
	(23, 'Atlantic Trade', 'Klara Smolčić', '0978941234', 'klara.smolcic@atlantictrade.com'),
	(24, 'Emmezeta', 'Luka Majstorović', '0981133444', 'luka.majstorovic@emmezeta.hr'),
	(25, 'Konzum', 'Sara Mandić', '0997342567', 'sara.mandic@konzum.hr'),
	(26, 'AutoZubak', 'Tomislav Pavlić', '0916798234', 'tomislav.pavlic@autozubak.hr'),
	(27, 'Tisak', 'Ivana Lukić', '0970689345', 'ivana.lukic@tisak.hr'),
	(28, 'Croatia Airlines', 'Marin Petković', '0929475612', 'marin.petkovic@croatiaairlines.hr'),
	(29, 'OTP banka', 'Ana Šarić', '0918937564', 'ana.saric@otpbanka.hr'),
	(30, 'Fina', 'Krešimir Bašić', '0992233445', 'kresimir.basic@fina.hr');

CREATE TABLE zaposlenik (
id INTEGER PRIMARY KEY,
ime VARCHAR(35),
prezime VARCHAR(35),
kontakt_broj VARCHAR(15),
cijena_po_satu NUMERIC(3,1) NOT NULL
);

INSERT INTO zaposlenik VALUES
	(101, 'Mihovil', 'Bulić', '0919625475', '8'),
    (102, 'Manuel', 'Matić', '0929265474', '12'),
    (103, 'Andrea', 'Čelebić', '0917545268', '11.5'),
    (104, 'Ivica', 'Pomazan', '0971542644', '9.5'),
    (105, 'Tihomir', 'Matejčić', '0915412001', '7'),
    (106, 'Matteo', 'Marić', '092224244', '8.5'),
    (107, 'Martin', 'Modrušan', '091336521', '9'),
    (108, 'Junuz', 'Bajrami', '0926696941', '10'),
    (109, 'Marko', 'Milohanović', '0911124598', '7'),
    (110, 'Petar', 'Šegon', '099543665','15'),
    (111, 'Bruno', 'Galant', '0916653211', '10.5'),
    (112, 'Karlo', 'Juranić', '0955523000', '11'),
    (113, 'Ivan', 'Zelić', '0912345678', '8.5'),
	(114, 'Tihomir', 'Matić', '0929876543', '12'),
	(115, 'Goran', 'Horvat', '0911234567', '11.5'),
	(116, 'Marijan', 'Kovačević', '0972345678', '9.5'),
	(117, 'Luka', 'Tomić', '0913456789', '7'),
	(118, 'Dario', 'Nikolić', '0924567890', '8.5'),
	(119, 'Ivor', 'Perić', '0915678901', '9'),
	(120, 'Viktor', 'Vuković', '0926789012', '10'),
	(121, 'Marin', 'Babić', '0917890123', '7'),
	(122, 'Nino', 'Živković', '0998901234', '15'),
	(123, 'Filip', 'Radovan', '0919012345', '10.5'),
	(124, 'Ante', 'Savić', '0950123456', '11'),
	(125, 'Hrvoje', 'Knežević', '0911237890', '8.5'),
	(126, 'Rino', 'Petrović', '0922346789', '12'),
	(127, 'Marko', 'Jurišić', '0913456780', '11.5'),
	(128, 'Nikola', 'Barišić', '0974567891', '9.5'),
	(129, 'Mateo', 'Marinović', '0915678902', '7'),
	(130, 'Karlo', 'Novak', '0926789013', '8.5');
    
    
CREATE TABLE projekt (
id INTEGER PRIMARY KEY,
id_klijent INTEGER NOT NULL,
FOREIGN KEY (id_klijent) REFERENCES klijent (id),
radni_nalog VARCHAR(10),
naziv_projekta VARCHAR(35),
nacrti TEXT,
rok_izrade DATE
);

INSERT INTO projekt VALUES
    (201, 1, 'rn001', 'Silos', 'C:\Users\Korisnik\Proizvodnja\Holcim\Koromačno\Silos\Radionica', '2024-03-30'),
    (202, 1, 'rn002', 'Torre Tension', 'C:\Users\Korisnik\Proizvodnja\Holcim\Koromačno\TT\Radionica', '2024-04-30'),
    (203, 1, 'rn002/2', 'Utezi', 'C:\Users\Korisnik\Proizvodnja\Holcim\Koromačno\TT\Radionica', '2024-04-30'),
    (204, 2, 'rn003', 'Pregrada skladišta', 'C:\Users\Korisnik\Proizvodnja\BAT\Skladište\Radionica', '2024-05-25'),
    (205, 3, 'rn004', 'Inox bubanj', 'C:\Users\Korisnik\Proizvodnja\Rockwool\Inox bubanj\Radionica', '2024-05-30'),
    (206, 4, 'rn005', 'Plodine - Varaždinske Toplice', 'C:\Users\Korisnik\Proizvodnja\Plodine\Var toplice\Radionica', '2024-06-01'),
    (207, 4, 'rn005/2', 'Totem', 'C:\Users\Korisnik\Proizvodnja\Plodine\Var toplice\Radionica', '2024-06-10'),
    (208, 4, 'rn005/3', 'Protupožarno stepenište', 'C:\Users\Korisnik\Proizvodnja\Plodine\Var toplice\Radionica', '2024-08-10'),
    (209, 5, 'rn006', 'Rešetka za kanal', 'C:\Users\Korisnik\Proizvodnja\INA\razni radovi\Radionica', '2024-08-30'),
    (210, 5, 'rn007', 'Nadstrešnica', 'C:\Users\Korisnik\Proizvodnja\INA\razni radovi\Radionica', '2024-09-30'),
    (211, 6, 'rn008', 'Platforma', 'C:\Users\Korisnik\Proizvodnja\HEP\Platforma\Radionica', '2024-10-20'),
    (212, 7, 'rn009', 'Totem', 'C:\Users\Korisnik\Proizvodnja\Kaufland\Totem\Radionica', '2024-10-25'),
    (213, 7, 'rn010', 'Stalak', 'C:\Users\Korisnik\Proizvodnja\Kaufland\Stalak\Radionica', '2024-11-05'),
    (214, 8, 'rn011', 'Metalna kutija', 'C:\Users\Korisnik\Proizvodnja\AD Plastik\Kutija\Radionica', '2024-11-15'),
    (215, 9, 'rn012', 'Nosač kablova', 'C:\Users\Korisnik\Proizvodnja\A1 Hrvatska\Nosač kablova\Radionica', '2024-11-25'),
    (216, 10, 'rn013', 'Čelična posuda', 'C:\Users\Korisnik\Proizvodnja\Podravka Vegeta\Posuda\Radionica', '2024-12-05'),
    (217, 11, 'rn014', 'Okvir filtera', 'C:\Users\Korisnik\Proizvodnja\Franck\Filtar okvir\Radionica', '2024-12-15'),
    (218, 12, 'rn015', 'Metalni okvir', 'C:\Users\Korisnik\Proizvodnja\T-com Hrvatska\Okvir\Radionica', '2024-12-20'),
    (219, 13, 'rn016', 'Mašina za pakiranje', 'C:\Users\Korisnik\Proizvodnja\Philip Morris Zagreb\Pakiranje\Radionica', '2025-01-10'),
    (220, 14, 'rn017', 'Ormarić', 'C:\Users\Korisnik\Proizvodnja\Fortenova Grupa\Ormarić\Radionica', '2025-01-20'),
    (221, 15, 'rn018', 'Metalni okvir za auto', 'C:\Users\Korisnik\Proizvodnja\Rimac Automobili\Okvir\Radionica', '2025-01-30'),
    (222, 16, 'rn019', 'Polica', 'C:\Users\Korisnik\Proizvodnja\Tommy\Polica\Radionica', '2025-02-10'),
    (223, 17, 'rn020', 'Metalna rešetka', 'C:\Users\Korisnik\Proizvodnja\Orbico\Rešetka\Radionica', '2025-02-20'),
    (224, 18, 'rn021', 'Čelična ploča', 'C:\Users\Korisnik\Proizvodnja\INA Industrija nafte\Ploča\Radionica', '2025-03-01'),
    (225, 19, 'rn022', 'Metalni okvir za reklamu', 'C:\Users\Korisnik\Proizvodnja\Decathlon\Okvir\Radionica', '2025-03-15'),
    (226, 20, 'rn023', 'Kutija', 'C:\Users\Korisnik\Proizvodnja\Ledo\Kutija\Radionica', '2025-03-25'),
    (227, 21, 'rn024', 'Metalni stalak za proizvode', 'C:\Users\Korisnik\Proizvodnja\Agrokor\Stalak\Radionica', '2025-04-05'),
    (228, 22, 'rn025', 'Čelični medicinski ormarić', 'C:\Users\Korisnik\Proizvodnja\Belupo\Ormarić\Radionica', '2025-04-15'),
    (229, 23, 'rn026', 'Okvir za pult', 'C:\Users\Korisnik\Proizvodnja\Atlantic Trade\Okvir\Radionica', '2025-04-25'),
    (230, 24, 'rn027', 'Čelična konstrukcija', 'C:\Users\Korisnik\Proizvodnja\Emmezeta\Konstrukcija\Radionica', '2025-05-05');



CREATE TABLE segment (
id INTEGER PRIMARY KEY,
id_projekt INTEGER NOT NULL,
FOREIGN KEY (id_projekt) REFERENCES projekt (id),
naziv_segmenta VARCHAR(35),
kolicina INTEGER NOT NULL
);

INSERT INTO segment VALUES
	(301, 201, 'Plašt', 2 ),
    (302, 201, 'Konus', 1 ),
    (303, 201, 'Glavna konstrukcija', 1),
    (304, 202, 'Glavna konstrukcija', 2),
    (305, 203, 'Utezi', 52),
    (306, 204, 'Noseći stupovi', 4),
	(307, 204, 'Pregradni limovi', 6),
    (308, 205, 'Konstrukcija', 3),
	(309, 205, 'Perforirani lim', 22),
    (310, 206, 'Podkonstrukcija panela', 12),
    (311, 206, 'Podkonstrukcija stolarije', 10),
    (312, 206, 'Prednja nadstrešnica', 1),
    (313, 207, 'Totem ', 2),
    (314, 208, 'Ograda', 3),
	(315, 208, 'Tetive stepeništa', 4),
	(316, 208, 'Gazišta', 21),
    (317, 209, 'Rešetka', 30),
    (318, 210, 'Noseći stupovi',4),
    (319, 210, 'Krovna rešetka', 1),
    (320, 211, 'Tetive', 4),
    (321, 211, 'Rešetka', 1),
    (322, 211, 'Protuklizni limovi', 5),
    (323, 212, 'Totem', 1),
    (324, 213, 'Stalak baza', 2),
	(325, 214, 'Okvir kutije', 3),
	(326, 214, 'Poklopac kutije', 1),
	(327, 215, 'Glavna konstrukcija nosača', 2),
	(328, 215, 'Nosači kabela', 5),
	(329, 216, 'Posuda baza', 3),
	(330, 216, 'Poklopac posude', 4),
	(331, 217, 'Okvir filtera', 2),
	(332, 218, 'Okvir baza', 1),
	(333, 219, 'Glavna konstrukcija mašine', 2),
	(334, 220, 'Ormarić vrata', 2),
	(335, 220, 'Ormarić tijelo', 3),
	(336, 221, 'Okvir baza', 4),
	(337, 221, 'Okvir gornji', 2),
	(338, 222, 'Polica baza', 1),
	(339, 222, 'Polica nivo', 3),
	(340, 223, 'Rešetka baza', 1),
	(341, 223, 'Rešetka sloj', 3),
	(342, 224, 'Ploča baza', 1),
	(343, 224, 'Ploča dodatak', 1),
	(344, 225, 'Okvir baza', 1),
	(345, 225, 'Okvir gornji', 1),
	(346, 226, 'Kutija baza', 1),
	(347, 226, 'Poklopac kutije', 1),
	(348, 227, 'Stalak baza', 1),
	(349, 227, 'Stalak dodatak', 1),
	(350, 228, 'Ormarić vrata', 2),
	(351, 228, 'Ormarić tijelo', 1),
	(352, 229, 'Okvir baza', 1),
	(353, 229, 'Okvir gornji', 1),
	(354, 230, 'Konstrukcija baza', 1),
	(355, 230, 'Konstrukcija dodatak', 1);

CREATE TABLE faze_izrade (
id INTEGER PRIMARY KEY,
naziv_faze VARCHAR(35),
opis TEXT,
cijena_stroja_po_satu INTEGER NOT NULL
);

INSERT INTO faze_izrade VALUES
	(401, 'Sklapanje', 'Od gotovih pozicija spaja se sklop puntiranjem', 30 ),
	(402, 'Rezanje - CNC Plazma', 'Rezanje pozicija na limu postupkom plazma rezanja', 45 ),
	(403, 'Piljenje - Pila', 'Piljenje pozicija od profila ili cijevi sa tračnom pilom', 20 ),
	(404, 'Zavarivanje', 'Zavarivanje Mig/Mag postupkom zavarivanja, predhodno sklopljen sklop', 50 ),
	(405, 'Brušenja', 'Brušenje zavarenih sklopova kutnom brusilicom', 20 ),
	(406, 'Savijanje - CNC savijačica', 'Savijanje pozicija od lima pomoću cnc savijačice', 50 ),
	(407, 'Farbanje', 'Farbanje gotovih sklopova', 20 ),
	(408, 'Bravarenje - razno', 'Dodatni radovi kao što su poravnavanje zavarenih sklopova', 25);
    
CREATE TABLE tip_materijala (
id INTEGER PRIMARY KEY,
naziv_tipa_materijala VARCHAR(35)
);

INSERT INTO tip_materijala VALUES
	(501, 'Cijev'),
    (502, 'Lim'),
    (503, 'Profil'),
    (504, 'Protuklizni lim - suza'),
    (505, 'Šipka'),
    (506, 'Specijalni tip');
    

CREATE TABLE materijal (
id INTEGER PRIMARY KEY,
id_tip_materijala INTEGER NOT NULL,
FOREIGN KEY (id_tip_materijala) REFERENCES tip_materijala (id),
naziv_materijala VARCHAR(35),
opis TEXT,
napomena VARCHAR(50),
cijena_po_komadu NUMERIC(5,1) NOT NULL
);

INSERT INTO materijal VALUES
	(601, 501, '50x50x2 S235','Visina x Širina x Debljina stijenke','6 metara je kom',8.5 ),
	(602, 501, '40x40x3 S235','Visina x Širina x Debljina stijenke','6 metara je kom',7.5 ),    
	(603, 501, 'fi 48.6x2 S235','Promjer x Debljina stijenke','6 metara je kom cijevi',8.0 ),
	(604, 502, '15mm S235','Debljina stijenke i kvaliteta','dimenzija 3000x1500',129.5 ),
    (605, 502, '20mm S235','Debljina stijenke i kvaliteta','dimenzija 2500x1250',205.6 ),
    (606, 502, '10mm P265GH','Debljina stijenke i kvaliteta','dimenzija 3000x1500',98.6 ),
    (607, 502, '5mm S355','Debljina stijenke i kvaliteta','dimenzija 2000x1000',52.5 ),
    (608, 503, 'HEA120 S235','120x114mm su gabariti profila','12 metara je kom cijevi',198.5 ),
    (609, 503, 'IPE300 S235','300x150mm su gabariti profila','12 metara je kom cijevi',294.6 ),
    (610, 503, 'HEB100 S235','100x100mm su gabariti profila','6 metara je kom cijevi',75.2 ),
    (611, 503, 'UNP120 S235','120x60mm su gabariti profila','6 metara je kom cijevi',63.2 ),
    (612, 504, '4/5mm S235','Debljina stijenke i kvaliteta','dimenzija 3000x1500',68.6 ),
    (613, 505, 'fi 18mm S235','Promjer i kvaliteta','6 metara je kom',21.2 ),
    (614, 502, '5mm AISI304','Debljina stijenke i kvaliteta','dimenzija 2000x1000',152.5 ),
    (615, 502, '8mm S235', 'Debljina stijenke i kvaliteta', 'dimenzija 3000x1500', 160.2),
	(616, 502, '12mm S235', 'Debljina stijenke i kvaliteta', 'dimenzija 2500x1250', 230.5),
	(617, 502, '5mm AISI316', 'Debljina stijenke i kvaliteta', 'dimenzija 2000x1000', 170.8),
	(618, 502, '20mm S355', 'Debljina stijenke i kvaliteta', 'dimenzija 3000x1500', 320.4),
	(619, 502, '15mm S275', 'Debljina stijenke i kvaliteta', 'dimenzija 2500x1250', 190.7),
	(620, 502, '10mm S235JR', 'Debljina stijenke i kvaliteta', 'dimenzija 3000x1500', 110.9),
	(621, 503, 'HEA140 S235', '140x133mm su gabariti profila', '12 metara je kom cijevi', 225.3),
	(622, 503, 'IPE360 S235', '360x170mm su gabariti profila', '12 metara je kom cijevi', 345.7),
	(623, 503, 'HEB160 S235', '160x160mm su gabariti profila', '6 metara je kom cijevi', 145.9),
	(624, 503, 'UNP180 S235', '180x70mm su gabariti profila', '6 metara je kom cijevi', 89.4),
	(625, 504, '4/5mm S235', 'Debljina stijenke i kvaliteta', 'dimenzija 2500x1250', 60.3),
	(626, 504, '6/7mm S235', 'Debljina stijenke i kvaliteta', 'dimenzija 2500x1250', 84.3),
	(627, 504, '8/9mm S235', 'Debljina stijenke i kvaliteta', 'dimenzija 3000x1500', 105.6),
	(628, 505, 'fi 22mm S235', 'Promjer i kvaliteta', '6 metara je kom', 25.6),
	(629, 505, 'fi 25mm S235', 'Promjer i kvaliteta', '6 metara je kom', 29.5),
	(630, 505, 'fi 30mm S235', 'Promjer i kvaliteta', '6 metara je kom', 34.8),
	(631, 506, 'fi 28mm Hastelloy C276', 'Promjer i kvaliteta', '6 metara je kom', 680.3),
	(632, 506, 'fi 32mm Monel 400', 'Promjer i kvaliteta', '6 metara je kom', 720.0),
	(633, 502, '25mm S235', 'Debljina stijenke i kvaliteta', 'dimenzija 3000x1500', 250.9),
	(634, 502, '30mm S235', 'Debljina stijenke i kvaliteta', 'dimenzija 2500x1250', 310.5),
	(635, 502, '12mm P355GH', 'Debljina stijenke i kvaliteta', 'dimenzija 3000x1500', 120.7);


CREATE TABLE proizvodnja (
id INTEGER PRIMARY KEY,
id_segment INTEGER NOT NULL,
FOREIGN KEY (id_segment) REFERENCES segment (id),
id_faza INTEGER NOT NULL,
FOREIGN KEY (id_faza) REFERENCES faze_izrade (id),
status_proizvodnje VARCHAR(20),
datum DATE
);
    
INSERT INTO proizvodnja VALUES
	(701, 301, 402, 'izrađeno', '2024-02-10'),
    (702, 301, 406, 'izrađeno', '2024-02-10'),
    (703, 302, 402, 'izrađeno', '2024-02-10'),
    (704, 302, 406, 'izrađeno', '2024-02-10'),
    (705, 303, 403, 'izrađeno', '2024-02-10'),
    (706, 302, 401, 'izrađeno', '2024-02-11'),
    (707, 303, 401, 'izrađeno', '2024-02-11'),
    (708, 301, 401, 'izrađeno', '2024-02-11'),
    (709, 302, 404, 'izrađeno', '2024-02-11'),
    (710, 303, 404, 'izrađeno', '2024-02-11'),
    (711, 301, 404, 'izrađeno', '2024-02-11'),
    (712, 302, 405, 'izrađeno', '2024-02-11'),
    (713, 303, 405, 'izrađeno', '2024-02-11'),
    (714, 301, 405, 'izrađeno', '2024-02-12'),
    (715, 302, 407, 'izrađeno', '2024-02-12'),
    (716, 303, 407, 'izrađeno', '2024-02-12'),
    (717, 301, 407, 'izrađeno', '2024-02-12'),
    (718, 304, 403, 'u izradi', '2024-02-12'),
    (719, 304, 402, 'u izradi', '2024-02-12'),
    (720, 305, 402, 'u izradi', '2024-02-12'),
    (721, 305, 404, 'u izradi', '2024-02-12'),
    (722, 305, 403, 'u izradi', '2024-02-12'),
    (723, 306, 404, 'u izradi', '2024-02-13'),
    (724, 306, 402, 'u izradi', '2024-02-13'),
    (725, 306, 406, 'u izradi', '2024-02-13'),
    (726, 307, 405, 'u izradi', '2024-02-13'),
    (727, 307, 404, 'u izradi', '2024-02-13'),
    (728, 307, 401, 'u izradi', '2024-02-13'),
    (729, 308, 402, 'u izradi', '2024-02-14'),
    (730, 308, 404, 'u izradi', '2024-02-14'),
    (731, 308, 406, 'u izradi', '2024-02-14'),
    (732, 309, 403, 'u izradi', '2024-02-14'),
    (733, 309, 401, 'u izradi', '2024-02-14'),
    (734, 309, 407, 'u izradi', '2024-02-14'),
    (735, 310, 401, 'u izradi', '2024-02-15'),
    (736, 310, 406, 'u izradi', '2024-02-15'),
    (737, 310, 402, 'u izradi', '2024-02-15'),
    (738, 311, 404, 'u izradi', '2024-02-15'),
    (739, 311, 403, 'u izradi', '2024-02-15'),
    (740, 311, 405, 'u izradi', '2024-02-15'),
    (741, 312, 406, 'u izradi', '2024-02-16'),
    (742, 312, 404, 'u izradi', '2024-02-16'),
    (743, 312, 402, 'u izradi', '2024-02-16'),
    (744, 313, 401, 'u izradi', '2024-02-16'),
    (745, 313, 403, 'u izradi', '2024-02-16'),
    (746, 313, 407, 'u izradi', '2024-02-16'),
    (747, 314, 406, 'u izradi', '2024-02-17'),
    (748, 314, 405, 'u izradi', '2024-02-17'),
    (749, 314, 404, 'u izradi', '2024-02-17'),
    (750, 315, 403, 'u izradi', '2024-02-17');


CREATE TABLE utrosak_sati (
id INTEGER PRIMARY KEY,
id_proizvodnja INTEGER NOT NULL,
FOREIGN KEY (id_proizvodnja) REFERENCES proizvodnja (id),
id_zaposlenik INTEGER NOT NULL, 
FOREIGN KEY (id_zaposlenik) REFERENCES zaposlenik (id),
utrosak_sati NUMERIC(3,1) NOT NULL
);

INSERT INTO utrosak_sati VALUES
	(801, 701, 101, 1.5),
	(802, 702, 103, 0.5),
    (803, 703, 101, 1),
    (804, 704, 106, 1.5),
    (805, 705, 103, 2),
    (806, 706, 111, 1.5),
    (807, 707, 108, 1),
    (808, 708, 110, 2.5),
    (809, 709, 107, 3),
    (810, 710, 104, 0.5),
    (811, 711, 105, 2),
    (812, 712, 102, 1.5),
    (813, 713, 109, 2),
    (814, 714, 111, 2),
    (815, 715, 110, 0.5),
    (816, 716, 101, 0.5),
    (817, 717, 112, 1.5),
    (818, 718, 101, 2),
    (819, 719, 103, 1),
    (820, 720, 102, 1.5),
    (821, 721, 105, 2),
    (822, 722, 104, 1),
    (823, 723, 108, 3),
    (824, 724, 109, 1),
    (825, 725, 107, 2),
    (826, 726, 110, 2.5),
    (827, 727, 111, 1),
    (828, 728, 112, 1.5),
    (829, 729, 101, 2),
    (830, 730, 103, 1.5),
    (831, 731, 102, 3),
    (832, 732, 105, 1),
    (833, 733, 104, 2),
    (834, 734, 106, 2),
    (835, 735, 107, 1),
    (836, 736, 110, 1),
    (837, 737, 111, 2),
    (838, 738, 112, 1.5),
    (839, 739, 101, 1),
    (840, 740, 103, 2);
    
CREATE TABLE utrosak_materijala (
id INTEGER PRIMARY KEY,
id_projekt INTEGER NOT NULL,
FOREIGN KEY (id_projekt) REFERENCES projekt (id),
id_materijal INTEGER NOT NULL,
FOREIGN KEY (id_materijal) REFERENCES materijal (id),
kolicina INTEGER NOT NULL CHECK (kolicina > 0)
);

INSERT INTO utrosak_materijala VALUES
	(901, 201, 606, 4),
    (902, 201, 611, 11),
    (903, 201, 607, 5),
    (904, 203, 605, 8),
    (905, 202, 611, 9),
    (906, 204, 606, 6),
    (907, 204, 607, 7),
    (908, 204, 611, 12),
    (909, 205, 605, 9),
    (910, 206, 611, 10),
	(911, 207, 606, 5),
    (912, 207, 607, 8),
    (913, 207, 611, 15),
    (914, 208, 605, 10),
    (915, 209, 611, 11),
    (916, 210, 609, 8),
    (917, 211, 612, 2),
    (918, 211, 609, 6),
    (919, 212, 613, 10),
    (920, 212, 610, 2),
    (921, 213, 611, 5),
    (922, 214, 614, 15),
    (923, 215, 612, 3),
    (924, 215, 610, 1),
    (925, 216, 610, 4),
    (926, 217, 615, 2),
    (927, 218, 616, 4),
    (928, 219, 617, 3),
    (929, 220, 617, 4),
    (930, 221, 618, 6),
    (931, 222, 619, 5),
    (932, 223, 620, 8),
    (933, 224, 621, 9),
    (934, 225, 622, 7),
    (935, 226, 623, 6),
    (936, 227, 624, 4),
    (937, 228, 625, 8),
    (938, 229, 626, 9),
    (939, 230, 627, 10),
    (940, 230, 628, 12),
    (941, 230, 629, 14),
    (942, 230, 630, 16),
    (943, 230, 631, 18),
    (944, 230, 632, 20),
    (945, 230, 633, 22),
    (946, 230, 634, 24),
    (947, 230, 635, 26);
    
    
CREATE TABLE primka_materijala (
id INTEGER PRIMARY KEY,
id_projekt INTEGER NOT NULL,
FOREIGN KEY (id_projekt) REFERENCES projekt (id),
id_materijal INTEGER NOT NULL,
FOREIGN KEY (id_materijal) REFERENCES materijal (id),
kolicina INTEGER NOT NULL,
status_narudbe VARCHAR(20),
datum_upisa DATE
);

INSERT INTO primka_materijala VALUES
	(1001, 201, 606, 4, 'dostavljeno', '2024-02-10'),
    (1002, 201, 607, 5, 'dostavljeno', '2024-02-10'),
    (1003, 201, 611, 11, 'dostavljeno', '2024-02-10'),
    (1004, 202, 611, 9, 'dostavljeno', '2024-02-10'),
    (1005, 203, 605, 8, 'dostavljeno', '2024-02-10'),
    (1006, 205, 614, 22, 'naručeno', '2024-02-10'),
    (1007, 204, 606, 6, 'dostavljeno', '2024-02-11'),
    (1008, 204, 607, 7, 'dostavljeno', '2024-02-11'),
    (1009, 204, 611, 12, 'dostavljeno', '2024-02-11'),
    (1010, 205, 605, 9, 'dostavljeno', '2024-02-11'),
    (1011, 206, 611, 10, 'naručeno', '2024-02-11'),
    (1012, 207, 606, 5, 'dostavljeno', '2024-02-12'),
    (1013, 207, 607, 8, 'dostavljeno', '2024-02-12'),
    (1014, 207, 611, 15, 'dostavljeno', '2024-02-12'),
    (1015, 208, 605, 10, 'dostavljeno', '2024-02-12'),
    (1016, 209, 611, 11, 'naručeno', '2024-02-12');
        
CREATE TABLE alat (
  id INTEGER PRIMARY KEY,
  naziv_alata VARCHAR (50) NOT NULL,
  kratki_opis TEXT,
  status_alata VARCHAR (8) NOT NULL
);

INSERT INTO alat VALUES
	(1201, 'Makita 9557B','Mala kutna brusilica ,oznaka B1','ispravno'),
    (1202, 'Makita 9557B','Mala kutna brusilica ,oznaka B2','ispravno'),
    (1203, 'Milwaukee 6122-30','Velika kutna brusilica ,oznaka B3','servis'),
    (1204, 'Metabo W820-RT','Velika kutna brusilica ,oznaka B4','servis'),
    (1205, 'Metabo W820-RT','Velika kutna brusilica ,oznaka B5','ispravno'),
    (1206, 'Dewalt D28115','Mala kutna brusilica ,oznaka B6','ispravno'),
    (1207, 'Makita 9557B','Mala kutna brusilica ,oznaka B7','ispravno'),
    (1208, 'Hugong INVERMIG 500 III IGBT','Mig aparat za zavarivanje ,oznaka B8','ispravno'),
    (1209, 'Hugong INVERMIG 500 III IGBT','Mig aparat za zavarivanje ,oznaka B9','ispravno'),
    (1210, 'Hugong MIG 250','Mig aparat za zavarivanje ,oznaka B10','ispravno'),
    (1211, 'Hugong MIG 250','Mig aparat za zavarivanje ,oznaka B11','ispravno'),
    (1212, 'Hugong Extremig 180','Mig aparat za zavarivanje ,oznaka B12','servis'),
    (1213, 'Lincoln Electric V205T','Aparat za zavarivanje elektrodama ,oznaka B13','ispravno'),
    (1214, 'Lincoln Electric V205T','Aparat za zavarivanje elektrodama ,oznaka B14','ispravno'),
    (1215, 'Bosch GSB 2100 RE','Ručna bušilica ,oznaka B15','ispravno'),
    (1216, 'Bosch GSB 18V-150 C','Aku ručna bušilica ,oznaka B16','ispravno'),
    (1217, 'Bosch GSB 570','Ručna bušilica ,oznaka B17','servis'),
	(1218, 'Hilti TE 30-A36', 'Akumulatorski čekić za bušenje, oznaka B18', 'ispravno'),
    (1219, 'DeWalt DWE4887N', 'Ručni brusni alat za obradu metala, oznaka B19', 'servis'),
    (1220, 'Bosch GWS 22-230 JH', 'Velika kutna brusilica, oznaka B20', 'ispravno'),
    (1221, 'Makita GA4034', 'Mala kutna brusilica za obradu metala, oznaka B21', 'ispravno'),
    (1222, 'Metabo WEV 15-125', 'Mala kutna brusilica za obradu metala, oznaka B22', 'ispravno'),
    (1223, 'Bosch GWS 18V-10 C', 'Aku kutna brusilica za obradu metala, oznaka B23', 'servis'),
    (1224, 'Hilti DCG 230-D', 'Velika kutna brusilica za obradu metala, oznaka B24', 'ispravno'),
    (1225, 'DeWalt DWE4559N', 'Mala kutna brusilica za rezanje metala, oznaka B25', 'ispravno'),
    (1226, 'Hugong INVERMIG 500 III IGBT', 'Mig aparat za zavarivanje, oznaka B26', 'ispravno'),
    (1227, 'Hugong INVERMIG 500 III IGBT', 'Mig aparat za zavarivanje, oznaka B27', 'ispravno'),
    (1228, 'Hugong MIG 250', 'Mig aparat za zavarivanje, oznaka B28', 'ispravno'),
    (1229, 'Hugong MIG 250', 'Mig aparat za zavarivanje, oznaka B29', 'ispravno'),
    (1230, 'Hugong Extremig 180', 'Mig aparat za zavarivanje, oznaka B30', 'servis'),
    (1231, 'Lincoln Electric V205T', 'Aparat za zavarivanje elektrodama, oznaka B31', 'ispravno'),
    (1232, 'Lincoln Electric V205T', 'Aparat za zavarivanje elektrodama, oznaka B32', 'ispravno'),
    (1233, 'Bosch GSB 2100 RE', 'Ručna bušilica, oznaka B33', 'ispravno'),
    (1234, 'Bosch GSB 18V-150 C', 'Aku ručna bušilica, oznaka B34', 'ispravno'),
    (1235, 'Bosch GSB 570', 'Ručna bušilica, oznaka B35', 'servis'),
    (1236, 'Hugong INVERMIG 500 III IGBT', 'Mig aparat za zavarivanje, oznaka B36', 'ispravno'),
    (1237, 'Hugong INVERMIG 500 III IGBT', 'Mig aparat za zavarivanje, oznaka B37', 'ispravno'),
    (1238, 'Hugong MIG 250', 'Mig aparat za zavarivanje, oznaka B38', 'ispravno'),
    (1239, 'Hugong MIG 250', 'Mig aparat za zavarivanje, oznaka B39', 'ispravno'),
    (1240, 'Hugong Extremig 180', 'Mig aparat za zavarivanje, oznaka B40', 'servis'),
    (1241, 'Lincoln Electric V205T', 'Aparat za zavarivanje elektrodama, oznaka B41', 'ispravno'),
    (1242, 'Lincoln Electric V205T', 'Aparat za zavarivanje elektrodama, oznaka B42', 'ispravno'),
    (1243, 'Bosch GSB 2100 RE', 'Ručna bušilica, oznaka B43', 'ispravno'),
    (1244, 'Bosch GSB 18V-150 C', 'Aku ručna bušilica, oznaka B44', 'ispravno'),
    (1245, 'Bosch GSB 570', 'Ručna bušilica, oznaka B45', 'servis'),
    (1246, 'Hugong INVERMIG 500 III IGBT', 'Mig aparat za zavarivanje, oznaka B46', 'ispravno'),
    (1247, 'Hugong INVERMIG 500 III IGBT', 'Mig aparat za zavarivanje, oznaka B47', 'ispravno'),
    (1248, 'Hugong MIG 250', 'Mig aparat za zavarivanje, oznaka B48', 'ispravno'),
    (1249, 'Hugong MIG 250', 'Mig aparat za zavarivanje, oznaka B49', 'ispravno'),
    (1250, 'Hugong Extremig 180', 'Mig aparat za zavarivanje, oznaka B50', 'servis'),
    (1251, 'Lincoln Electric V205T', 'Aparat za zavarivanje elektrodama, oznaka B51', 'ispravno'),
    (1252, 'Lincoln Electric V205T', 'Aparat za zavarivanje elektrodama, oznaka B52', 'ispravno'),
    (1253, 'Bosch GSB 2100 RE', 'Ručna bušilica, oznaka B53', 'ispravno');
    
CREATE TABLE lager_materijala (
id INTEGER PRIMARY KEY,
id_materijal INTEGER NOT NULL,
FOREIGN KEY (id_materijal) REFERENCES materijal (id),
kolicina INTEGER NOT NULL
);

INSERT INTO lager_materijala VALUES
	(1301, 604, 10),
    (1302, 605, 7),
    (1303, 606, 22),
    (1304, 607, 11),
    (1305, 608, 4),
    (1306, 611, 7),
	(1307, 608, 9),
    (1308, 604, 15),
    (1309, 605, 10),
    (1310, 606, 25),
    (1311, 607, 13),
    (1312, 608, 6),
    (1313, 609, 8),
    (1314, 610, 17),
    (1315, 611, 12),
    (1316, 612, 5),
    (1317, 613, 9),
    (1318, 614, 11),
    (1319, 615, 16),
    (1320, 616, 7),
    (1321, 617, 14),
    (1322, 618, 19),
    (1323, 619, 8),
    (1324, 620, 23),
    (1325, 621, 10),
    (1326, 622, 18),
    (1327, 623, 6),
    (1328, 624, 12),
    (1329, 625, 15),
    (1330, 626, 9);
    
CREATE TABLE isporuka (
id INTEGER PRIMARY KEY,
id_segment INTEGER NOT NULL,
FOREIGN KEY (id_segment) REFERENCES segment (id),
kolicina INTEGER NOT NULL,
id_zaposlenik INTEGER NOT NULL,
FOREIGN KEY (id_zaposlenik) REFERENCES zaposlenik (id),
registarske_oznake VARCHAR(50),
datum_ukrcaja DATE
);

INSERT INTO isporuka VALUES
	(1401, 301, 2, 106, 'ZG-3232-B', '2024-02-13'),
    (1402, 302, 1, 106, 'ZG-3232-B', '2024-02-13'),
    (1403, 303, 1, 106, 'ZG-3232-B', '2024-02-13'),
    (1404, 303, 1, 107, 'PU-3232-B', '2024-02-18'),
    (1405, 304, 2, 107, 'VŽ-5555-A', '2024-02-19'),
    (1406, 305, 1, 107, 'RI-5555-A', '2024-02-20'),
    (1407, 306, 4, 109, 'PU-5566-C', '2024-02-21'),
    (1408, 307, 2, 109, 'VŽ-7777-B', '2024-02-22'),
    (1409, 308, 3, 109, 'RI-7777-B', '2024-02-23'),
    (1410, 309, 1, 111, 'PU-5566-C', '2024-02-24'),
    (1411, 310, 2, 111, 'VŽ-9999-C', '2024-02-25'),
    (1412, 311, 3, 111, 'RI-9999-C', '2024-02-26'),
    (1413, 312, 1, 113, 'PU-8888-D', '2024-02-27'),
    (1414, 313, 2, 113, 'VŽ-8888-D', '2024-02-28'),
    (1415, 314, 1, 113, 'RI-8888-D', '2024-02-29'),
    (1416, 315, 3, 106, 'PU-3232-B', '2024-03-01'),
    (1417, 316, 2, 106, 'VŽ-3232-B', '2024-03-02'),
    (1418, 317, 1, 106, 'RI-3232-B', '2024-03-03'),
    (1419, 318, 4, 108, 'PU-5566-C', '2024-03-04'),
    (1420, 319, 2, 108, 'VŽ-5566-C', '2024-03-05'),
    (1421, 320, 3, 108, 'RI-5566-C', '2024-03-06'),
    (1422, 321, 1, 110, 'PU-7890-A', '2024-03-07'),
    (1423, 322, 2, 110, 'VŽ-7890-A', '2024-03-08'),
    (1424, 323, 1, 110, 'RI-7890-A', '2024-03-09'),
    (1425, 324, 2, 112, 'PU-1234-D', '2024-03-10'),
    (1426, 325, 3, 112, 'VŽ-1234-D', '2024-03-11'),
    (1427, 326, 1, 112, 'RI-1234-D', '2024-03-12'),
    (1428, 327, 2, 106, 'PU-3232-B', '2024-03-13'),
    (1429, 328, 1, 106, 'VŽ-3232-B', '2024-03-14'),
    (1430, 329, 3, 106, 'RI-3232-B', '2024-03-15'),
    (1431, 330, 4, 107, 'PU-5566-C', '2024-03-16'),
    (1432, 331, 2, 107, 'VŽ-5555-A', '2024-03-17'),
    (1433, 332, 1, 107, 'RI-5555-A', '2024-03-18'),
    (1434, 333, 2, 108, 'ZG-5566-C', '2024-03-19'),
    (1435, 334, 1, 108, 'ZG-7890-A', '2024-03-20'),
    (1436, 335, 3, 108, 'ZG-1234-D', '2024-03-21'),
    (1437, 336, 4, 109, 'ZG-3232-B', '2024-03-22'),
    (1438, 337, 2, 109, 'ZG-7777-B', '2024-03-23'),
    (1439, 338, 1, 109, 'ZG-9999-C', '2024-03-24'),
    (1440, 339, 3, 111, 'ZG-8888-D', '2024-03-25');


CREATE TABLE zaduzenje_alata (
id INTEGER PRIMARY KEY,
id_zaposlenik INTEGER NOT NULL,
FOREIGN KEY (id_zaposlenik) REFERENCES zaposlenik (id),
id_alat INTEGER NOT NULL,
FOREIGN KEY (id_alat) REFERENCES alat (id),
datum_zapisa DATE NOT NULL,
napomena VARCHAR(9) NOT NULL
);

INSERT INTO zaduzenje_alata VALUES
	(1501, 111, 1210, '2024-01-11', 'zaduzeno'),
    (1502, 106, 1212, '2024-01-09', 'zaduzeno'),
    (1503, 107, 1208, '2024-01-15', 'zaduzeno'),
    (1504, 109, 1213, '2024-01-18', 'zaduzeno'),
    (1505, 111, 1210, '2024-01-25', 'razduzeno'),
    (1506, 106, 1212, '2024-02-02', 'razduzeno'),
    (1507, 107, 1208, '2024-02-05', 'razduzeno'),
    (1508, 108, 1215, '2024-02-08', 'zaduzeno'),
    (1509, 110, 1216, '2024-02-12', 'zaduzeno'),
    (1510, 111, 1211, '2024-02-15', 'zaduzeno'),
    (1511, 112, 1213, '2024-02-18', 'zaduzeno'),
    (1512, 112, 1213, '2024-02-22', 'razduzeno'),
    (1513, 106, 1208, '2024-02-25', 'zaduzeno'),
    (1514, 107, 1210, '2024-02-28', 'zaduzeno'),
    (1515, 106, 1208, '2024-03-03', 'razduzeno');





# Upiti:

# Upit 1:
SELECT 
    CASE 
        WHEN kratki_opis LIKE '%Mala kutna brusilica%' THEN 'Mala kutna brusilica'
        WHEN kratki_opis LIKE '%Velika kutna brusilica%' THEN 'Velika kutna brusilica'
    END AS tip_brusilice,
    COUNT(*) AS broj_komada
FROM 
    alat
WHERE 
    kratki_opis LIKE '%Mala kutna brusilica%' AND status_alata = 'ispravno'
    OR kratki_opis LIKE '%Velika kutna brusilica%' AND status_alata = 'ispravno'
GROUP BY 
    tip_brusilice;


# Upit 2:
SELECT id, ime, prezime, cijena_po_satu, cijena_po_satu + 0.6 AS nova_cijena_po_satu 
FROM zaposlenik;


# Upit 3:
SELECT p.naziv_projekta, p.rok_izrade, u.kolicina, m.naziv_materijala, m.opis, m.napomena
FROM utrosak_materijala AS u
JOIN projekt AS p ON p.id = u.id_projekt
JOIN materijal AS m ON u.id_materijal = m.id
WHERE p.rok_izrade <= '2024-12-31';


# Upit 4:
SELECT naziv_alata, kratki_opis
FROM alat 
WHERE status_alata = 'servis';


# Upit 5:
SELECT u.kolicina, u.datum_ukrcaja, u.registarske_oznake, s.naziv_segmenta
FROM isporuka AS u
JOIN segment AS s ON u.id_segment = s.id
WHERE u.registarske_oznake = 'PU-5566-C';


# Upit 6:
SELECT k.naziv_klijenta, p.naziv_projekta, COUNT(s.id) AS broj_segmenata
FROM klijent k
JOIN projekt AS p ON k.id = p.id_klijent
JOIN segment AS s ON p.id = s.id_projekt
GROUP BY k.naziv_klijenta, p.naziv_projekta;


# Upit 7:
SELECT p.id AS id_projekta, p.naziv_projekta, p.rok_izrade, k.naziv_klijenta, k.odgovorna_osoba
FROM projekt AS p
JOIN klijent AS k ON p.id_klijent = k.id
WHERE p.rok_izrade BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);


# Upit 8:
SELECT klijent.naziv_klijenta, projekt.naziv_projekta, SUM(materijal.cijena_po_komadu * utrosak_materijala.kolicina) AS ukupno_trosak_materijala
FROM projekt
JOIN utrosak_materijala ON projekt.id = utrosak_materijala.id_projekt
JOIN materijal ON utrosak_materijala.id_materijal = materijal.id
JOIN klijent ON projekt.id_klijent = klijent.id
GROUP BY projekt.id;


# Upit 9:
SELECT DISTINCT k.naziv_klijenta, p.naziv_projekta, s.naziv_segmenta, s.kolicina, p.rok_izrade
FROM projekt AS p
JOIN segment AS s ON p.id = s.id_projekt
JOIN proizvodnja AS pr ON pr.id_segment = s.id
JOIN klijent AS k ON k.id = p.id_klijent
WHERE p.rok_izrade < CURDATE() AND pr.status_proizvodnje = 'u izradi';


# Upit 10:
SELECT materijal.naziv_materijala, SUM(lager_materijala.kolicina) AS ukupna_kolicina, materijal.napomena
FROM materijal
JOIN lager_materijala ON materijal.id = lager_materijala.id_materijal
GROUP BY materijal.id;


# Upit 11:
SELECT p.naziv_projekta, SUM(us.utrosak_sati * z.cijena_po_satu) AS ukupni_trosak_rada
FROM projekt AS p
JOIN segment AS s ON p.id = s.id_projekt
JOIN proizvodnja AS pr ON s.id = pr.id_segment
JOIN utrosak_sati AS us ON pr.id = us.id_proizvodnja
JOIN zaposlenik AS z ON us.id_zaposlenik = z.id
GROUP BY p.naziv_projekta
ORDER BY ukupni_trosak_rada DESC;


# Upit 12:
SELECT s.naziv_segmenta, m.naziv_materijala, SUM(um.kolicina) AS ukupno_koristeno
FROM segment AS s
JOIN utrosak_materijala AS um ON s.id_projekt = um.id_projekt
JOIN materijal AS m ON um.id_materijal = m.id
GROUP BY s.naziv_segmenta, m.naziv_materijala
ORDER BY ukupno_koristeno DESC;


# Upit 13:
SELECT a.naziv_alata, COUNT(za.id) AS broj_zaduzenja
FROM alat AS a
JOIN zaduzenje_alata AS za ON a.id = za.id_alat
GROUP BY a.naziv_alata
ORDER BY broj_zaduzenja DESC;


# Upit 14:
SELECT p.naziv_projekta, pr.status_proizvodnje
FROM projekt AS p
JOIN segment AS s ON p.id = s.id_projekt
JOIN proizvodnja AS pr ON s.id = pr.id_segment
GROUP BY p.naziv_projekta, pr.status_proizvodnje
ORDER BY p.naziv_projekta, pr.status_proizvodnje;


# Upit 15:
SELECT z.ime, z.prezime, a.naziv_alata, COUNT(za.id) AS broj_zaduzenja
FROM zaposlenik AS z	
JOIN zaduzenje_alata AS za ON z.id = za.id_zaposlenik
JOIN alat AS a ON za.id_alat = a.id
GROUP BY z.ime, z.prezime, a.naziv_alata
ORDER BY z.prezime, z.ime, broj_zaduzenja DESC;


# Upit 16:
SELECT p.naziv_projekta, COUNT(DISTINCT us.id_zaposlenik) AS broj_zaposlenika
FROM projekt AS p
JOIN segment AS s ON p.id = s.id_projekt
JOIN proizvodnja AS pr ON s.id = pr.id_segment
JOIN utrosak_sati AS us ON pr.id = us.id_proizvodnja
GROUP BY p.naziv_projekta
ORDER BY broj_zaposlenika DESC;








