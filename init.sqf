[code]CHVD_maxView = 1500;//limitiert CHVD auf die maximale sichtweite 1500
setViewDistance = 1500 min viewDistance;//setzt die viewdistance auf maximal 1500

if (isServer) then
{
	/*
	stellt das loadout ein
	0 blufor
	1 opfor
	2 independent
	3 bw flecktarn
	4 bw tropentarn
	5 us marpat wood (default)
	6 us marpat desert
	*/
	CODI_Loadout_Faction = 4;//einheiten werden mit bw tropentarn ausger�stet
	CODI_Loadout_isSilenced = true;//einheiten werden mit schalld�mpfer ausger�stet   default: false
	CODI_Loadout_hasNV = true;//einheiten werden mit nachtsichtger�t ausger�stet   default: false
	CODI_Loadout_SupplyDrop = true;//einheiten k�nnen nachschub mit rauchgranaten anfordern   default: true
	CODI_Loadout_StartEquipped = true;//einheiten starten ausger�stet   default: false (freizeitkleidung)
	CODI_Loadout_cs = true;//freischalten die klasse ingame wechseln zuk�nnen   default: false
	CODI_Loadout_va = true;//freischalten das virtual arsenal nutzen zu k�nnen   default: false
	CODI_Loadout_ss = true;//freischalten die visiere ingame wechseln zu k�nnen   default: false
	publicVariable "CODI_Loadout_Faction";
	publicVariable "CODI_Loadout_isSilenced";
	publicVariable "CODI_Loadout_hasNV";
	publicVariable "CODI_Loadout_SupplyDrop";
	publicVariable "CODI_Loadout_StartEquipped";
	publicVariable "CODI_Loadout_cs";
	publicVariable "CODI_Loadout_va";
	publicVariable "CODI_Loadout_ss";
};[/code]

Ausr�stungskiste platzieren:
EMPTY >> AMMO >> 1st Ausr�stungskiste

Vanilla einheiten platzieren:
BLUFOR >> NATO >> Men
BLUFOR >> NATO >> Men (Support)
OPFOR >> CSAT >> Men
OPFOR >> CSAT >> Men (Support)
INDEPENDENT >> AAF >> Men
INDEPENDENT >> AAF >> Men (Support)

sind alle bis auf sehr wenige Ausnahmen implementiert
zus�tzliche Klassen sind verf�gbar (dazu folgendes in die initzeile der einheit schreiben):
definiert einheit als MMG:
this setVariable["CODI_Loadout_Class", "MMG"];
definiert einheit als HMG:
this setVariable["CODI_Loadout_Class", "HMG"];
definiert einheit als Assisting LMG:
this setVariable["CODI_Loadout_Class", "AsLMG"];
definiert einheit als Assisting MMG:
this setVariable["CODI_Loadout_Class", "AsMMG"];
definiert einheit als Assisting HMG:
this setVariable["CODI_Loadout_Class", "AsHMG"];
definiert einheit als ForwardAirController/JTAC:
this setVariable["CODI_Loadout_Class", "FAC"];
definiert einheit als Medic:
this setVariable["CODI_Loadout_Class", "Medic"];

B_Soldier_A_F, B_Competitor_F und B_RangeMaster_F sind nicht implementiert