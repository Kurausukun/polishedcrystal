if DEF(FAITHFUL)
	db 140,  70,  45,  45,  85,  50 ; 435 BST
	;   hp  atk  def  spe  sat  sdf
else
	db 148,  70,  55,  45,  85,  65 ; 468 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db NORMAL, FAIRY ; type
	db 50 ; catch rate
if DEF(FAITHFUL)
	db 109 ; base exp
else
	db 129 ; base exp
endc
	db ORAN_BERRY, ORAN_BERRY ; held items
	dn GENDER_F75, HATCH_FASTER ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for WIGGLYTUFF, CUTE_CHARM, COMPETITIVE, FRISK
else
	abilities_for WIGGLYTUFF, CUTE_CHARM, COMPETITIVE, SOUNDPROOF
endc
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield 3 HP

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, SOLAR_BEAM, THUNDERBOLT, THUNDER, RETURN, DIG, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FLAMETHROWER, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, FOCUS_BLAST, WILD_CHARGE, DRAIN_PUNCH, WATER_PULSE, GIGA_IMPACT, FLASH, THUNDER_WAVE, GYRO_BALL, STRENGTH, BATON_PASS, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ICY_WIND, KNOCK_OFF, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
