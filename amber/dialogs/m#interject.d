//Amber's Interjections and romance conflicts (even that some of those are banters and interactions with the PC) go here. This file appends M#AMBERJ and occasionally M#AMBERN. 
// CONTENTS:
// Crazy Celvan
// Nalia's Quest
// Lady Delcia
// Lord Firkrag's offer
// Aran Linval
// Raelis
// Belmin
// Patricia of Seven Vales
// Madame Nin
// Fortuneteller
// Baron Ployer
// Wellyn and the teddy bear
// Poisoned Harper
// Windspear Hills Dryads
// Haer'Dalis under the spell 
// Arriving Brynnlaw
// Mad Imoen
// Rescuing Imoen in Brynnlaw
// Salvanas
// Upon taking drow appearance
// Ust Natha pit fights 
// Killing the deep gnomes
// Ordered to Kill Sola
// Slayer changes in Spellhold
// Bodhi abduction: Graveyard
// Bodhi abduction: Oghma temple info
// Bodhi abduction: Bodhi's chambers
// Bodhi abduction: Elhan & War Sage
// Tree of Life
// Hell
// Phaere Innuendo
// Slavers & slave
// Romance conflicts
// Minor interjections commoners, peasants etc.

// Crazy Celvan
CHAIN
IF WEIGHT #-1 ~See("M#Amber")
    InParty("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    RandomNum(2,1)
    Global("M#CelvanAmber","AR0300",0)~ THEN CELVAN M#CelvanAmber
@2000 /* @2000 = ~"There once was a girl, kind and sweet
Wanted but good for all she'd meet.
But the blood in her veins
Never spared them from pains;
Will all her dreams end in defeat?"~ */
DO ~SetGlobal("M#CelvanAmber","AR0300",1)~
== M#AMBERJ
@2001 /* @2001 = ~How can you presume to know anything of me, fool?~ */
== CELVAN
@2002 /* @2002 = ~Tee-hee hee!~ */
DO ~RunAwayFrom([PC],300)~
EXIT

// Nalia's Quest
I_C_T NALIA 13 M#AmberNaliaKeepQuest 
 == M#AMBERJ IF ~InParty("M#Amber")
  		 See("M#Amber")
  		 !StateCheck("M#Amber",STATE_SLEEPING)
  		 !StateCheck("M#Amber",STATE_HELPLESS)
  		 !StateCheck("M#Amber",STATE_STUNNED)
  		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2003 /* @2003 = ~I think it's good that we should help her, but I would rather not get mixed in the quarrels of the noble folk. We are no better than cattle to them.~ */
END

I_C_T NALIA 43 M#AmberNaliaKeepQuest 
 == M#AMBERJ IF ~InParty("M#Amber")
  		 See("M#Amber")
  		 !StateCheck("M#Amber",STATE_SLEEPING)
  		 !StateCheck("M#Amber",STATE_HELPLESS)
  		 !StateCheck("M#Amber",STATE_STUNNED)
  		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2003 /* @2003 = ~I think it's good that we should help her, but I would rather not get mixed in the quarrels of the noble folk. We are no better than cattle to them.~ */
END

// Lady Delcia 
EXTEND_BOTTOM DELCIA 16 
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~SetGlobal("DelceaMove","GLOBAL",1)
							 ActionOverride("kpsold01",EscapeArea())
							 SetGlobal("DelciaLeave","GLOBAL",1)
							 EscapeAreaMove("AR1300",768,3310,8)~ 
						     JOURNAL #7262 
						     EXTERN M#AMBERJ M#AmberDelcia
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#AmberDelcia
		SAY @2004 /* @2004 = ~Her niece seems nice enough, even if she's a bit naïve, but this lady certainly gets on my nerves.~ */ 
		IF ~~ THEN EXIT
		IF ~IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ 187
		IF ~!IsValidForPartyDialog("Mazzy")
		    IsValidForPartyDialog("Viconia")~ THEN EXTERN VICONIJ 169
		IF ~!IsValidForPartyDialog("Mazzy")
		    !IsValidForPartyDialog("Viconia")
		    IsValidForPartyDialog("Korgan")~ THEN EXTERN KORGANJ 169
		IF ~!IsValidForPartyDialog("Mazzy")
		    !IsValidForPartyDialog("Viconia")
		    !IsValidForPartyDialog("Korgan")
		    IsValidForPartyDialog("Yoshimo")~ THEN EXTERN YOSHJ 96
	END
END

// Lord Firkrag's offer

EXTEND_BOTTOM FIRKRA01 9 
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~RevealAreaOnMap("AR1200")
							 EscapeArea()~ 
						     JOURNAL #11821 
						     EXTERN M#AMBERJ M#AmberFirkrag
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#AmberFirkrag
		SAY @2005 /* @2005 = ~I'll wager there is more to this than we bargained for... At least this should prove interesting, judging from all the gold that noble is willing to pay us to take the bait.~ */ 
		IF ~~ THEN EXIT
		IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN MINSCJ 96
		IF ~!IsValidForPartyDialog("Minsc")
		    IsValidForPartyDialog("Yoshimo")~ THEN EXTERN YOSHJ 42
		IF ~!IsValidForPartyDialog("Minsc")
		    !IsValidForPartyDialog("Yoshimo")
		    IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ 356
	END
END

// Aran Linval
EXTEND_BOTTOM ARAN 49
	IF ~InParty("M#Amber")
  	    See("M#Amber")
  	    !StateCheck("M#Amber",STATE_SLEEPING)
  	    !StateCheck("M#Amber",STATE_HELPLESS)
  	    !StateCheck("M#Amber",STATE_STUNNED)
  	    !StateCheck("M#Amber",STATE_SILENCED)~ THEN EXTERN M#AMBERJ AmberAran1
END

EXTEND_BOTTOM ARAN 51
	IF ~InParty("M#Amber")
  	    See("M#Amber")
  	    !StateCheck("M#Amber",STATE_SLEEPING)
  	    !StateCheck("M#Amber",STATE_HELPLESS)
  	    !StateCheck("M#Amber",STATE_STUNNED) 
  	    !StateCheck("M#Amber",STATE_SILENCED)~ THEN EXTERN M#AMBERJ AmberAran2
END

EXTEND_BOTTOM ARAN 4
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~SetGlobal("AranJob","GLOBAL",1)
							 SetGlobal("RefusedAran","GLOBAL",0)
							 GiveItemCreate("RING07",LastTalkedToBy,0,0,0)
							 GiveItemCreate("AMUL21",LastTalkedToBy,0,0,0)~ 
						     JOURNAL #47783 
						     EXTERN M#AMBERJ M#AmberAran3
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#AmberAran3
		SAY @2006 /* @2006 = ~<CHARNAME>, I've dealt with thieves' guilds before. Not in this city, but I don't think that the rules they play by are any different here than in the north. Should you cross them, you can consider yourself a dead man.~ */
		=
		@2007 /* @2007 = ~Or at least you'd better make *them* consider you a dead man, and never show your face anywhere near this city again.~ */
		IF ~~ THEN EXIT
		IF ~IsValidForPartyDialogue("YOSHIMO")~ THEN EXTERN YOSHJ 97
		IF ~IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("YOSHIMO")~ THEN EXTERN JAHEIRAJ 514
		IF ~!IsValidForPartyDialogue("YOSHIMO")
		    IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN KELDORJ 246
		IF ~IsValidForPartyDialogue("NALIA")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")~ THEN EXTERN NALIAJ 311
		IF ~IsValidForPartyDialogue("CERND")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")
		    !IsValidForPartyDialogue("NALIA")~ THEN EXTERN CERNDJ 134
		IF ~IsValidForPartyDialogue("MAZZY")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")
		    !IsValidForPartyDialogue("NALIA")
		    !IsValidForPartyDialogue("CERND")~ THEN EXTERN MAZZYJ 197
		IF ~IsValidForPartyDialogue("AERIE")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")
		    !IsValidForPartyDialogue("NALIA")
		    !IsValidForPartyDialogue("CERND")
		    !IsValidForPartyDialogue("MAZZY")~ THEN EXTERN AERIEJ 183
	END
END

I_C_T ARAN 20 M#AmberAran4 
 == M#AMBERJ IF ~InParty("M#Amber")
  		 See("M#Amber")
  		 !StateCheck("M#Amber",STATE_SLEEPING)
  		 !StateCheck("M#Amber",STATE_HELPLESS)
  		 !StateCheck("M#Amber",STATE_STUNNED)
  		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2008 /* @2008 = ~In case you didn't figure it out yourself, I'd say that there is no coming back unless we make sure that things turn hostile. These people don't take kindly to traitors.~ */
 =
 @2009 /* @2009 = ~I wonder whether he's just out of assassins, or whether he simply wishes to keep his own hands clean by using outsiders like us?~ */
END

EXTEND_BOTTOM ARAN 40
	IF ~InParty("M#Amber")
  	    See("M#Amber")
  	    !StateCheck("M#Amber",STATE_SLEEPING)
  	    !StateCheck("M#Amber",STATE_HELPLESS)
  	    !StateCheck("M#Amber",STATE_STUNNED) 
  	    !StateCheck("M#Amber",STATE_SILENCED)~ THEN EXTERN M#AMBERJ AmberAran5
END

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberAran1
    SAY @2010 /* @2010 = ~'Good use'? Had you made that 'profitable use', I would have no trouble believing you, but somehow I doubt that anything good can come out of your use of our gold.~ */
    IF ~~ THEN EXTERN ARAN 50
  END

  IF ~~ THEN BEGIN AmberAran2
    SAY @2011 /* @2011 = ~Charity is an unlikely trait in a Shadowmaster. I expect we will end up paying dearly for these trinkets. With our blood, if with nothing else.~ */
    IF ~~ THEN EXTERN ARAN 52
  END
  
  IF ~~ THEN BEGIN AmberAran5
    SAY @2012 /* @2012 = ~Sounds like a place I would rather not see from the inside. But on the other hand, chickening out now would mean missing one hell of an adventure.~ */
    IF ~~ THEN EXTERN ARAN 41
  END
END

// Raelis
EXTEND_BOTTOM RAELIS 36
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~SetGlobal("PlayOver","AR0510",1)
					 		 SetHomeLocation([1317.246])
							 MoveToPointNoInterrupt([1317.246])~ 
						     JOURNAL #46842 
						     EXTERN M#AMBERJ M#AmberRaelis1
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#AmberRaelis1
		SAY @2013 /* @2013 = ~<CHARNAME>, I hope that you find the time to speak to that woman.~ */ 
		IF ~~ THEN EXIT
	END
END

I_C_T RAELIS 53 M#AmberRaelis2 
 == M#AMBERJ IF ~InParty("M#Amber")
  		 See("M#Amber")
  		 !StateCheck("M#Amber",STATE_SLEEPING)
  		 !StateCheck("M#Amber",STATE_HELPLESS)
  		 !StateCheck("M#Amber",STATE_STUNNED)
  		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2014 /* @2014 = ~I'm happy that you agreed to help them, <CHARNAME>. I hope that I will have a chance to talk with this Raelis again when we have found her lost actor. I have a lot of questions to ask her.~ */
END

I_C_T RAELIS 52 M#AmberRaelis3 
 == M#AMBERJ IF ~InParty("M#Amber")
  		 See("M#Amber")
  		 !StateCheck("M#Amber",STATE_SLEEPING)
  		 !StateCheck("M#Amber",STATE_HELPLESS)
  		 !StateCheck("M#Amber",STATE_STUNNED)
  		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2015 /* @2015 = ~No, <CHARNAME>, I think we should try to help them. Mutual kindness may not be the norm among tieflings, but I'd like to prove myself different.~ */
END

// Belmin
APPEND BELMIN
  IF WEIGHT #-1 ~RandomNum(2,1)
      !Global("M#AmberBelmin","GLOBAL",1)
      InParty("M#Amber")
      See("M#Amber")
      !StateCheck("M#Amber",STATE_SLEEPING)
      !StateCheck("M#Amber",STATE_HELPLESS)
      !StateCheck("M#Amber",STATE_STUNNED)
      !StateCheck("M#Amber",STATE_SILENCED)~ THEN BEGIN M#AmberBelminBegin
  SAY @2016 /* @2016 = ~You! Yes, you, vile brown-skinned elf! How dare you walk among us with your head held high!~ */
      IF ~~ THEN DO ~SetGlobal("M#AmberBelmin","GLOBAL",1)~ EXTERN M#AMBERJ AmberBelminA
  END
  
  IF ~~ THEN BEGIN M#AmberBelminB
    SAY @2017 /* @2017 = ~A vile abomination! An elf with the eyes of a beast!~ */
    IF ~~ THEN EXTERN M#AMBERJ AmberBelminC
  END
  
  IF ~~ THEN BEGIN M#AmberBelminD
      SAY @2018 /* @2018 = ~Lies! Swallow your pride, elf, and admit that you are a malicious creature of evil!~ */
      IF ~~ THEN EXTERN M#AMBERJ AmberBelminE
  END
END
  
APPEND M#AMBERJ 
  IF ~~ THEN BEGIN AmberBelminA
    SAY @2019 /* @2019 = ~Could that be because I'm no elf?~ */
    IF ~~ THEN EXTERN BELMIN M#AmberBelminB
  END
  
  IF ~~ THEN BEGIN AmberBelminC
    SAY @2020 /* @2020 = ~I've been called many things and even been mistaken for an elf from afar, but you must be daft to think me an elf at this distance.~ */
    IF ~~ THEN EXTERN BELMIN M#AmberBelminD
  END
  
  IF ~~ THEN BEGIN AmberBelminE
    SAY @2021 /* @2021 = ~Tell me something I haven't heard before, oaf.~ */
    =
    @2022 /* @2022 = ~I grow quite tired of this conversation. I'll just leave you to your rabid delusions, then.~ */
    IF ~~ THEN EXIT
  END
END

// Patricia of Seven Vales

APPEND SEVBAR01
  IF WEIGHT #-1 ~Global("M#AmberPatricia","GLOBAL",0)
      	         InParty("M#Amber")
      	         See("M#Amber")
      	         !StateCheck("M#Amber",STATE_SLEEPING)
      	         !StateCheck("M#Amber",STATE_HELPLESS)
   	         !StateCheck("M#Amber",STATE_STUNNED)
      	         !StateCheck("M#Amber",STATE_SILENCED)~ THEN BEGIN M#AmberPatriciaBegin
  SAY @2023 /* @2023 = ~Hey! We don't serve your kind here. Get out of here!~ */
      IF ~~ THEN EXTERN M#AMBERJ AmberPatriciaA
  END

  IF ~~ THEN BEGIN M#AmberPatriciaB
    SAY @2024 /* @2024 = ~Well, your money is no good here. You can go back to the Hells where you belong, fiendling. I don't want to see those weird eyes of yours here again.~ */
    IF ~~ THEN EXTERN M#AMBERJ AmberPatriciaC
    IF ~InParty("HaerDalis")~ THEN EXTERN M#AMBERJ AmberPatriciaD
    IF ~Global("M#SeenPooky","GLOBAL",1)~ THEN EXTERN M#AMBERJ AmberPatriciaE
  END

  IF ~~ THEN BEGIN M#AmberPatriciaF
    SAY @2025 /* @2025 = ~Don't try to tell me how to run my business! I told you to leave, and you'd better do so before I call the guards.~ */
    IF ~~ THEN REPLY @2026 /* @2026 = ~Now let's calm down, everyone. I am sure we can sort this out.~ */ EXTERN M#AMBERJ AmberPatriciaG
    IF ~~ THEN REPLY @2027 /* @2027 = ~I think we'd better leave...~ */ GOTO M#AmberPatriciaH
    IF ~~ THEN REPLY @2028 /* @2028 = ~Don't you threaten my friend, you fat cow!~ */ GOTO M#AmberPatriciaI
  END

  IF ~~ THEN BEGIN M#AmberPatriciaM
    SAY @2029 /* @2029 = ~You can't order me around in my own place! Take your companion and leave now. I'm not going to tell you again!~ */
    IF ~Gender(LastTalkedToBy(Myself),Male)
    	CheckStatLT(LastTalkedToBy(Myself),19,CHR)~ THEN REPLY @2030 /* @2030 = ~Perhaps a few gold coins would turn your head, ma'am? Just to show you how much we appreciate the services of this fine establishment.~ */ GOTO M#AmberPatriciaJ
    IF ~OR(2)
          Gender(LastTalkedToBy(Myself),Female)
    	  CheckStatGT(LastTalkedToBy(Myself),18,CHR)~ THEN REPLY @2030 /* @2030 = ~Perhaps a few gold coins would turn your head, ma'am? Just to show you how much we appreciate the services of this fine establishment.~ */ GOTO M#AmberPatriciaK
    IF ~~ THEN REPLY @2027 /* @2027 = ~I think we'd better leave...~ */ GOTO M#AmberPatriciaH
    IF ~~ THEN REPLY @2031 /* @2031 = ~I'll order around whomever I want and whenever I want! You'd better start serving us right about now, before I lose my temper!~ */ GOTO M#AmberPatriciaI
  END

  IF ~~ THEN BEGIN M#AmberPatriciaI
    SAY @2032 /* @2032 = ~GET OUT OF HERE!~ */
    IF ~~ THEN DO ~SetGlobal("M#AmberPatricia","GLOBAL",1)~ EXIT
  END

  IF ~~ THEN BEGIN M#AmberPatriciaJ
      SAY @2033 /* @2033 = ~Are you daft or something, boy? I said that creature's money is no good here, and just to make it clear to you, that includes her companions as well. Now get lost.~ */
      IF ~~ THEN DO ~SetGlobal("M#AmberPatricia","GLOBAL",1)~ EXIT
  END

  IF ~~ THEN BEGIN M#AmberPatriciaK
    SAY @2034 /* @2034 = ~Are you daft or something, <GIRLBOY>? I said that creature's money is no good here...~ */
    =
    @2035 /* @2035 = ~But just out of curiosity... What kind of a sum are we talking about here?~ */
    IF ~~ THEN REPLY @2036 /* @2036 = ~I am sure 10 gold coins would do the trick, don't you agree?~ */ GOTO M#AmberPatriciaL
    IF ~CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY @2037 /* @2037 = ~How about 50 gold coins? Would that be enough to make you forget this little incident, ma'am?~ */ GOTO M#AmberPatriciaL
    IF ~CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @2037 /* @2037 = ~How about 50 gold coins? Would that be enough to make you forget this little incident, ma'am?~ */ GOTO M#AmberPatriciaG
    IF ~~ THEN REPLY @2038 /* @2038 = ~Let's make it 100 gold coins and put all this behind us, all right?~ */ GOTO M#AmberPatriciaG
    IF ~~ THEN REPLY @2039 /* @2039 = ~Never mind, we'll just leave.~ */ GOTO M#AmberPatriciaH
  END

  IF ~~ THEN BEGIN M#AmberPatriciaL
      SAY @2040 /* @2040 = ~Are you making fun of me? I said that creature's money is no good here, and just to make it clear to you, that includes her companions as well. Now get lost.~ */
      IF ~~ THEN DO ~SetGlobal("M#AmberPatricia","GLOBAL",1)~ EXIT
  END

  IF ~~ THEN BEGIN M#AmberPatriciaG
        SAY @2041 /* @2041 = ~Well, perhaps I can make an exception just this once. You can stay, as long as you don't make a scene.~ */
        IF ~~ THEN DO ~SetGlobal("M#AmberPatricia","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN M#AmberPatriciaH
        SAY @2042 /* @2042 = ~Well, it's about time you did!~ */
        IF ~~ THEN DO ~SetGlobal("M#AmberPatricia","GLOBAL",1)~ EXIT
  END

  IF WEIGHT #-1 ~Global("M#AmberPatricia","GLOBAL",1)
      	        InParty("M#Amber")
      	        See("M#Amber")
      	        !StateCheck("M#Amber",STATE_SLEEPING)
      	        !StateCheck("M#Amber",STATE_HELPLESS)
   	        !StateCheck("M#Amber",STATE_STUNNED)
      	        !StateCheck("M#Amber",STATE_SILENCED)~ THEN BEGIN M#AmberPatriciaN
    SAY @2043 /* @2043 = ~What are you waiting for? I told you to get out of my establishment.~ */
    IF ~Gender(LastTalkedToBy(Myself),Male)
        	CheckStatLT(LastTalkedToBy(Myself),19,CHR)~ THEN REPLY @2030 /* @2030 = ~Perhaps a few gold coins would turn your head, ma'am? Just to show you how much we appreciate the services of this fine establishment.~ */ GOTO M#AmberPatriciaJ
        IF ~OR(2)
              Gender(LastTalkedToBy(Myself),Female)
              CheckStatGT(LastTalkedToBy(Myself),18,CHR)~ THEN REPLY @2030 /* @2030 = ~Perhaps a few gold coins would turn your head, ma'am? Just to show you how much we appreciate the services of this fine establishment.~ */ GOTO M#AmberPatriciaK
        IF ~~ THEN REPLY @2027 /* @2027 = ~I think we'd better leave...~ */ GOTO M#AmberPatriciaH
    IF ~~ THEN REPLY @2031 /* @2031 = ~I'll order around whomever I want and whenever I want! You'd better start serving us right about now, before I lose my temper!~ */ GOTO M#AmberPatriciaI
  END
END

APPEND M#AMBERJ

  IF ~~ THEN BEGIN AmberPatriciaA
    SAY @2044 /* @2044 = ~Don't you start with that 'your kind' talk! To you I'm of the 'paying customer kind', just like everyone else in here.~ */
    IF ~~ THEN EXTERN SEVBAR01 M#AmberPatriciaB
  END

  IF ~~ THEN BEGIN AmberPatriciaC
    SAY @2045 /* @2045 = ~With an attitude like yours, I don't see this place staying in business for long.~ */
    IF ~~ THEN EXTERN SEVBAR01 M#AmberPatriciaF
  END

  IF ~~ THEN BEGIN AmberPatriciaD
    SAY @2046 /* @2046 = ~But his is? I'd say that his hair looks just a touch too blue for an elf, wouldn't you?~ */
    IF ~~ THEN EXTERN SEVBAR01 M#AmberPatriciaF
  END

  IF ~~ THEN BEGIN AmberPatriciaE
      SAY @2047 /* @2047 = ~How about that imp you have upstairs? Certainly more fiendish than I could ever be.~ */
      IF ~~ THEN EXTERN SEVBAR01 M#AmberPatriciaF
  END

  IF ~~ THEN BEGIN AmberPatriciaG
        SAY @2048 /* @2048 = ~I am totally calm! It's she who's jumping all over the place.~ */
        IF ~~ THEN EXTERN SEVBAR01 M#AmberPatriciaM
  END
END

// Madame Nin
APPEND MADAM
	IF WEIGHT #8 ~InPartySlot(LastTalkedToBy,0)
	              GlobalGT("M#AmberRomanceActive","GLOBAL",0)
	              GlobalLT("M#AmberRomanceActive","GLOBAL",3)
	              Global("M#AmberMatch","GLOBAL",1)~ THEN BEGIN M#AmberRomance1
		SAY @2049 /* @2049 = ~Greetings, my <LADYLORD>.  I am Madame Nin, and I am here to ensure you are pleasantly accompanied.  Are you interested in companionship, my <LADYLORD>?~ */
		IF ~InParty("M#Amber")
 		    See("M#Amber")
 		    !StateCheck("M#Amber",STATE_SLEEPING)
 		    !StateCheck("M#Amber",STATE_HELPLESS)
 		    !StateCheck("M#Amber",STATE_STUNNED)
 		    !StateCheck("M#Amber",STATE_SILENCED)~ THEN EXTERN ~M#AMBERJ~ M#MadameNin1
		IF ~OR(6)
		      !InParty("M#Amber")
		      !See("M#Amber")
		      StateCheck("M#Amber",STATE_SLEEPING)
		      StateCheck("M#Amber",STATE_HELPLESS)
		      StateCheck("M#Amber",STATE_STUNNED)
		      StateCheck("M#Amber",STATE_SILENCED)~ THEN GOTO 7
	END
	IF WEIGHT #9 ~InPartySlot(LastTalkedToBy,1)
		      GlobalGT("M#AmberRomanceActive","GLOBAL",0)
		      GlobalLT("M#AmberRomanceActive","GLOBAL",3)
		      Global("M#AmberMatch","GLOBAL",3)
		      Gender(Player2,MALE)
		      CheckStat(Player2,0,MORALEBREAK)	// Bio-NPC, Hubelpot, Kelsey, Solaufein, Kivan of Shilmista, Kova, Willie Bruce, Goo, Kulyok's Xan, Iylos, Tiax
		      !HasItemEquiped("belt05",Player2)	// Girdle of sex change
		      !Name("BIDDE",Player2)			// Biddekelorak Modlist	
		      !Name("SUBRU",Player2)			// Bons' Bruce PPG
		      !Name("JCBruce",Player2)		// Compton's Bruce PPG
		      !Name("G#CASS",Player2) 		// Cassius CoM
		      !Name("FWGHARETH",Player2)		// Ghareth PPG
		      !Name("CLFHSFNX",Player2)		// Fonick Modlist
		      !Name("lrirenic",Player2)		// Irenicus (Longer Road) FW
		      !Name("DKido",Player2)			// Kido Modlist
		      !Name("KWOLF",Player2)			// Killing Wolf SHS
		      !Name("Kindrek",Player2)		// Kindrek CoM
		      !Name("NATH",Player2)			// Nathaniel CoM
		      !Name("SK#NEHT",Player2)		// Neh'Taniel Blacksheep
		      !Name("Therrin",Player2)		// Therrin Modlist
		      !Name("TSUJATH",Player2)		// Tsujatha CoM
		      !Name("VANIM",Player2)			// Vanim Modlist
		      !Name("Wikaede",Player2) 		// Wikaede CoM
		      !Name("TLXAN",Player2) 			// Xan Modlist
		      !Name("SDNPC",Player2)			// Yikari FW
		      !Name("Robilard",Player2)		// Robillard (TDD) Modlist		
		      !Name("Avaunis",Player2)		// Auvanis (TDD) Modlist		
		      !Name("Adario",Player2)			// Adario Kalvaras (TDD) Modlist			
		      !Name("KAGAINdd",Player2)		// Kagain (TDD) Modlist				
		      !Name("KIVANDD",Player2)		// Kivan (TDD) Modlist				
		      !Name("montaron",Player2)		// Montaron (TDD) Modlist	  		
		      !Name("xzardd",Player2)			// Xzar (TDD) Modlist				
		      !Name("yeslicdd",Player2) 		// Yeslick (TDD) Modlist
		      !Name("BOLIVAR",Player2) 		// Bolivar (SoS) FW		
		      !Name("TOMASTM",Player2) 		// Tomas (SoS) FW
		~ THEN BEGIN M#AmberRomance2
		SAY @2049 /* @2049 = ~Greetings, my <LADYLORD>.  I am Madame Nin, and I am here to ensure you are pleasantly accompanied.  Are you interested in companionship, my <LADYLORD>?~ */
		IF ~InParty("M#Amber")
 		    See("M#Amber")
 		    !StateCheck("M#Amber",STATE_SLEEPING)
 		    !StateCheck("M#Amber",STATE_HELPLESS)
 		    !StateCheck("M#Amber",STATE_STUNNED)
 		    !StateCheck("M#Amber",STATE_SILENCED)~ THEN EXTERN ~M#AMBERJ~ M#MadameNin2
		IF ~OR(6)
		      !InParty("M#Amber")
		      !See("M#Amber")
		      StateCheck("M#Amber",STATE_SLEEPING)
		      StateCheck("M#Amber",STATE_HELPLESS)
		      StateCheck("M#Amber",STATE_STUNNED)
		      StateCheck("M#Amber",STATE_SILENCED)~ THEN GOTO 7
	END
END

ADD_TRANS_TRIGGER MADAM 0
	~!Name("M#Amber",LastTalkedToBy)~


EXTEND_BOTTOM MADAM 0
	IF ~Name("M#Amber",LastTalkedToBy)~ THEN 
	  REPLY @2050 /* @2050 = ~I think you've found the wrong audience for your sales pitch, madame. We are definitely not interested in taking advantage of the poor girls you've enslaved here.~ */ GOTO 17
	END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#MadameNin1
	  SAY @2051 /* @2051 = ~I think you've found the wrong audience for your sales pitch, madame. <CHARNAME> is definitely not interested in taking advantage of the poor girls you've enslaved here.~ */ 
	  IF ~~ THEN EXTERN MADAM 17
	END
	IF ~~ THEN BEGIN M#MadameNin2
	  SAY @2052 /* @2052 = ~I think you've found the wrong audience for your sales pitch, madame. <PLAYER2> is definitely not interested in taking advantage of the poor girls you've enslaved here.~ */ 
	  IF ~~ THEN EXTERN MADAM 17
	END
END

// Fortuneteller
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
    Name("M#Amber",LastTalkedToBy)~ THEN GOTO M#Amber1
END

APPEND TRGYP02
	IF ~~ THEN BEGIN M#Amber1
		SAY @2053 /* @2053 = ~You are lost, child. And lost shall you remain, until you lose your fear of losing.~ */ 
		IF ~~ THEN EXTERN M#AMBERJ M#Gypsy1
	END
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#Gypsy1
		SAY @2054 /* @2054 = ~Well, that was quite a few 'losts' for such a short sentence.  But you know nothing of me, lady - I fear little and have even less to lose. Your words ring empty to me.~ */ 
		IF ~~ THEN EXIT
	END
END

// Baron Ployer
I_C_T BARONP 14 M#AmberBaronPloyer 
 == M#AMBERJ IF ~InParty("M#Amber")
  		 See("M#Amber")
  		 !StateCheck("M#Amber",STATE_SLEEPING)
  		 !StateCheck("M#Amber",STATE_HELPLESS)
  		 !StateCheck("M#Amber",STATE_STUNNED)
  		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2055 /* @2055 = ~You gutless coward! You resort to cheap tricks and hide behind the backs of your lackeys. No wonder Jaheira despises you - any decent person would, even if you weren't a stinking slaver.~ */
END

// Wellyn and the teddy bear
I_C_T WELLYN 3 M#AmberWellyn1
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2056 /* @2056 = ~Poor ghost, left afraid and all alone in the dark... I could not bear such a fate. We have to find that bear of his, so he can finally rest in peace.~ */
 == WELLYN IF ~~ THEN @2057 /* @2057 = ~(sob!) I just want my bear back. (sob!) I'm so tired.~ */
END

I_C_T WELLYN 5 M#AmberWellyn2
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2058 /* @2058 = ~Stop being such an idiot, <GABBER>. It can't take that long to find Wellyn's bear - I say we go and look for it.~ */
END

I_C_T WELLYN 6 M#AmberWellyn3
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2059 /* @2059 = ~What do you mean 'we can't help him'? Of course we can help! If Wellyn needs his bear to sleep, the only thing we have to do is help him find it.~ */
END

// Poisoned Harper
EXTEND_BOTTOM RENFELD 6 
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~GiveItemCreate("MISC5F",LastTalkedToBy,0,0,0)
							 SetGlobalTimer("RenfeldDeath","GLOBAL",TEN_DAYS)
							 DestroySelf()~ EXTERN M#AMBERJ M#AmberPoisonedHarper1
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#AmberPoisonedHarper1
		SAY @2060 /* @2060 = ~Judging from his symptoms, I think I know the poison that burns in his veins. We should hurry to his friends - there is an antidote, but it will be of no use if given too late.~ */ 
		IF ~~ THEN EXIT
	END
END

I_C_T RENFELD 8 M#AmberPoisonedHarper2
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2061 /* @2061 = ~<CHARNAME>! You are not leaving this man here to die! He's too heavy for me to carry, but together we can do it.~ */
END

// Windspear Hills Dryads

EXTEND_BOTTOM VAELASA 8 
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
							 EraseJournalEntry(34092)
							 EraseJournalEntry(34093)
							 EscapeArea()~ 
						     JOURNAL #47779 
						     EXTERN M#AMBERJ M#AmberDryads
END

APPEND M#AMBERJ
  IF ~~ THEN BEGIN M#AmberDryads
  SAY @2062 /* @2062 = ~I have never encountered dryads before - such sweet and innocent looking creatures, it seems. I have always been told that they're monsters, but I guess that's what they say about any race that is not 'civilised'.~ */ 
  IF ~~ THEN EXIT
  END
END

// Haer'Dalis under the spell 
I_C_T HAERDA 109 M#AmberHaerDalisUnderSpell
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2063 /* @2063 = ~Oh, he's one of my kin! Well, at least as far as you can consider tieflings to be a 'kin'. After all, it has been said that no two are alike.~ */
END

// Arriving Brynnlaw
I_C_T PPSAEM 14 M#AmberSaemonBrynnlaw1 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2064 /* @2064 = ~Personally, I can't wait to get rid of this ship and its crew. Jolly they may be, but the smell is just too much to take. After spending this long on board, I don't think we'll ever get it off of ourselves.~ */
 END

I_C_T PPSAEM 53 M#AmberSaemonBrynnlaw2
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2065 /* @2065 = ~Personally I can't wait to get rid of this ship and its crew. Jolly they may be, but the smell is just too much to take. After spending this long on board, I don't think we'll ever get it off of ourselves.~ */
 END

EXTEND_BOTTOM PPSAEM 59 
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",3)
							 CreateCreature("ppvalen",[790.2031],12)
							 CreateCreature("ppparis",[599.2212],12)
							 CreateCreature("ppdel",[542.2326],12)
							 ReallyForceSpell(Myself,DRYAD_TELEPORT)~ 
						     JOURNAL #15794 
						     EXTERN M#AMBERJ M#AmberSaemonBrynnlaw3
END

APPEND M#AMBERJ
  IF ~~ THEN BEGIN M#AmberSaemonBrynnlaw3
  SAY @2066 /* @2066 = ~That crooked, no-good sea-rat! How dare he sell us out to those bloodsuckers?~ */ 
  IF ~~ THEN EXIT
  END
END

// Mad Imoen
I_C_T PPIMOEN 4 M#AmberImoenMad 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2067 /* @2067 = ~What could have broken this girl's mind so completely? I hope we can find a way to help her; it is sad for anyone to suffer like that.~ */
END

// Rescuing Imoen in Brynnlaw
EXTEND_BOTTOM IMOEN2 22
  IF ~InParty("M#Amber")
      See("M#Amber")
      !StateCheck("M#Amber",STATE_SLEEPING) 
      !StateCheck("M#Amber",STATE_HELPLESS)
      !StateCheck("M#Amber",STATE_STUNNED)
      !StateCheck("M#Amber",STATE_SILENCED)
      OR(2)
        Global("M#AmberRomanceActive","GLOBAL",1)
        Global("M#AmberRomanceActive","GLOBAL",2)~ THEN EXTERN M#AMBERJ FoundImoen1
IF ~InParty("M#Amber")
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING) 
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    !Global("M#AmberRomanceActive","GLOBAL",1)
    !Global("M#AmberRomanceActive","GLOBAL",2)~ THEN EXTERN M#AMBERJ FoundImoen2
END

ADD_TRANS_TRIGGER IMOEN2 23
~OR(6)
   !InParty("M#Amber")
   !See("M#Amber")
   StateCheck("M#Amber",STATE_SLEEPING)
   StateCheck("M#Amber",STATE_HELPLESS)
   StateCheck("M#Amber",STATE_STUNNED)
   StateCheck("M#Amber",STATE_SILENCED)~

EXTEND_BOTTOM IMOEN2 23
  IF ~InParty("M#Amber")
      See("M#Amber")
      !StateCheck("M#Amber",STATE_SLEEPING) 
      !StateCheck("M#Amber",STATE_HELPLESS)
      !StateCheck("M#Amber",STATE_STUNNED)
      !StateCheck("M#Amber",STATE_SILENCED)~ THEN REPLY @2068 /* @2068 = ~Good enough for me. Go.~ */ EXTERN M#AMBERJ KickingImoen1
  IF ~InParty("M#Amber")
      See("M#Amber")
      !StateCheck("M#Amber",STATE_SLEEPING)
      !StateCheck("M#Amber",STATE_HELPLESS)
      !StateCheck("M#Amber",STATE_STUNNED)
      !StateCheck("M#Amber",STATE_SILENCED)~ THEN REPLY @2069 /* @2069 = ~I am sorry. Please, be careful. I hope we'll meet up again.~ */ EXTERN M#AMBERJ KickingImoen2
  IF ~InParty("M#Amber")
      See("M#Amber")
      !StateCheck("M#Amber",STATE_SLEEPING)
      !StateCheck("M#Amber",STATE_HELPLESS)
      !StateCheck("M#Amber",STATE_STUNNED)
      !StateCheck("M#Amber",STATE_SILENCED)~ THEN REPLY @2070 /* @2070 = ~Oh all right, join with me. We'll get out of here together.~ */ EXTERN M#AMBERJ KickingImoen3
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN FoundImoen1
	SAY @2071 /* @2071 = ~You would come all this way just to abandon this girl? No, I will not have it. I'll go instead - I am more than capable of taking care of myself.~ */
	      =
	    @2072 /* @2072 = ~Don't worry, <CHARNAME>. I won't be mad at you - this will change nothing between us. Just let me get back alone, and take Imoen with you.~ */
	IF ~~ THEN DO ~SetGlobal("M#AmberRomanceWaiting","GLOBAL",1)~ EXTERN IMOEN2 23
	END

	IF ~~ THEN BEGIN FoundImoen2
	SAY @2071 /* @2071 = ~You would come all this way just to abandon this girl? No, I will not have it. I'll go instead - I am more than capable of taking care of myself.~ */ 
	IF ~~ THEN EXTERN IMOEN2 23
	END

	IF ~~ THEN BEGIN KickingImoen1
	SAY @2073 /* @2073 = ~But not for me, <CHARNAME>. How can you abandon her here in a state like that? I'm not so sure that she's capable of getting out of here alone.~ */ 
	IF ~~ THEN GOTO TakeImoenA
	END

	IF ~~ THEN BEGIN KickingImoen2
	SAY @2074 /* @2074 = ~No, <CHARNAME>, I think it's too dangerous for her to go alone. I'm not at all certain that she's up to it, not after what she has been though.~ */ 
	IF ~~ THEN GOTO TakeImoenA
	END

	IF ~~ THEN BEGIN TakeImoenA
	SAY @2075 /* @2075 = ~You should take her with us.~ */ 
	IF ~~ THEN REPLY @2076 /* @2076 = ~I think I know Imoen better than you do, Amber. She's much stronger than she looks - she'll be just fine.~ */ GOTO TakeImoenB
	IF ~~ THEN REPLY @2077 /* @2077 = ~There is no way you can make a judgement like that, not when you've only just met her. Imoen is much stronger than she looks and she'll be just fine.~ */ GOTO TakeImoenB
	IF ~~ THEN REPLY @2078 /* @2078 = ~Our journey is likely to be far more dangerous than Imoen's. It is me who Bodhi is after, remember? Imoen is far better off alone.~ */ GOTO TakeImoenC
	IF ~~ THEN REPLY @2079 /* @2079 = ~Perhaps you are right, Amber. It's better if you come with us, Imoen.~ */ GOTO KickingImoen3
	END

	IF ~~ THEN BEGIN TakeImoenB
	SAY @2080 /* @2080 = ~I wouldn't be so sure that she's still the same person you once knew after all she's been through here. On the other hand, if she survived that, perhaps she can find her way to the mainland just as well.~ */ 
	IF ~~ THEN GOTO TakeImoenD
	END

	IF ~~ THEN BEGIN TakeImoenC
	SAY @2081 /* @2081 = ~I still think that it's not the right thing to do, but if you are certain that you will be not be able to protect her from Bodhi, perhaps it is for the best. Though I'm still not quite comfortable leaving her here...~ */ 
	IF ~~ THEN DO ~IncrementGlobal("M#AmberLike","Locals",-1)~ EXTERN IMOEN2 24
	END

	IF ~~ THEN BEGIN TakeImoenD
	SAY @2082 /* @2082 = ~Fine, leave her then. I see that I have been somewhat mistaken about your character.~ */ 
	IF ~~ THEN DO ~IncrementGlobal("M#AmberLike","Locals",-2)~ EXTERN IMOEN2 24
	END

	IF ~~ THEN BEGIN KickingImoen3
	SAY @2083 /* @2083 = ~ I think that is the only decent thing to do, <CHARNAME>.~ */ 
	IF ~~ THEN EXTERN IMOEN2 21
	END
END

// Salvanas
APPEND SALVANAS

  IF ~!InPartySlot(LastTalkedToBy,0)
       Name("M#Amber",LastTalkedToBy)
       !Global("M#AmberSalvanas","GLOBAL",1)~ THEN BEGIN M#AmberSalvanas1Begin
  SAY @2084 /* @2084 = ~Oh, I haven't seen you before, have I. I would surely remember an exotic beauty such as yourself.~ */
      =
      @2085 /* @2085 = ~Come, I will buy you a drink, so that we can talk and get to know each other. Or would you rather retire to the privacy of my room straight away? The atmosphere there would be so much more intimate.~ */ 
      IF ~~ THEN DO ~SetGlobal("M#AmberSalvanas","GLOBAL",1)~ EXTERN M#AMBERJ AmberSalvanas1A
  END
  
  IF ~!InPartySlot(LastTalkedToBy,0)
       Name("M#Amber",LastTalkedToBy)
       Global("M#AmberSalvanas","GLOBAL",1)~ THEN BEGIN M#AmberSalvanas2Begin
  SAY @2086 /* @2086 = ~Ah, I just knew you could not resist my charms, and thus have returned to me.~ */
      =
      @2087 /* @2087 = ~How about that drink now, my angel? Or shall we go straight to my private quarters?~ */ 
      IF ~~ THEN EXTERN M#AMBERJ AmberSalvanas2A
  END
      
  IF ~~ THEN BEGIN M#AmberSalvanas2B
    SAY @2088 /* @2088 = ~You should never say never, cupcake...~ */
    IF ~~ THEN EXTERN M#AMBERJ AmberSalvanas2C
  END
END
  
APPEND M#AMBERJ 
  IF ~~ THEN BEGIN AmberSalvanas1A
    SAY @2089 /* @2089 = ~Who you think you are? And why would you think that I would be the least bit interested in you? Get lost!~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN AmberSalvanas2A
    SAY @2090 /* @2090 = ~You are unbelievably stubborn, oaf! Never speak to me again.~ */
    IF ~~ THEN EXTERN SALVANAS M#AmberSalvanas2B
  END
  
  IF ~~ THEN BEGIN AmberSalvanas2C
    SAY @2091 /* @2091 = ~Not if you want to lose a limb, no. Now, get lost, creep.~ */
    IF ~~ THEN EXIT
  END
END

// Upon taking drow appearance
I_C_T UDSILVER 37 M#AmberDrowAppearance 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2092 /* @2092 = ~Ugh... I never thought that I could look any freakier than I normally do, but now I know I was wrong.~ */
 == M#AMBERJ IF ~InParty("Imoen2")
 		 See("Imoen2")
 		 !StateCheck("Imoen2",STATE_SLEEPING)
 		 !StateCheck("Imoen2",STATE_HELPLESS)
 		 !StateCheck("Imoen2",STATE_STUNNED)
 		 !StateCheck("Imoen2",STATE_SILENCED)~ THEN
@2093 /* @2093 = ~Hmmm... On the other hand you actually look rather fetching with your new dark skin, Imoen.~ */
== IMOEN2J IF ~~ THEN
@2094 /* @2094 = ~Well, that makes two of us, then. But I have to admit I liked your eyes better the way they were. You just don't look at all like yourself with those dark orbs.~ */
END

// Ust Natha pit fights 
INTERJECT UDDROW16 44 M#AmberDrowdDuels 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)
		 Global("M#AmberDrowDuels","GLOBAL",0)
		 IsGabber("Player1")~ THEN
 @2095 /* @2095 = ~(Amber whispers.) Are you proud of what we have done? We murdered all those people.~ */
END
IF ~~ THEN REPLY @2096 /* @2096 = ~No I'm not, Amber, but we had to accept those challenges. The Pit Master would have grown suspicious if we hadn't.~ */ EXTERN M#AMBERJ AmberDrowDuelsA
IF ~~ THEN REPLY @2097 /* @2097 = ~Murdered? Those were fair battles. Challenge announced, challenge accepted. We vanquished our enemies - I thought you would be proud of it.~ */ EXTERN M#AMBERJ AmberDrowDuelsB
IF ~~ THEN REPLY @2098 /* @2098 = ~Since when have you been a drow sympathiser, Amber? They are evil - all of them. They deserve to die.~ */ EXTERN M#AMBERJ AmberDrowDuelsC

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberDrowDuelsA
    SAY @2099 /* @2099 = ~We could have made an excuse. At least after the first one; we had already proved our mettle.~ */
    IF ~~ THEN GOTO AmberDrowDuelsD
  END

  IF ~~ THEN BEGIN AmberDrowDuelsB
    SAY @2100 /* @2100 = ~Proud of it? They were like leaves that we just brushed aside. They didn't have a chance and you know it. I think what we did was horrible - only cowards would prove their might by slaughtering those weaker than themselves like that.~ */
    IF ~~ THEN GOTO AmberDrowDuelsD
  END

  IF ~~ THEN BEGIN AmberDrowDuelsC
    SAY @2101 /* @2101 = ~Do you consider yourself so high and mighty that you can be the judge of others? It is not for you to decide who deserves to live and who does not.~ */
    IF ~~ THEN GOTO AmberDrowDuelsD
  END

  IF ~~ THEN BEGIN AmberDrowDuelsD
     SAY @2102 /* @2102 = ~Drow prey on the weak, but you should do better than that. Please, don't let the dragon's illusion become reality. I would hate for that to happen.~ */
     =
     @2103 /* @2103 = ~Don't give in to the murderous taint of Bhaal. It looked as if you enjoyed seeing those drow get killed. It's just not right, even if they are evil. We should never take pleasure in ending someone's life. Please try to remember that.~ */
     IF ~~ THEN DO ~SetGlobal("M#AmberDrowDuels","GLOBAL",1)~ EXIT
  END
END

// Killing the deep gnomes THIS IS BROKEN
I_C_T UDSVIR08 1 M#AmberDeepGnomes 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)
 		 Global("SolaufeinJob","GLOBAL",7)~ THEN
 @2104 /* @2104 = ~No, these gnomes are not evil! They even helped us! I will not take part in slaying them!~ */ 
 DO ~SetGlobal("M#AmberDestroy","GLOBAL",1)
     SetDialog("m#amberp")
     LeaveParty()~ 
END

EXTEND_BOTTOM UDSVIR08 1 
     IF ~InParty("M#Amber")
	 See("M#Amber")
	 !StateCheck("M#Amber",STATE_SLEEPING)
	 !StateCheck("M#Amber",STATE_HELPLESS)
	 !StateCheck("M#Amber",STATE_STUNNED)
	 !StateCheck("M#Amber",STATE_SILENCED)~ THEN DO ~Shout(151)
							 Enemy()~ EXTERN M#AMBERJ M#AmberDeepGnomes
END

APPEND M#AMBERJ
	IF ~~ THEN BEGIN M#AmberDeepGnomes
		SAY @2104 /* @2104 = ~No, these gnomes are not evil! They even helped us! I will not take part in slaying them!~ */ 
		IF ~~ THEN DO ~SetGlobal("M#AmberDestroy","GLOBAL",1)
     			       SetDialog("m#amberp")
     			       LeaveParty()~ EXIT
		IF ~IsValidForPartyDialog("Jan")
		    Global("SolaufeinJob","GLOBAL",7)~ THEN DO ~SetGlobal("M#AmberDestroy","GLOBAL",1)
     								SetDialog("m#amberp")
     								LeaveParty()~ EXTERN JANJ 164
		IF ~IsValidForPartyDialog("Jan")
		    IsValidForPartyDialog("Mazzy")
		    Global("SolaufeinJob","GLOBAL",7)~ THEN DO ~SetGlobal("M#AmberDestroy","GLOBAL",1)
     							 	SetDialog("m#amberp")
     								LeaveParty()~ EXTERN MAZZYJ 176
		IF ~!IsValidForPartyDialog("Jan")
		    !IsValidForPartyDialog("Mazzy")
		    IsValidForPartyDialog("Keldorn")
		    Global("SolaufeinJob","GLOBAL",7)~ THEN DO ~SetGlobal("M#AmberDestroy","GLOBAL",1)
     								SetDialog("m#amberp")
     								LeaveParty()~ EXTERN KELDORJ 203
	END
END

// Ordered to Kill Sola
I_C_T UDPHAE01 88 M#AmberKillingSola 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~ THEN
 @2105 /* @2105 = ~You are not simply going to murder him, are you? I am certain there is another way out of this.~ */
END

// Slayer changes in Spellhold
INTERJECT PLAYER1 3 M#AmberSlayer1
== M#AMBERJ IF ~InParty("M#Amber")
		See("M#Amber")
		!StateCheck("M#Amber",STATE_SLEEPING)
 		!StateCheck("M#Amber",STATE_HELPLESS)
 		!StateCheck("M#Amber",STATE_STUNNED)
 		!StateCheck("M#Amber",STATE_SILENCED)
 		!Global("AerieRomanceActive","GLOBAL",2)
 		!Global("ViconiaRomanceActive","GLOBAL",2)
 		!Global("JaheiraRomanceActive","GLOBAL",2)
 		!Global("AnomenRomanceActive","GLOBAL",2)
 		!Global("J#KelseyRomanceActive","GLOBAL",2)
 		!Global("ChloeRomanceActiveCR","GLOBAL",2)
 		!Global("KiaraRomanceActive","GLOBAL",2)
		!Global("H#ValygarRomanceActive","GLOBAL",1)
 		!Global("TsujathaRomanceActive","GLOBAL",2)
 		!Global("E3FadeRomanceActive","GLOBAL",2)
 		!Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@2106 /* @2106 = ~<CHARNAME>, what is it? You look like you've seen a ghost and... you are trembling. Is something wrong? Should we stop for a rest?~ */ 
END
IF ~~ THEN REPLY @2107 /* @2107 = ~No, it's nothing. Just leave me alone, Amber.~ */ EXTERN M#AMBERJ AmberSlayer1A
IF ~~ THEN REPLY @2108 /* @2108 = ~I... I just felt like I was going to faint for a moment there. It was probably an effect of Bodhi's spell, but I'm feeling just fine now.~ */ EXTERN M#AMBERJ AmberSlayer1A
IF ~OR(2)
      Global("M#AmberRomanceActive","GLOBAL",1)
      Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    Global("M#AmberMad","GLOBAL",0)~ THEN REPLY @2109 /* @2109 = ~I don't know. I felt really odd for a moment, there. Could you... hold me close for a moment, Amber? ~ */ EXTERN M#AMBERJ AmberSlayer1B
IF ~Global ("M#AmberFriend","GLOBAL",1)
    Global("M#AmberMad","GLOBAL",0)~ THEN REPLY @2109 /* @2109 = ~I don't know. I felt really odd for a moment, there. Could you... hold me close for a moment, Amber? ~ */ EXTERN M#AMBERJ AmberSlayer1B
IF ~OR(2)
      Global("M#AmberMatch","GLOBAL",3)
      Global("M#AmberMad","GLOBAL",1)~ THEN REPLY @2110 /* @2110 = ~I don't know. I felt really odd for a moment, there. Could you... hold me close for a moment, Amber?~ */ EXTERN M#AMBERJ AmberSlayer1C
IF ~Global("M#AmberMad","GLOBAL",0)
    !Global("M#AmberMatch","GLOBAL",3)
    Global("M#AmberRomanceActive","GLOBAL",3)
    Global("M#AmberFriend","GLOBAL",0)~ THEN REPLY @2110 /* @2110 = ~I don't know. I felt really odd for a moment, there. Could you... hold me close for a moment, Amber?~ */ EXTERN M#AMBERJ AmberSlayer1C

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberSlayer1A
    SAY @2111 /* @2111 = ~Very well, <CHARNAME>. Just make sure that you don't push yourself too far without resting.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN AmberSlayer1B
    SAY @2112 /* @2112 = ~But of course, <CHARNAME>. (Amber wraps her slender arms around you and rests her head on your chest.)~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN AmberSlayer1C
    SAY @2113 /* @2113 = ~I don't see how that is going to help you get your vigour back. I suggest we rest before trying to figure out a way to get out of there.~ */
    IF ~~ THEN EXIT
  END
END

INTERJECT PLAYER1 5 M#AmberSlayer3
== M#AMBERJ IF ~InParty("M#Amber")
		Range("M#Amber",15)
		!StateCheck("M#Amber",STATE_SLEEPING)
 		!StateCheck("M#Amber",STATE_HELPLESS)
 		!StateCheck("M#Amber",STATE_STUNNED)
 		!StateCheck("M#Amber",STATE_SILENCED) 		
 		!Global("AerieRomanceActive","GLOBAL",2)
 		!Global("ViconiaRomanceActive","GLOBAL",2)
 		!Global("JaheiraRomanceActive","GLOBAL",2)
 		!Global("AnomenRomanceActive","GLOBAL",2)
 		!Global("J#KelseyRomanceActive","GLOBAL",2)
 		!Global("ChloeRomanceActiveCR","GLOBAL",2)
 		!Global("KiaraRomanceActive","GLOBAL",2)
		!Global("H#ValygarRomanceActive","GLOBAL",1)
 		!Global("TsujathaRomanceActive","GLOBAL",2)
 		!Global("E3FadeRomanceActive","GLOBAL",2)
 		!Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@2114 /* @2114 = ~What was that... monster? I - I have heard of the avatar of Bhaal... but I could not have imagined anything so horrifying. It was as if you lost all control of yourself and whatever took you over - you would have slain us all had we not run away.~ */ 
=
@2115 /* @2115 = ~You will *have* to learn to control that beast; it is bound to make another attempt to take you over. I will help you in any way I can - even if I can offer you little besides comfort and reassurance.~ */ 
END
IF ~~ THEN EXIT

INTERJECT PLAYER1 7 M#AmberSlayer4
== M#AMBERJ IF ~InParty("M#Amber")
		See("M#Amber")
		!StateCheck("M#Amber",STATE_SLEEPING)
 		!StateCheck("M#Amber",STATE_HELPLESS)
 		!StateCheck("M#Amber",STATE_STUNNED)
 		!StateCheck("M#Amber",STATE_SILENCED)
		Global("M#AmberMatch","GLOBAL",1)
		Global("M#AmberRomanceActive","GLOBAL",2)
		Global("M#AmberMad","GLOBAL",0)~ THEN
@2116 /* @2116 = ~You are shivering, <CHARNAME>. Can I get you an extra blanket... no, this is not about the chill, is it? Come, let me hold you - perhaps I can give you some strength to fight whatever is ailing you.~ */ 
END
IF ~~ THEN REPLY @2117 /* @2117 = ~No! Stay away, Amber. Please! I'm not in control of my actions!~ */ EXTERN M#AMBERJ AmberSlayer4A
IF ~~ THEN REPLY @2118 /* @2118 = ~Run! For your own sake, get the hell out of here!~ */ EXTERN M#AMBERJ AmberSlayer4A
IF ~~ THEN REPLY @2119 /* @2119 = ~Yes, perhaps that would help...~ */ EXTERN M#AMBERJ AmberSlayer4B

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberSlayer4A
    SAY @2120 /* @2120 = ~Eaaaaiiik!~ */ 
    IF ~~ THEN DO ~SetGlobal("M#EndangerAmber","GLOBAL",1)
    		   ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
  END

  IF ~~ THEN BEGIN AmberSlayer4B
    SAY @2121 /* @2121 = ~Eaaaaiirrrgghhhllglgg!~ */ 
    IF ~~ THEN DO ~SetGlobal("M#AmberRomanceActive","GLOBAL",3)
    		   SetGlobal("M#AmberTalk","GLOBAL",100)	
		   SetGlobal("M#AmberMurderedBySlayer","GLOBAL",1)
		   SetGlobal("M#EndangerAmber","GLOBAL",1)
    		   ApplySpellRES("m#chunk","M#Amber")
    		   ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT 
  END
END

INTERJECT PLAYER1 10 M#AmberSlayer6
 == M#AMBERJ IF ~Global("M#EndangerAmber","GLOBAL",1) 
                 InParty("M#Amber")
		 See("M#Amber")
		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)~
 @2122 /* @2122 = ~Whoa! It was good that you warned me... You... you really scared me. But I cannot let you fight this alone. No, that just will not do. I will be there for you, <CHARNAME>, even if it means putting my own life on the line.~ */ 
