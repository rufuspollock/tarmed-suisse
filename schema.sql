-------------------------------------------------------------
-- MDB Tools - A library for reading MS Access database files
-- Copyright (C) 2000-2004 Brian Bruns
-- Files in libmdb are licensed under LGPL and the utilities under
-- the GPL, see COPYING.LIB and COPYING files respectively.
-- Check out http://mdbtools.sourceforge.net
-------------------------------------------------------------

DROP TABLE CT_ANAESTHESIE;
CREATE TABLE CT_ANAESTHESIE
 (
	CODE			Text (2), 
	SPRACHE			Text (2), 
	TEXT			Text (100), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_DIGNI_QUALI;
CREATE TABLE CT_DIGNI_QUALI
 (
	QL_DIGNITAET			Text (8), 
	SPRACHE			Text (2), 
	TEXT			Text (160), 
	ART			Text (2), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_DIGNI_QUANTI;
CREATE TABLE CT_DIGNI_QUANTI
 (
	QT_DIGNITAET			Text (10), 
	SPRACHE			Text (2), 
	TEXT			Text (510), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_LEISTUNG_BLOECKE;
CREATE TABLE CT_LEISTUNG_BLOECKE
 (
	CODE			Text (6), 
	SPRACHE			Text (2), 
	BLOCK			Text (510), 
	ZEIGEN			Text (2), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_LEISTUNG_GRUPPEN;
CREATE TABLE CT_LEISTUNG_GRUPPEN
 (
	CODE			Text (6), 
	SPRACHE			Text (2), 
	GRUPPE			Text (510), 
	ZEIGEN			Text (2), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_LEISTUNG_TYP;
CREATE TABLE CT_LEISTUNG_TYP
 (
	CODE			Text (2), 
	SPRACHE			Text (2), 
	TEXT			Text (510), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_REGEL_EL_ABR;
CREATE TABLE CT_REGEL_EL_ABR
 (
	CODE			Text (4), 
	SPRACHE			Text (2), 
	TEXT			Text (510), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_SEITE;
CREATE TABLE CT_SEITE
 (
	CODE			Text (2), 
	SPRACHE			Text (2), 
	TEXT			Text (450), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_SEX;
CREATE TABLE CT_SEX
 (
	CODE			Text (2), 
	SPRACHE			Text (2), 
	TEXT			Text (100), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_SPARTE;
CREATE TABLE CT_SPARTE
 (
	CODE			Text (8), 
	SPRACHE			Text (2), 
	TEXT			Text (160), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_SPRACHE;
CREATE TABLE CT_SPRACHE
 (
	CODE			Text (2), 
	TEXT			Text (100), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_ZR_EINHEIT;
CREATE TABLE CT_ZR_EINHEIT
 (
	CODE			Text (4), 
	SPRACHE			Text (2), 
	TEXT_EINZAHL			Text (100), 
	TEXT_MEHRZAHL			Text (100), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE KAPITEL_INTERPRETATION_TEXT;
CREATE TABLE KAPITEL_INTERPRETATION_TEXT
 (
	KNR			Text (28), 
	KAP_INTERPRET_NR			Long Integer, 
	SPRACHE			Text (2), 
	KAP_INTERPRET_TITEL			Text (510), 
	KAP_INTERPRET_TEXT			Memo/Hyperlink (255), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE KAPITEL_TEXT;
CREATE TABLE KAPITEL_TEXT
 (
	KNR			Text (28), 
	SPRACHE			Text (2), 
	BEZ_255			Text (510), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG;
CREATE TABLE LEISTUNG
 (
	LNR			Text (28), 
	KNR			Text (28), 
	LEISTUNG_TYP			Text (2), 
	SEITE			Text (2), 
	SEX			Text (2), 
	ANAESTHESIE			Text (2), 
	K_PFL			Text (4), 
	QT_DIGNITAET			Text (10), 
	BEHANDLUNGSART			Text (4), 
	SPARTE			Text (8), 
	TP_AL			Double, 
	TP_ASSI			Double, 
	TP_TL			Double, 
	ANZ_ASSI			Double, 
	LSTGIMES_MIN			Double, 
	VBNB_MIN			Double, 
	BEFUND_MIN			Double, 
	ZUSATZ_MIN			Double, 
	RAUM_MIN			Double, 
	WECHSEL_MIN			Double, 
	F_AL			Double, 
	F_TL			Double, 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_ALTER;
CREATE TABLE LEISTUNG_ALTER
 (
	LNR			Text (28), 
	VON_ALTER			Double, 
	VON_TOLERANZ			Double, 
	BIS_ALTER			Double, 
	BIS_TOLERANZ			Double, 
	ZR_EINHEIT			Text (4), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_BLOECKE;
CREATE TABLE LEISTUNG_BLOECKE
 (
	BLOCK			Text (6), 
	LNR			Text (28), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_DIGNIQUALI;
CREATE TABLE LEISTUNG_DIGNIQUALI
 (
	LNR			Text (28), 
	QL_DIGNITAET			Text (8), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_GRUPPEN;
CREATE TABLE LEISTUNG_GRUPPEN
 (
	GRUPPE			Text (6), 
	LNR			Text (28), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_KOMBINATION;
CREATE TABLE LEISTUNG_KOMBINATION
 (
	LNR_MASTER			Text (28), 
	LNR_SLAVE			Text (28), 
	NUMMER			Integer, 
	TYP			Text (6), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_KUMULATION;
CREATE TABLE LEISTUNG_KUMULATION
 (
	LNR_MASTER			Text (28), 
	ART_MASTER			Text (2), 
	LNR_SLAVE			Text (28), 
	ART_SLAVE			Text (2), 
	TYP			Text (2), 
	ANZEIGE			Text (2), 
	GUELTIG_SEITE			Text (2), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_MENGEN_ZEIT;
CREATE TABLE LEISTUNG_MENGEN_ZEIT
 (
	ART			Text (2), 
	LNR			Text (28), 
	OPERATOR			Text (4), 
	MENGE			Double, 
	ZR_ANZAHL			Integer, 
	PRO_NACH			Text (2), 
	ZR_EINHEIT			Text (4), 
	REGEL_EL_ABR			Text (4), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_TEXT;
CREATE TABLE LEISTUNG_TEXT
 (
	LNR			Text (28), 
	SPRACHE			Text (2), 
	BEZ_255			Text (510), 
	MED_INTERPRET			Memo/Hyperlink (255), 
	TECH_INTERPRET			Memo/Hyperlink (255), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE VERSION;
CREATE TABLE VERSION
 (
	VERSIONS_NR			Long Integer, 
	VERSIONS_NAMEN			Text (100), 
	ERSTELLT			DateTime (Short), 
	AUSGELIEFERT			DateTime (Short), 
	IN_PRODUKTION			Text (8), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE CT_PFLICHT;
CREATE TABLE CT_PFLICHT
 (
	CODE			Text (4), 
	SPRACHE			Text (2), 
	TEXT			Text (400), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE DIGNITAET_OBERBEGRIFFE;
CREATE TABLE DIGNITAET_OBERBEGRIFFE
 (
	QL_DIGNITAET_MASTER			Text (8), 
	QL_DIGNITAET_SLAVE			Text (8), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...

DROP TABLE LEISTUNG_HIERARCHIE;
CREATE TABLE LEISTUNG_HIERARCHIE
 (
	LNR_MASTER			Text (28), 
	LNR_SLAVE			Text (28), 
	GUELTIG_VON			DateTime (Short), 
	GUELTIG_BIS			DateTime (Short), 
	MUT_DAT			DateTime (Short)
);
-- CREATE ANY INDEXES ...



-- CREATE ANY Relationships ...

-- relationships are not supported for access
