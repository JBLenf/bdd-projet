use locamatos;
-- On efface le contenu des tables en commencant par celles AYANT des clés étangeres.
delete from CONCERNER;
delete from STOCKER;
delete from CONTRAT;
delete from MATERIEL;
delete from AGENCE;
delete from CLIENT;

-- On remplit les tables en commençant par celles n'ayant PAS de clés étrangères.
-- Table CLIENT
insert into CLIENT values('A01', 'DUPONT', '5 rue MONGE', 75005, 'PARIS');
insert into CLIENT values('A25', 'DURAND', '3 rue BELLEVILLE', 75020, 'PARIS');
insert into CLIENT values('B03', 'DUPONT', '6 rue DU REGARD', 75006, 'PARIS');

-- Table AGENCE
insert into AGENCE values(01, 'PARIS CENTRE', 75001, 'PARIS');
insert into AGENCE values(02, 'PARIS', 75012, 'PARIS');
insert into AGENCE values(03, 'CLICHY', 92110, 'PARIS');

-- Table MATERIEL
insert into MATERIEL values('X01', 'AMPLI', 200);
insert into MATERIEL values('X02', 'MAGNETOSCOPE', 300);
insert into MATERIEL values('X03', 'TELE', 150);
insert into MATERIEL values('X04', 'HAUT PARLEUR', 50);
insert into MATERIEL values('X05', 'DISQUE LASER', 200);
insert into MATERIEL values('X06', 'TELE', 250);

-- Table CONTRAT
insert into CONTRAT values(201, 01, '1988/02/15', 4, 'A01');
insert into CONTRAT values(201, 02, '1988/02/16', 2, 'A25');
insert into CONTRAT values(302, 02, '1988/02/16', 2, 'A01');

-- Table CONCERNER
insert into CONCERNER values(01, 201, 'X06', 1);
insert into CONCERNER values(01, 201, 'X02', 1);
insert into CONCERNER values(02, 201, 'X01', 1);
insert into CONCERNER values(02, 201, 'X04', 2);
insert into CONCERNER values(02, 302, 'X03', 1);

-- Table STOCKER
insert into STOCKER values(01, 'X01', 21);
insert into STOCKER values(01, 'X02', 41);
insert into STOCKER values(01, 'X03', 40);
insert into STOCKER values(01, 'X04', 52);
insert into STOCKER values(01, 'X05', 10);
insert into STOCKER values(01, 'X06', 1);
insert into STOCKER values(02, 'X01', 40);
insert into STOCKER values(02, 'X04', 50);
insert into STOCKER values(02, 'X03', 1);
