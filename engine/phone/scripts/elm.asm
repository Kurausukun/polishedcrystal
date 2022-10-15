ElmPhoneScript1:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftruefwd .discovery
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalsefwd .next
	checkevent EVENT_TOGEPI_HATCHED
	iftruefwd .egghatched
.next
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftruefwd .eggunhatched
	checkevent EVENT_ELMS_AIDE_IN_LAB
	iftruefwd .assistant
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftruefwd .checkingegg
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftruefwd .stolen
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftruefwd .sawmrpokemon
	farwritetext ElmPhoneStartText
	end

.sawmrpokemon
	farwritetext ElmPhoneSawMrPokemonText
	end

.stolen
	farwritetext ElmPhonePokemonStolenText
	end

.checkingegg
	farwritetext ElmPhoneCheckingEggText
	end

.assistant
	farwritetext ElmPhoneAssistantText
	end

.eggunhatched
	farwritetext ElmPhoneEggUnhatchedText
	end

.egghatched
	farwritetext ElmPhoneEggHatchedText
	setevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	end

.discovery
	random $2
	ifequalfwd $0, .nextdiscovery
	farwritetext ElmPhoneDiscovery1Text
	end

.nextdiscovery
	farwritetext ElmPhoneDiscovery2Text
	end

.pokerus
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

ElmPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_ROBBED, .disaster
	ifequalfwd SPECIALCALL_ASSISTANT, .assistant
	ifequalfwd SPECIALCALL_WEIRDBROADCAST, .rocket
	ifequalfwd SPECIALCALL_SSTICKET, .gift
	ifequalfwd SPECIALCALL_MASTERBALL, .gift
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

.disaster
	farwritetext ElmPhoneDisasterText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	end

.assistant
	farwritetext ElmPhoneEggAssistantText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
	setevent EVENT_ELMS_AIDE_IN_LAB
	end

.rocket
	farwritetext ElmPhoneRocketText
	specialphonecall SPECIALCALL_NONE
	end

.gift
	farwritetext ElmPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end