END
IF ~~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXIT

INTERJECT PLAYER1 10 M#AmberSlayer6
 == PLAYER1 IF ~OR(2)
 		  Global("M#AmberMurderedBySlayer","GLOBAL",1)
     		  Dead("M#Amber")
		Global("M#EndangerAmber","GLOBAL",1)
		OR(7)
		  !InParty("Imoen2")
		  !See("Imoen2")
		  Dead("Imoen2")
		  StateCheck("Imoen2",STATE_SLEEPING)
		  StateCheck("Imoen2",STATE_HELPLESS)
		  StateCheck("Imoen2",STATE_STUNNED)
 		  StateCheck("Imoen2",STATE_SILENCED)~ THEN
 @2123 /* @2123 = ~The danger of your condition is terrifyingly clear, written in the blood of those you care about. This must be resolved or you are certainly lost.~ */
END
IF ~~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXIT

INTERJECT PLAYER1 10 M#AmberSlayer6
 == IMOEN2J IF ~OR(2)
                  Global("M#AmberMurderedBySlayer","GLOBAL",1)
     		  Dead("M#Amber")
     		Global("M#EndangerAmber","GLOBAL",1)  
     		InParty("Imoen2")
		See("Imoen2")
		!StateCheck("Imoen2",STATE_SLEEPING)
 		!StateCheck("Imoen2",STATE_HELPLESS)
 		!StateCheck("Imoen2",STATE_STUNNED)
 		!StateCheck("Imoen2",STATE_SILENCED)~ THEN
 @2124 /* @2124 = ~<CHARNAME>! <CHARNAME>!~ */
 =
 @2125 /* @2125 = ~Finally you have come to your senses! Look what you have done. Oh, <CHARNAME>, I'm so sorry.~ */
