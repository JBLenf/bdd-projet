drop database if exists locamatos;
create database locamatos;
use locamatos;
-- creation de la table CLIENT
create table CLIENT(
CodeClt varchar(3),
NomClt char(25) NOT NULL,
RueClt char(30) NOT NULL,
CPClt int(5) NOT NULL,
VilleClt char(25) NOT NULL,
constraint pk_client primary key(CodeClt)
);

-- creation de la table AGENCE
create table AGENCE(
NumeroAgence int(2),
NomAgence char(25) NOT NULL,
CPAgence int(5) NOT NULL,
VilleAgence char (25) NOT NULL,
constraint pk_agence primary key(NumeroAgence)
);

-- creation de la table MATERIEL
create table MATERIEL(
RefMat varchar(3),
DesignMat char(25) NOT NULL,
PrixHebdoMat int(6) NOT NULL,
constraint pk_materiel primary key(RefMat)
);

-- creation de la table CONTRAT
create table CONTRAT(
NumeroCont int(3),
NumeroAgence int(2),
DateCont date NOT NULL,
DureeCont int(2) NOT NULL,
CodeClt varchar(3) NOT NULL,
constraint pk_contrat primary key(NumeroCont, NumeroAgence),
constraint fk_contrat_numeroagence foreign key(NumeroAgence) references AGENCE(NumeroAgence)
);

-- creation de la table CONCERNER
create table CONCERNER(
NumeroAgence int(2),
NumeroCont int(3),
RefMat varchar(3),
QtMatLoue int(6) NOT NULL,
constraint pk_concerner primary key(NumeroAgence, NumeroCont,RefMat),
constraint fk_concerner_numeroagence foreign key(NumeroAgence) references AGENCE(NumeroAgence),
constraint fk_concerner_numerocont foreign key(NumeroCont) references CONTRAT(NumeroCont),
constraint fk_concerner_refmat foreign key(RefMat) references MATERIEL(RefMat)
);

-- creation de la table STOCKER
create table STOCKER(
NumeroAgence int(2),
RefMat varchar(3),
QtMatTotal int(6) NOT NULL,
constraint pk_stocker primary key(NumeroAgence, RefMat),
constraint fk_stocker_numeroagence foreign key(NumeroAgence) references AGENCE(NumeroAgence),
constraint fk_stocker_refmat foreign key(RefMat) references MATERIEL(RefMat)
);
