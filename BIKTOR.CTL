LOAD DATA
INFILE 'BIKTOR.DAT' "FIX 172"
INSERT
INTO TABLE BIKTOR WHEN (1:1) = X'20'
(
	KLSZ_ POSITION(2:6) CHAR,
	FULSZAM_ POSITION(7:20) CHAR,
	NEV_ POSITION(21:58) CHAR,
	SZ_DAT_ POSITION(59:66) DATE "YYYYMMDD" NULLIF (SZ_DAT_ = BLANKS),
	HASZNOSIT_ POSITION(67:67) CHAR,
	ERKEZES_ POSITION(68:68) CHAR,
	SZARM_ORSZ_ POSITION(69:71) CHAR,
	EXP_ORSZ_ POSITION(72:74) CHAR,
	FAJTA1_ POSITION(75:76) CHAR,
	FAJTA2_ POSITION(77:78) CHAR,
	FAJTA3_ POSITION(79:80) CHAR,
	FAJTA4_ POSITION(81:82) CHAR,
	FAJTA5_ POSITION(83:84) CHAR,
	FAJTA_OSZ_ POSITION(85:87) CHAR,
	VERH1_ POSITION(88:93) CHAR,
	VERH2_ POSITION(94:99) CHAR,
	VERH3_ POSITION(100:105) CHAR,
	VERH4_ POSITION(106:111) CHAR,
	VERH5_ POSITION(112:117) CHAR,
	AP_KLSZ_ POSITION(118:122) CHAR,
	AN_FULSZAM_ POSITION(123:136) CHAR,
	ANAPA_KLSZ_ POSITION(137:141) CHAR,
	SZINKOD_ POSITION(142:142) CHAR,
	REDFAKTOR_ POSITION(143:143) CHAR,
	TENYESZTO_ POSITION(144:149) CHAR,
	TULAJ_ POSITION(150:155) CHAR,
	HELYE_ POSITION(156:161) CHAR,
	EL_E_ POSITION(162:162) CHAR,
	SP_VAN_ POSITION(163:163) CHAR,
	MOD_DATUM_ POSITION(164:171) DATE "YYYYMMDD" NULLIF (MOD_DATUM_ = BLANKS),
	ITVSTATUS_ POSITION(172:172) CHAR
)