END
IF ~~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXIT

// Bodhi abduction: Graveyard
ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(3)
   		               !InParty("M#Amber")
 		               !Global("M#AmberRomanceActive","GLOBAL",2)
 		               Global("M#AmberMatch","GLOBAL",3)~


EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("M#Amber")
    Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)~ THEN EXTERN BODHIAMB M#AmberBodhi1
END

APPEND BODHIAMB
IF ~~ THEN BEGIN M#AmberBodhi1
 SAY @2126 /* @2126 = ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~ */
 IF ~OR(2)
      !InPartyAllowDead("M#Amber")
      Dead("M#Amber")~ THEN GOTO 6
 IF ~InPartyAllowDead("M#Amber")
     !Dead("M#Amber")~ THEN GOTO M#AmberBodhi1A
END

IF ~~ THEN BEGIN M#AmberBodhi1A
  SAY @2127 /* @2127 = ~Now my, my, what is this? A little tiefling, her blood burning with lust and the fires of demonkind... A dangerous pet you have taken, <CHARNAME>. Be careful - you might burn yourself with her.~ */
  IF ~~ THEN EXTERN M#AMBERJ AmberBodhi1B
END
END

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberBodhi1B
  SAY @2128 /* @2128 = ~You be careful, vampire. You're looking at your doom and you know it.~ */ 
  IF ~!HasItem("m#jbrace",Myself)~ THEN EXTERN BODHIAMB M#AmberBodhi1B1
  IF ~HasItem("m#jbrace",Myself)~ THEN EXTERN BODHIAMB M#AmberBodhi1B2
  END
END

APPEND BODHIAMB
  IF ~~ THEN BEGIN M#AmberBodhi1B1
  SAY @2129 /* @2129 = ~Silence, beast! You speak only when you're spoken to. Now <CHARNAME>, it seems that you have seriously neglected the training of your little creature. I think I will have to break her in for you.~ */
  =
  @2130 /* @2130 = ~Follow me further <CHARNAME>, and you will lose more than you can imagine. Starting now!~ */
  IF ~~ THEN DO ~ClearAllActions()
                 StartCutSceneMode()
                 StartCutScene("M#BodhiA")~ 
                 JOURNAL @55 EXIT
 END

  IF ~~ THEN BEGIN M#AmberBodhi1B2
  SAY @2131 /* @2131 = ~Silence, beast! You'll speak only when you're spoken to. Now <CHARNAME>, it seems that you have seriously neglected the training of your little creature. I think I will have to break her in for you.~ */
  =
  @2130 /* @2130 = ~Follow me further <CHARNAME>, and you will lose more than you can imagine. Starting now!~ */
  IF ~~ THEN DO ~SetGlobal("M#VampireAmberHasBracelet","GLOBAL",1)
                 ClearAllActions()
                 StartCutSceneMode()
                 StartCutScene("M#BodhiA")~ 
                 JOURNAL @55 EXIT
  END
END

// Bodhi abduction: Oghma temple info
ADD_TRANS_TRIGGER IMNBOOK1 0 ~OR(2)
			       !Global("RevealUmar","GLOBAL",1)
			       !PartyHasItem("m#ambody")~

EXTEND_BOTTOM IMNBOOK1 0
 IF ~PartyHasItem("m#ambody")
     Global("RevealUmar","GLOBAL",1)~ THEN REPLY #59383 EXTERN IMNBOOK1 4
END

// Bodhi abduction: Bodhi's chambers
ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("M#AmberVampire","GLOBAL",2)~

EXTEND_BOTTOM C6BODHI 21
 IF ~Global("M#AmberVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM C6BODHI 23
 IF ~Global("M#AmberVampire","GLOBAL",2)~ THEN REPLY @2132 /* @2132 = ~You have taken too much already! You will return both Imoen's soul and Amber!~ */ EXTERN C6BODHI M#VampireAmberA
  IF ~Global("M#AmberVampire","GLOBAL",2)~ THEN REPLY @2133 /* @2133 = ~And you have delivered on that promise. Return Amber and perhaps I will be merciful.~ */ EXTERN C6BODHI M#VampireAmberA
  IF ~Global("M#AmberVampire","GLOBAL",2)~ THEN REPLY @2134 /* @2134 = ~I would have hunted you for your theft of Amber alone. She is very important to me.~ */ EXTERN C6BODHI M#VampireAmberA
  IF ~Global("M#AmberVampire","GLOBAL",2)~ THEN REPLY @2135 /* @2135 = ~You place too much confidence in sentiment. The theft of Amber will not save you.~ */ EXTERN C6BODHI M#VampireAmberD
END

BEGIN ~M#VAMBER~

IF ~~ THEN BEGIN VampireAmberB
  SAY @2136 /* @2136 = ~Mistress... I will...~ */ 
  =
  @2137 /* @2137 = ~Not be enslaved!~ */ 
  IF ~~ THEN EXTERN ~C6BODHI~ M#VampireAmberC
END

IF ~~ THEN BEGIN VampireAmberD
  SAY @2138 /* @2138 = ~No... I love him!~ */ 
  IF ~~ THEN EXTERN ~C6BODHI~ M#VampireAmberE
END

IF ~~ THEN BEGIN VampireAmberF
  SAY @2139 /* @2139 = ~Aaeiii... Yes... Yes, mistress...~ */ 
  IF ~~ THEN EXTERN ~C6BODHI~ M#VampireAmberG
END

APPEND C6BODHI
 IF ~~ THEN BEGIN M#VampireAmberA
   SAY @2140 /* @2140 = ~You remember Amber, don't you? You might not recognise her anymore, though. She makes quite an addition to my cadre. She is stubborn, I give you that, but with proper discipline, any beast can be tamed.~ */
   IF ~~ THEN EXTERN ~M#VAMBER~ VampireAmberB
 END
END

APPEND C6BODHI
 IF ~~ THEN BEGIN M#VampireAmberD
   SAY @2141 /* @2141 = ~An interesting ploy, though I am sure her fate will still serve as an example.~ */
   IF ~~ THEN GOTO M#VampireAmberA
 END
END

APPEND C6BODHI
 IF ~~ THEN BEGIN M#VampireAmberC
   SAY @2142 /* @2142 = ~Foolish girl! I will tolerate no misbehaviour from you, little fiendling! You are mine now and will do as you are told.  Attack your beloved <CHARNAME> now!~ */
   IF ~~ THEN EXTERN ~M#VAMBER~ VampireAmberD
 END
END 

APPEND C6BODHI
 IF ~~ THEN BEGIN M#VampireAmberE
   SAY @2143 /* @2143 = ~(Bodhi's voice turns softer, almost into a purr.) Yes... and thence will his blood be sweeter that any you have ever tasted. I know the hunger you feel, child. Act on it, and you shall feel the taste of heaven.~ */
   IF ~~ THEN EXTERN ~M#VAMBER~ VampireAmberF
 END
END

APPEND C6BODHI
 IF ~~ THEN BEGIN M#VampireAmberG
   SAY @2144 /* @2144 = ~Yes, give in to your instincts, precious child.~ */
   =
   @2145 /* @2145 = ~See, <CHARNAME>, even though she is not fully turned yet, she is already losing herself to her beast. Soon she will be free of all the fetters of morality and able to fully explore her demonic nature. ~ */
   IF ~~ THEN GOTO 28 // So let us end this... Attack
 END
END

// Bodhi abduction: Elhan & War Sage

EXTEND_BOTTOM C6ELHAN2 70
IF ~PartyHasItem("m#ambody")~ THEN REPLY @2146 /* @2146 = ~Elhan!  I've the half vampire body of Amber here because of you!  You'll tell me now!~ */ GOTO 76
END

EXTEND_BOTTOM WARSAGE 0
IF ~!Dead("c6bodhi")
    Global("M#AmberVampire","GLOBAL",2)~ THEN REPLY @2147 /* @2147 = ~My companion Amber was taken by a vampire. What can I expect when I find them?~ */ GOTO 6
END

EXTEND_BOTTOM WARSAGE 0
IF ~PartyHasItem("m#ambody")~ THEN REPLY @2148 /* @2148 = ~My companion Amber has fallen to a vampire. Is there any way to save her?~ */ GOTO 5
END

// Tree of Life

EXTEND_TOP PLAYER1 33 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ GOTO M#AmberTreeOfLifeRomance1
END

EXTEND_TOP ANOMENJ 299 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP AERIEJ 185 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP VICONIJ 177 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP JAHEIRAJ 519 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP CERNDJ 139 #0
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP NALIAJ 315 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP KORGANJ 187 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP KELDORJ 248 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP HAERDAJ 149 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP EDWINJ 160 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP JANJ 181 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP MAZZYJ 199 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP VALYGARJ 106 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP MINSCJ 209 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_TOP IMOEN2J 38 #1
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)
    See("M#Amber")
    !StateCheck("M#Amber",STATE_SLEEPING)
    !StateCheck("M#Amber",STATE_HELPLESS)
    !StateCheck("M#Amber",STATE_STUNNED)
    !StateCheck("M#Amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ EXTERN PLAYER1 M#AmberTreeOfLifeRomance1
END

EXTEND_BOTTOM PLAYER1 33
IF ~Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",3)
    See("m#amber")
    !StateCheck("m#amber",STATE_SLEEPING)
    !StateCheck("m#amber",STATE_HELPLESS)
    !StateCheck("m#amber",STATE_STUNNED)
    !StateCheck("m#amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ GOTO M#AmberTreeOfLifeRomance2
END

EXTEND_BOTTOM PLAYER1 33
IF ~Global("M#AmberFriend","GLOBAL",1)
    See("m#amber")
    !StateCheck("m#amber",STATE_SLEEPING)
    !StateCheck("m#amber",STATE_HELPLESS)
    !StateCheck("m#amber",STATE_STUNNED)
    !StateCheck("m#amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ GOTO M#AmberTreeOfLifeFriendship
END

EXTEND_BOTTOM PLAYER1 33
IF ~!Global("M#AmberFriend","GLOBAL",1)
    !Global("M#AmberRomanceActive","GLOBAL",2)
    See("m#amber")
    !StateCheck("m#amber",STATE_SLEEPING)
    !StateCheck("m#amber",STATE_HELPLESS)
    !StateCheck("m#amber",STATE_STUNNED)
    !StateCheck("m#amber",STATE_SILENCED)
    InParty("m#amber")
    !Dead("m#amber")
    Global("M#AmberToL","GLOBAL",0)~ THEN DO ~SetGlobal("M#AmberToL","GLOBAL",1)~ GOTO M#AmberTreeOfLife
END

APPEND PLAYER1
  IF ~~ THEN BEGIN M#AmberTreeOfLifeRomance1
     SAY @2149 /* @2149 = ~Amber... the fiery tiefling's affection for you is both obvious and genuine. The compassion and love you have found under her abrupt demeanor have helped you survive the pain and emptiness that Irenicus has caused by stealing your soul.~ */
     =
     @2150 /* @2150 = ~However, she is still ultimately a mystery to you, and sometimes it almost feels as if she was not quite there with you, but somewhere far away. Will the bond you have formed with her be strong enough for her to follow you to this desperate battle? ~ */
     IF ~~ THEN REPLY @2151 /* @2151 = ~Amber... I ---~ */ EXTERN M#AMBERJ AmberTreeOfLifeL
  END
  
  IF ~~ THEN BEGIN M#AmberTreeOfLifeRomance2
     SAY @2152 /* @2152 = ~Amber, the wilful tiefling that you encountered in Athkatla, has grown very close with <PLAYER2>, your ever faithful companion. Her affection for him is obvious, but will that bond be strong enough for Amber to follow you to the desperate battle against Irenicus?~ */
     IF ~~ THEN REPLY @2153 /* @2153 = ~Are you ready, Amber? I need to be sure that I can trust you to stay by my side.~ */ EXTERN M#AMBERJ AmberTreeOfLifeD
     IF ~~ THEN REPLY @2154 /* @2154 = ~You should not be here, Amber. This is not your fight, but mine alone.~ */ EXTERN M#AMBERJ AmberTreeOfLifeE
     IF ~~ THEN REPLY @2155 /* @2155 = ~This is too dangerous, Amber. I don't want you risking you newfound happiness with <PLAYER2> for this.~ */ EXTERN M#AMBERJ AmberTreeOfLifeI
  END
  
  IF ~~ THEN BEGIN M#AmberTreeOfLifeFriendship
     SAY @2156 /* @2156 = ~Amber, the wilful tiefling you encountered in Athkatla has grown to be your trusted ally and a dear friend. The compassion she has shown has helped you survive the pain and emptiness caused by Irenicus stealing your soul.  Together you have seen many battles, but is she willing to follow you now, in the face of almost certain death?~ */
     IF ~~ THEN REPLY @2153 /* @2153 = ~Are you ready, Amber? I need to be sure that I can trust you to stay by my side.~ */ EXTERN M#AMBERJ AmberTreeOfLifeG
     IF ~~ THEN REPLY @2154 /* @2154 = ~You should not be here, Amber. This is not your fight, but mine alone.~ */ EXTERN M#AMBERJ AmberTreeOfLifeH
     IF ~~ THEN REPLY @2157 /* @2157 = ~This is too dangerous, I don't want you risking yourself for my sake.~ */ EXTERN M#AMBERJ AmberTreeOfLifeJ
  END

  IF ~~ THEN BEGIN M#AmberTreeOfLife
     SAY @2158 /* @2158 = ~Amber, the wilful tiefling you encountered in Athkatla has earned her place at your side many times over. Together you have seen many battles, but is she willing to follow you now, in the face of almost certain death?~ */
     IF ~~ THEN REPLY @2153 /* @2153 = ~Are you ready, Amber? I need to be sure that I can trust you to stay by my side.~ */ EXTERN M#AMBERJ AmberTreeOfLifeA
     IF ~~ THEN REPLY @2154 /* @2154 = ~You should not be here, Amber. This is not your fight, but mine alone.~ */ EXTERN M#AMBERJ AmberTreeOfLifeN
     IF ~~ THEN REPLY @2159 /* @2159 = ~This is too dangerous even for someone as capable as you, Amber.~ */ EXTERN M#AMBERJ AmberTreeOfLifeK
  END

  IF ~~ THEN BEGIN AmberTreeOfLifeEnd
     SAY #58109
     IF ~~ THEN EXIT
  END
END

APPEND M#AMBERJ
 IF ~~ THEN BEGIN AmberTreeOfLifeL
   SAY @2160 /* @2160 = ~Hush, love. As long as I can be with you here and now, I do not care whether we will live or die today. And should we fall, I promise we will take Irenicus with us.~ */ 
   IF ~~ THEN EXTERN PLAYER1 AmberTreeOfLifeEnd
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeD
   SAY @2161 /* @2161 = ~I wish you'd already learned that you *can* count on me. I know that he will follow you no matter what, and I have no desire to part with him. Yet that is not the only reason I'm coming along.~ */ 
   IF ~~ THEN GOTO AmberTreeOfLifeF
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeE
   SAY @2162 /* @2162 = ~No, that's where you're wrong. I know that he will follow you no matter what, and I have no desire to part with him. Yet that is not the only reason I'm coming along.~ */ 
   IF ~~ THEN GOTO AmberTreeOfLifeB
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeI
   SAY @2163 /* @2163 = ~Love itself is but a gamble against all odds, but I'm happy that I took that risk with <PLAYER2>. I know that he will follow you no matter what, and I have no desire to part with him. Yet that is not the only reason I'm coming along.~ */ 
   IF ~~ THEN GOTO AmberTreeOfLifeB
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeG
   SAY @2164 /* @2164 = ~<CHARNAME>, you know better than well that that you *can* trust me. That's what friends are for, after all. To be there when you need them the most. And I am proud that I can call you my friend, <CHARNAME>.~ */ 
   = @2165 /* @2165 = ~There is more to it than friendship, though.~ */
   IF ~~ THEN GOTO AmberTreeOfLifeF
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeH
   SAY @2166 /* @2166 = ~No, that's where you're wrong. Is this not what friends are for? To be there for you when you need them the most. I am proud that I can call you my friend, <CHARNAME>, and I love you for accepting that friendship. I have met many who have not given me the chance.~ */ 
   = @2167 /* @2167 = ~However, there is more than our friendship that draws me to this battle.~ */
   IF ~~ THEN GOTO AmberTreeOfLifeB
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeJ
   SAY @2168 /* @2168 = ~But I will and you know that. That's what friends are for after all: to be there when you need them the most. I m really glad that I can call you my friend, <CHARNAME> and I love you for accepting that friendship. I have met many who have not been so willing to do that.~ */ 
   = @2167 /* @2167 = ~However, there is more than our friendship that draws me to this battle.~ */
   IF ~~ THEN GOTO AmberTreeOfLifeB
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeA
   SAY @2169 /* @2169 = ~I wish you'd already learned that you *can* count on me. If you have that little faith in me, how do you expect me to do my part here?~ */ 
   = @2170 /* @2170 = ~I should be able to trust you too, you know.~ */
   IF ~~ THEN REPLY @2171 /* @2171 = ~My apologies, Amber. I do trust you, but I suppose that I just wanted to say that this would be the time to leave, should you feel that this is not your fight.~ */ GOTO AmberTreeOfLifeB
   IF ~~ THEN REPLY @2172 /* @2172 = ~My apologies, Amber. I do trust you, but I need to know that you are not doing this for the wrong reasons.~ */ GOTO AmberTreeOfLifeF 
   IF ~GlobalGT("M#AmberLike","Locals",105)~ THEN REPLY @2173 /* @2173 = ~Then what are you waiting for? If you're not sure that you can trust me, there is no way that I can take you into what we are about to face.~ */ GOTO AmberTreeOfLifeM
   IF ~GlobalLT("M#AmberLike","Locals",106)~ THEN REPLY @2173 /* @2173 = ~Then what are you waiting for? If you're not sure that you can trust me, there is no way that I can take you into what we are about to face.~ */ DO ~SetGlobal("M#AmberTreeOfLifeBreakUp","GLOBAL",1)~ GOTO AmberTreeOfLifeC
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeK
   SAY @2174 /* @2174 = ~Let me be the judge of that, will you?~ */ 
   IF ~~ THEN GOTO AmberTreeOfLifeB
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeM
   SAY @2175 /* @2175 = ~No, I have my own reasons to come with you, even if they have little to with your charming personality.~ */
   IF ~~ THEN GOTO AmberTreeOfLifeB
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeN
   SAY @2176 /* @2176 = ~No, this is not just about your revenge, <CHARNAME>.~ */ 
   IF ~~ THEN GOTO AmberTreeOfLifeB
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeC
   SAY @2177 /* @2177 = ~You are right, I should have left a long time ago. I always did feel somewhat uneasy around you and I should have known better than to ignore my instincts.~ */
   COPY_TRANS PLAYER1 33
 END

 IF ~~ THEN BEGIN AmberTreeOfLifeB
   SAY @2178 /* @2178 = ~When I see what this Irenicus has done to you and to these elves and think of what he can do if he goes unchallenged.... I would never forgive myself if I didn't try to stop him.~ */
   = @2179 /* @2179 = ~I'm staying by your side, whether you wish it or not.~ */
   COPY_TRANS PLAYER1 33
 END
 
 IF ~~ THEN BEGIN AmberTreeOfLifeF
   SAY @2178 /* @2178 = ~When I see what this Irenicus has done to you and to these elves and think of what he can do if he goes unchallenged.... I would never forgive myself if I didn't try to stop him.~ */
   = @2180 /* @2180 = ~I am ready - lead on, <CHARNAME>.~ */
   COPY_TRANS PLAYER1 33
 END
END

// Hell
I_C_T PLAYER1 25 M#AmberHell 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)
 		 !Dead("m#amber")~ THEN
 @2181 /* @2181 = ~What just happened? Why... Why did we end up here, <CHARNAME>?~ */ 
 =
 @2182 /* @2182 = ~I guess there is a reason for us being here, but I would not want to stay here any longer than necessary. Let's get going.~ */ 
END

I_C_T HELLJON 7 M#AmberIrenicus 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)
 		 !Dead("m#amber")~ THEN
 @2183 /* @2183 = ~Come on, you don't seriously believe that you have a chance here, mageling?~ */
END

I_C_T HELLJON 8 M#AmberIrenicus 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)
 		 !Dead("m#amber")~ THEN
 @2183 /* @2183 = ~Come on, you don't seriously believe that you have a chance here, mageling?~ */
END

I_C_T HELLJON 9 M#AmberIrenicus 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)
 		 !Dead("m#amber")~ THEN
 @2183 /* @2183 = ~Come on, you don't seriously believe that you have a chance here, mageling?~ */
END

I_C_T HELLJON 10 M#AmberIrenicus 
 == M#AMBERJ IF ~InParty("M#Amber")
 		 See("M#Amber")
 		 !StateCheck("M#Amber",STATE_SLEEPING)
 		 !StateCheck("M#Amber",STATE_HELPLESS)
 		 !StateCheck("M#Amber",STATE_STUNNED)
 		 !StateCheck("M#Amber",STATE_SILENCED)
 		 !Dead("m#amber")~ THEN
 @2183 /* @2183 = ~Come on, you don't seriously believe that you have a chance here, mageling?~ */
END

// Phaere Innuendo

EXTEND_TOP  UDPHAE01 106

IF ~OR(2)
      Global("M#AmberRomanceActive","GLOBAL",1)
      Global("M#AmberRomanceActive","GLOBAL",2)
    Global("M#AmberMatch","GLOBAL",1)~ THEN REPLY @2184 /* @2184 = ~My companion, Amber.~ */ GOTO 110
END

// Slavers & slave
CHAIN
IF ~Global("M#AmberSlaver","Locals",1)~ THEN M#AMBERN M#AmberSlaver
@2185 /* @2185 = ~Hey! Where are you taking that man?~ */
DO ~SetGlobal("M#AmberSlaver","Locals",2)~
== SLSLAVE
@2186 /* @2186 = ~Aaaah... Good miss please help me... Please!~ */
== SLAVER2
@2187 /* @2187 = ~Silence! If you weren't worth more with your tongue still in your mouth, I'd have it cut out.~ */
=
@2188 /* @2188 = ~What is it to you girl? Get lost before you get in trouble.~ */
== M#AMBERN
@2189 /* @2189 = ~I'm not going anywhere until...~ */
== SLAVER2
@2190 /* @2190 = ~You looking for a fight?~ */
== SLAVER3
@2191 /* @2191 = ~Yeah! Iv yer lookin' ta getin ye throat slit yer in da righ place.~ */
== M#AMBERN
@2192 /* @2192 = ~Why don't you learn to speak first, and then come shoot your lip at me!~ */
DO ~SetDialog("m#amberj")
    ActionOverride("SlumsSlaver2",Enemy())
    ActionOverride("SlumsSlaver3",Enemy())~
EXIT              

// Romance conflicts
ADD_TRANS_TRIGGER BVICONI 31
~OR(9)
   !Global("M#AmberRomanceActive","GLOBAL",1)
   !Global("M#AmberMatch","GLOBAL",1)
   !InParty("m#amber")
   Dead("m#amber")
   !See("m#amber")
   StateCheck("m#amber",STATE_HELPLESS)
   StateCheck("m#amber",STATE_STUNNED)
   StateCheck("m#amber",STATE_SLEEPING)
   StateCheck("m#amber",STATE_SILENCED)~

EXTEND_BOTTOM BVICONI 31
IF ~Global("M#AmberRomanceActive","GLOBAL",1)
    Global("M#AmberMatch","GLOBAL",1)
    InParty("m#amber")
    !Dead("m#amber")
    See("m#amber")
    !StateCheck("m#amber",STATE_HELPLESS)
    !StateCheck("m#amber",STATE_STUNNED)
    !StateCheck("m#amber",STATE_SLEEPING)
    !StateCheck("m#amber",STATE_SILENCED)~ THEN EXTERN M#AMBERJ AmberViconiaConflict1Begin
END

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberViconiaConflict1Begin
    SAY @2193 /* @2193 = ~Boy, do I smell a rat here, <CHARNAME>. What foul tricks are you up to now, Viconia?~ */ 
    IF ~~ THEN EXTERN BVICONI M#AmberViconiaConflict1A
  END
END

APPEND BVICONI
  IF ~~ THEN BEGIN M#AmberViconiaConflict1A
    SAY @2194 /* @2194 = ~There is no need to get upset just because I say something you dare not, Amber.~ */
    =
    @2195 /* @2195 = ~<CHARNAME>, I have just expressed my admiration over you form, do not just stand there gawking. It does not become you.~ */
    IF ~~ THEN REPLY @2196 /* @2196 = ~Truly?  You find me desirable, do you?~ */ GOTO 172
    IF ~~ THEN REPLY @2197 /* @2197 = ~I don't have time for such talk, Viconia.  Keep your eyes to yourself.~ */ GOTO 173
  END
END

ADD_TRANS_TRIGGER BVICONI 33
~OR(9)
   !Global("M#AmberRomanceActive","GLOBAL",1)
   !Global("M#AmberMatch","GLOBAL",1)
   !InParty("m#amber")
   Dead("m#amber")
   !See("m#amber")
   StateCheck("m#amber",STATE_HELPLESS)
   StateCheck("m#amber",STATE_STUNNED)
   StateCheck("m#amber",STATE_SLEEPING)
   StateCheck("m#amber",STATE_SILENCED)~
 
EXTEND_BOTTOM BVICONI 33
IF ~Global("M#AmberRomanceActive","GLOBAL",1)
    Global("M#AmberMatch","GLOBAL",1)
    InParty("m#amber")
    !Dead("m#amber")
    See("m#amber")
    !StateCheck("m#amber",STATE_HELPLESS)
    !StateCheck("m#amber",STATE_STUNNED)
    !StateCheck("m#amber",STATE_SLEEPING)
    !StateCheck("m#amber",STATE_SILENCED)~ THEN EXTERN M#AMBERJ AmberViconiaConflict2Begin
END 
 
APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberViconiaConflict2Begin
    SAY @2198 /* @2198 = ~Poorly?~ */ 
    =
    @2199 /* @2199 = ~Come on, don't be so modest - I am sure you could understate it even more than that.~ */ 
    IF ~~ THEN EXTERN BVICONI M#AmberViconiaConflict2A
  END
END

APPEND BVICONI
  IF ~~ THEN BEGIN M#AmberViconiaConflict2A
    SAY @2200 /* @2200 = ~Mind your own business, fool. I will deal with your arrogance later.~ */
    =
    @2201 /* @2201 = ~Now, before that creature makes me lose my patience, will you accept my apology, <CHARNAME>?~ */
    IF ~~ THEN REPLY @2202 /* @2202 = ~You?  Apologize?  The great and haughty Viconia?~ */ GOTO 184
    IF ~~ THEN REPLY @2203 /* @2203 = ~(sigh) Is it not enough that I permit you to accompany us that I must put up with your constant drivel?~ */ GOTO 186
  END
END 
 
ADD_TRANS_TRIGGER BVICONI 63
~OR(9)
   !Global("M#AmberRomanceActive","GLOBAL",1)
   !Global("M#AmberMatch","GLOBAL",1)
   !InParty("m#amber")
   Dead("m#amber")
   !See("m#amber")
   StateCheck("m#amber",STATE_HELPLESS)
   StateCheck("m#amber",STATE_STUNNED)
   StateCheck("m#amber",STATE_SLEEPING)
   StateCheck("m#amber",STATE_SILENCED)~
 
EXTEND_BOTTOM BVICONI 63
IF ~Global("M#AmberRomanceActive","GLOBAL",1)
    Global("M#AmberMatch","GLOBAL",1)
    InParty("m#amber")
    !Dead("m#amber")
    See("m#amber")
    !StateCheck("m#amber",STATE_HELPLESS)
    !StateCheck("m#amber",STATE_STUNNED)
    !StateCheck("m#amber",STATE_SLEEPING)
    !StateCheck("m#amber",STATE_SILENCED)~ THEN EXTERN M#AMBERJ AmberViconiaConflict3Begin
END 

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberViconiaConflict3Begin
    SAY @2204 /* @2204 = ~Another tale of murder and deceit, is it Viconia?~ */ 
    IF ~~ THEN EXTERN BVICONI M#AmberViconiaConflict3A
  END
END

APPEND BVICONI
  IF ~~ THEN BEGIN M#AmberViconiaConflict3A
    SAY @2205 /* @2205 = ~Had our parts been reversed with you fleeing into the depths of my native realm, you would not have lasted a day. Only those who are strong have a chance of surviving in the Underdark, and weaklings like you...~ */
    =
    @2206 /* @2206 = ~ Well I really don't think that you have the stomach to hear the excruciating details of your certain demise.~ */
  IF ~~ THEN EXTERN M#AMBERJ AmberViconiaConflict3B
  END
END 

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberViconiaConflict3B
    SAY @2207 /* @2207 = ~Just try me.~ */
    IF ~~ THEN EXTERN BVICONI M#AmberViconiaConflict3C
  END
END

APPEND BVICONI
  IF ~~ THEN BEGIN M#AmberViconiaConflict3C
    SAY @2208 /* @2208 = ~No, I don't have time for you, or your stupidity. Be gone now.~ */
  IF ~~ THEN EXTERN M#AMBERJ AmberViconiaConflict3D
  END
END 

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberViconiaConflict3D
    SAY @2209 /* @2209 = ~Fine, I'm not interested in your story anyway.~ */
    IF ~~ THEN EXTERN BVICONI M#AmberViconiaConflict3E
  END
END

APPEND BVICONI
  IF ~~ THEN BEGIN M#AmberViconiaConflict3E
    SAY @2210 /* @2210 = ~So, <CHARNAME>, now that the babbling fool has been dealt with, are you willing to hear me out?~ */
    IF ~~ THEN REPLY @2211 /* @2211 = ~Yes, please tell your tale.~ */ GOTO 217
    IF ~~ THEN REPLY @2212 /* @2212 = ~I'm not interested in another one of your stories, Viconia.~ */ GOTO 221
    IF ~~ THEN REPLY @2213 /* @2213 = ~Not now... tell me some other time, perhaps.~ */ GOTO 222
  END
END 

ADD_TRANS_TRIGGER BAERIE 218
~OR(9)
   !Global("M#AmberRomanceActive","GLOBAL",1)
   !Global("M#AmberMatch","GLOBAL",1)
   !InParty("m#amber")
   Dead("m#amber")
   !See("m#amber")
   StateCheck("m#amber",STATE_HELPLESS)
   StateCheck("m#amber",STATE_STUNNED)
   StateCheck("m#amber",STATE_SLEEPING)
   StateCheck("m#amber",STATE_SILENCED)~
 
EXTEND_BOTTOM BAERIE 218
IF ~Global("M#AmberRomanceActive","GLOBAL",1)
    Global("M#AmberMatch","GLOBAL",1)
    InParty("m#amber")
    !Dead("m#amber")
    See("m#amber")
    !StateCheck("m#amber",STATE_HELPLESS)
    !StateCheck("m#amber",STATE_STUNNED)
    !StateCheck("m#amber",STATE_SLEEPING)
    !StateCheck("m#amber",STATE_SILENCED)~ THEN EXTERN M#AMBERJ AmberAerieConflict1Begin
END 

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberAerieConflict1Begin
    SAY @2214 /* @2214 = ~Your life is entirely in your own hands. If you don't like it the way it is, you should do something about it and not just wait for <CHARNAME> to change it for you.~ */ 
    IF ~~ THEN EXTERN BAERIE M#AmberAerieConflict1A
  END
END

APPEND BAERIE
  IF ~~ THEN BEGIN M#AmberAerieConflict1A
    SAY @2215 /* @2215 = ~But... But I-I was not asking <CHARNAME> to do anything for me. I just asked what he w-wanted.~ */
    IF ~~ THEN EXTERN M#AMBERJ AmberAerieConflict1B
  END
END

APPEND M#AMBERJ
  IF ~~ THEN BEGIN AmberAerieConflict1B
    SAY @2216 /* @2216 = ~Then, by all means, do so, but you have made it more than obvious what you want him to answer.~ */
    IF ~~ THEN EXTERN BAERIE M#AmberAerieConflict1C
  END
END

APPEND BAERIE
  IF ~~ THEN BEGIN M#AmberAerieConflict1C
    SAY @2217 /* @2217 = ~T-That was not my intent. I... I am just so tired of all this killing. Don't you ever just want to stop, <CHARNAME>? ~ */
    IF ~~ THEN REPLY @2218 /* @2218 = ~Aye, I do.  Nothing would please me more than to stop all this violence.~ */ GOTO 219
    IF ~~ THEN REPLY @2219 /* @2219 = ~Sometimes battle is required, Aerie... it is not something that I have a choice about.~ */ GOTO 220 
    IF ~~ THEN REPLY @2220 /* @2220 = ~Struggle and combat bring strength, Aerie... and I have needed all my strength just to survive!~ */ GOTO 221
    IF ~~ THEN REPLY @2221 /* @2221 = ~More whining, Aerie?  Please keep it to yourself, will you?~ */ GOTO 222
  END
END

// Minor interjections commoners, peasants etc.

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(4,3)
Global("M#Spoiled1Amber","AR0700",0)~ THEN Spoiled1 Spoiled1Amber
@2222 /* @2222 = ~Hey, are you one of them circus folk? You sure look weird enough to be. Not that you'd be worth the ticket though. They'll have to come up with something more interesting than that.~ */
DO ~SetGlobal("M#Spoiled1Amber","AR0700",1)~
== M#AMBERJ
@2223 /* @2223 = ~I really don't care if you don't find me interesting or not, boy. And besides, I have nothing to do with this circus.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~See("M#Amber")
InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#Noblem1Amber","AR0700",0)~ THEN NOBLEM1 Noblem1Amber
@2224 /* @2224 = ~You must be the prettiest redheaded elf I have ever seen. There would not happen to be any room in your calendar, for...~ */
= @2225 /* @2225 = ~By the Nine Hells! You are no elf! Get away from me!~ */
DO ~SetGlobal("M#Noblem1Amber","AR0700",1)~
== M#AMBERJ
@2226 /* @2226 = ~You get away from me! It's not as if it was me who came on to you!~ */
EXIT

CHAIN
IF WEIGHT #-1 ~See("M#Amber")
InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#Noblew1Amber","AR0700",0)~ THEN NOBLEW1 Noblew1Amber
@2227 /* @2227 = ~Erm... Did I just see that thing on your arm move? That cannot be true. It is unnatural!~ */
DO ~SetGlobal("M#Noblew1Amber","AR0700",1)~
== M#AMBERJ
@2228 /* @2228 = ~Well, in that case it must have been your eyes playing tricks on you. ~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#gmtown02Amber","LOCALS",0)~ THEN GMTOWN02 Gmtown02Amber
@2229 /* @2229 = ~When I'm in the army we'll be crushing all freaks and deviants like you! Yes, we will! I'm going to join the army, you know.~ */
DO ~SetGlobal("M#gmtown02Amber","LOCALS",1)~
== M#AMBERJ
@2230 /* @2230 = ~I'm sure they'll be delighted to have you - blind enthusiasm is exactly what they are looking for. I bet that they'll put you right into the front ranks.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#ftown2Amber","LOCALS",0)~ THEN FTOWN2 Ftown2Amber
@2231 /* @2231 = ~Oh, my... How is it that you manage to keep your hair in such a nice shape, my girl? This weather is just murder to mine.~ */
DO ~SetGlobal("M#ftown2Amber","LOCALS",1)~
== M#AMBERJ
@2232 /* @2232 = ~Just keep your hands away from my hair, missy!~ */
== FTOWN2
@2233 /* @2233 = ~Eww... You are not a little girl... Get away from me, you freak!~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#gchild01Amber","LOCALS",0)~ THEN GCHILD01 gchild01Amber
@2234 /* @2234 = ~Hey! Can I have eyes like that? I wanna! My father's real rich and he'll get me anything I want.~ */
DO ~SetGlobal("M#gchild01Amber","LOCALS",1)~
== M#AMBERJ
@2235 /* @2235 = ~I would be all for trading my eyes for yours, boy. If the whole idea wasn't completely idiotic, that is.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#gmtown01Amber","LOCALS",0)~ THEN GMTOWN01 Gmtown01Amber
@2236 /* @2236 = ~They been letting everyone out of the jail, I see! Even you. I heard them say you are a demon. I don't know what will come of this city if they let demons run loose on the streets!~ */
DO ~SetGlobal("M#gmtown01Amber","LOCALS",1)~
== M#AMBERJ
@2237 /* @2237 = ~Idiot... If there truly were demons running loose on the streets, you would be faring a lot worse.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#gftown02Amber","LOCALS",0)~ THEN GFTOWN02 Gftown02Amber
@2238 /* @2238 = ~I.. I don't think I'm feeling too well. I wonder if there a storm coming? Can you feel it too?~ */
DO ~SetGlobal("M#gftown02Amber","LOCALS",1)~
== M#AMBERJ
@2239 /* @2239 = ~I sure don't feel anything out of the ordinary. Must be just in your head.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#gftown01Amber","LOCALS",0)~ THEN GFTOWN02 Gftown01Amber
@2240 /* @2240 = ~It getting worse! Not only are demi-humans overrunning our fair city, but demi-fiends too! Curse all you pointy-ears! ~ */
DO ~SetGlobal("M#gftown01Amber","LOCALS",1)~
== M#AMBERJ
@2241 /* @2241 = ~Go preach your prejudice somewhere else, dolt.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#gchild02Amber","LOCALS",0)~ THEN GCHILD02 gchild02Amber
@2242 /* @2242 = ~Eow! What's wrong with your arm? That tattoo thing is moving!~ */
DO ~SetGlobal("M#gchild02Amber","LOCALS",1)~
== M#AMBERJ
@2243 /* @2243 = ~Just get lost, brat...~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#gnoblem1Amber","LOCALS",0)~ THEN GNOBLEM1 gnoblem1Amber
@2244 /* @2244 = ~This is just downright outrageous! Why do the guards let all this rabble here? Someone is clearly not up to his task. Your kind should never be allowed to enter the respectable districts.~ */
DO ~SetGlobal("M#gnoblem1Amber","LOCALS",1)~
== M#AMBERJ
@2245 /* @2245 = ~Well, if it makes you feel any better, I'm not exactly comfortable sharing the same district with *your* kind, either.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#dbeggar2Amber","LOCALS",0)~ THEN DBEGGAR2 dbeggar2Amber
@2246 /* @2246 = ~Please me Lady, could ye spare a coin for a beggar in dire need?~ */
DO ~SetGlobal("M#dbeggar2Amber","LOCALS",1)~
== M#AMBERJ
@2247 /* @2247 = ~Sure. Here, take this.~ */
== DBEGGAR2
@2248 /* @2248 = ~Agh...Y'are no elf or no human neither! I don't want to take ya' gold. No, keep it - I dare not take it. I'm cursed enough as it is. Just get away from me, evil one!~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#dsailor1Amber","LOCALS",0)~ THEN DSAILOR1 dsailor1Amber
@2249 /* @2249 = ~Don't ye be givin' me ship that evil eye of yours, girlie! I know a thing or two about yer kind, stormbringer! I bet all that bad weather I've been havin' is due one of one of yer kind givin' me ship the eye.~ */
DO ~SetGlobal("M#dsailor1Amber","LOCALS",1)~
== M#AMBERJ
@2250 /* @2250 = ~I've been looking at no ships, mate. If you've got bad luck, it must be due your foul manners.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#druff1Amber","LOCALS",0)~ THEN DRUFF1 druff1Amber
@2251 /* @2251 = ~Ye be a odd bird, redhead. Not that I mind, I like em in w'evar shape 'n' colour they come. How 'bout it - two coppers should do fine, awright? I bet there aren't a lot of takers for ye.~ */
DO ~SetGlobal("M#druff1Amber","LOCALS",1)~
== M#AMBERJ
@2252 /* @2252 = ~See this blade on my hip? Its point is the closest you'll ever get to my charms. So why don't you just get lost before I'll introduce you to each other, skunk.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#druff2Amber","LOCALS",0)~ THEN DRUFF2 druff2Amber
@2253 /* @2253 = ~It's a demon! It is! I'll wager me head for it! Never saw a fouler thing!~ */
DO ~SetGlobal("M#druff2Amber","LOCALS",1)~
== M#AMBERJ
@2254 /* @2254 = ~The pleasure of seeing the foulest thing ever is all mine, dwarf.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#dftown2Amber","LOCALS",0)~ THEN DFTOWN2 dftown2Amber
@2255 /* @2255 = ~You-You would not be something that escaped from the wizard Mae'Var has been hosting, would you?~ */
DO ~SetGlobal("M#dftown2Amber","LOCALS",1)~
== M#AMBERJ
@2256 /* @2256 = ~I've escaped from a lot of places and people, but I don't think that wizard is one of them.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#bmtown3Amber","LOCALS",0)~ THEN BMTOWN3 bmtown3Amber
@2257 /* @2257 = ~Oh, my! There is a murderer on the loose and yet they let creatures like you walk free! The guards must be really busy indeed.~ */
DO ~SetGlobal("M#bmtown3Amber","LOCALS",1)~
== M#AMBERJ
@2258 /* @2258 = ~Well, if it's this murderer of yours that is keeping the guards from pestering me for things is did not do, I think I owe him my thanks.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#bftown2Amber","LOCALS",0)~ THEN BFTOWN2 bftown2Amber
@2259 /* @2259 = ~Aaaaaeei! What's wrong with your eyes? Y-you haven't murdered anyone, have you? Flaying people is certainly a monster's work. A monster... or a demon? W-what was it that my uncle said about the eyes of a demon?~ */
DO ~SetGlobal("M#bftown2Amber","LOCALS",1)~
== M#AMBERJ
@2260 /* @2260 = ~Well, I could certainly think of a reason why somebody would want to flay *you* alive.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#bprost2Amber","LOCALS",0)~ THEN BPROST2 bprost2Amber
@2261 /* @2261 = ~Go away you... you thing. You are scaring away my customers.~ */
DO ~SetGlobal("M#bprost2Amber","LOCALS",1)~
== M#AMBERJ
@2262 /* @2262 = ~Not only your customers, I see.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#burch2Amber","LOCALS",0)~ THEN BURCH2 burch2Amber
@2263 /* @2263 = ~MY MOTHER SAYS THAT ALL DEVIANTS SHOULD BE SENT TO SPELLHOLD!~ */
DO ~SetGlobal("M#burch2Amber","LOCALS",1)~
== M#AMBERJ
@2264 /* @2264 = ~Well, I'll see you there, then.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#postul4Amber","LOCALS",0)~ THEN POSTUL4 postul4Amber
@2265 /* @2265 = ~This is holy ground you walk on, fiendling, or whatever you are. You should not be here.~ */
DO ~SetGlobal("M#postul4Amber","LOCALS",1)~
== M#AMBERJ
@2266 /* @2266 = ~And why not? Don't you think your god would strike me down if he disapprove of me?~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#postul6Amber","LOCALS",0)~ THEN POSTUL6 postul6Amber
@2267 /* @2267 = ~Hey, you with the red hair... Have the Cowled ones turned a blind eye on a deviant again? They should be more careful.~ */
DO ~SetGlobal("M#postul6Amber","LOCALS",1)~
== M#AMBERJ
@2268 /* @2268 = ~Blind eye indeed...~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#postul3Amber","LOCALS",0)~ THEN POSTUL3 postul3Amber
@2269 /* @2269 = ~Oh! The doomsday is surely upon us when fiends walk the earth in broad daylight! Lathander help us!~ */
DO ~SetGlobal("M#postul3Amber","LOCALS",1)~
== M#AMBERJ
@2270 /* @2270 = ~This is just the reason why I don't usually visit these parts of the city. Too many crazy people.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
RandomNum(2,1)
Global("M#postul5Amber","LOCALS",0)~ THEN POSTUL6 postul5Amber
@2271 /* @2271 = ~Lathander be blessed! Is there a curse upon you, woman? I am sure a priest of the Morninglord could help you with your affliction.~ */
DO ~SetGlobal("M#postul5Amber","LOCALS",1)~
== M#AMBERJ
@2272 /* @2272 = ~I doubt that there will ever be a cleric of any god that can help me. And I don't think I need your advice, either.~ */
EXIT