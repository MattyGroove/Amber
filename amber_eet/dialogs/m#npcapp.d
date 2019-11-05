// Adds lines to the existing NPC's dialogs.
// CONTENTS:
// APPENDs to Aerie's dialog files
// APPENDs to Anomen's dialog files
// APPENDs to Cernd's dialog files
// APPENDs to Edwin's dialog files
// APPENDs to Haer'Dals' dialog files
// APPENDs to Imoen2's dialog files
// APPENDs to Jaheira's dialog files
// APPENDs to Jan's dialog files
// APPENDs to Keldorn's dialog files
// APPENDs to Korgan's dialog files
// APPENDs to Mazzy's dialog files
// APPENDs to Minsc's dialog files
// APPENDs to Nalia's dialog files
// APPENDs to Valygar's dialog files
// APPENDs to Viconia's dialog files
// APPENDs to Yoshimo's dialog files
// APPENDs to Player1's dialog file
// APPENDs to Player2's dialog file
// "Demon in Athkatla" quest
// Black Market thief
// Cromwell
// Kiddnap quest

// APPENDs to Aerie's dialog files
APPEND ~AERIEJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
      CombatCounter(0)
      !StateCheck(Player1,STATE_HELPLESS)
      !StateCheck(Player1,STATE_STUNNED)
      !StateCheck(Player1,STATE_SLEEPING)
      !StateCheck(Player1,STATE_SILENCED)
      Global("M#AerieKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
    SAY @4000 /* @4000 = ~Oh my! W-why would anyone do something like this? All of a sudden she is just gone! This is awful!~ */
    =
    @4001 /* @4001 = ~<CHARNAME>, we must help Amber. I-I think she was taken by slavers - Uncle Quayle has warned me about them. We must find where they have taken Amber.~ */
    IF ~AreaCheck("AR0400")~ THEN DO ~SetGlobal("M#AerieKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkSlums
    IF ~!AreaCheck("AR0400")
        !AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#AerieKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkNotSlums
    IF ~AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#AerieKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkTrademeet
  END

  IF ~~ THEN BEGIN M#KidnapRemarkSlums
    SAY @4002 /* @4002 = ~Maybe... maybe we should start looking for them here in the slums. Uncle Quayle always said that that's where all the trouble in this city starts.~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkNotSlums
    SAY @4003 /* @4003 = ~Maybe... maybe we should start looking for them in the slums. Uncle Quayle always said that that's where all the trouble in this city starts.~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkTrademeet
    SAY @4004 /* @4004 = ~Maybe... maybe we should ask the head of this town for help.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#T1
    SAY @4005 /* @4005 = ~I-I'm glad that we're helping her. Poor thing, I understand how she must feel about people treating her like a fr-freak.~ */
  IF ~~ THEN EXTERN M#AMBER T1J
  IF ~InParty("Imoen2")
      See("Imoen2")
      !StateCheck("Imoen2",STATE_SLEEPING)
      !StateCheck("Imoen2",STATE_HELPLESS)
      !StateCheck("Imoen2",STATE_STUNNED)
      !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
  IF ~InParty("Viconia")
      See("Viconia")
      !StateCheck("Viconia",STATE_SLEEPING)
      !StateCheck("Viconia",STATE_HELPLESS)
      !StateCheck("Viconia",STATE_STUNNED)
      !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
  IF ~InParty("Korgan")
      See("Korgan")
      !StateCheck("Korgan",STATE_SLEEPING)
      !StateCheck("Korgan",STATE_HELPLESS)
      !StateCheck("Korgan",STATE_STUNNED)
      !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
  IF ~InParty("Yoshimo")
      See("Yoshimo")
      !StateCheck("Yoshimo",STATE_SLEEPING)
      !StateCheck("Yoshimo",STATE_HELPLESS)
      !StateCheck("Yoshimo",STATE_STUNNED)
      !StateCheck("Yoshimo",STATE_SILENCED)~ THEN EXTERN YOSHJ M#T1
  IF ~InParty("Mazzy")
      See("Mazzy")
      !StateCheck("Mazzy",STATE_SLEEPING)
      !StateCheck("Mazzy",STATE_HELPLESS)
      !StateCheck("Mazzy",STATE_STUNNED)
      !StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN MAZZYJ M#T1
  END

  IF ~~ THEN BEGIN M#T1B
    SAY @4006 /* @4006 = ~I-I would like to help her and I understand how she must feel about people treating her like a fr-freak. But don't you think that she would put us all into danger with her presence?~ */
  IF ~~ THEN EXTERN M#AMBER T1J
  IF ~InParty("Imoen2")
      See("Imoen2")
      !StateCheck("Imoen2",STATE_SLEEPING)
      !StateCheck("Imoen2",STATE_HELPLESS)
      !StateCheck("Imoen2",STATE_STUNNED)
      !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
  IF ~InParty("Viconia")
      See("Viconia")
      !StateCheck("Viconia",STATE_SLEEPING)
      !StateCheck("Viconia",STATE_HELPLESS)
      !StateCheck("Viconia",STATE_STUNNED)
      !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
  IF ~InParty("Korgan")
      See("Korgan")
      !StateCheck("Korgan",STATE_SLEEPING)
      !StateCheck("Korgan",STATE_HELPLESS)
      !StateCheck("Korgan",STATE_STUNNED)
      !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
  IF ~InParty("Yoshimo")
      See("Yoshimo")
      !StateCheck("Yoshimo",STATE_SLEEPING)
      !StateCheck("Yoshimo",STATE_HELPLESS)
      !StateCheck("Yoshimo",STATE_STUNNED)
      !StateCheck("Yoshimo",STATE_SILENCED)~ THEN EXTERN YOSHJ M#T1
  IF ~InParty("Mazzy")
      See("Mazzy")
      !StateCheck("Mazzy",STATE_SLEEPING)
      !StateCheck("Mazzy",STATE_HELPLESS)
      !StateCheck("Mazzy",STATE_STUNNED)
      !StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN MAZZYJ M#T1
  END

  IF ~~ THEN BEGIN M#T10Q
    SAY @4007 /* @4007 = ~I-I think you should be more thankful. <CHARNAME> risked a lot to save you and you have repaid <PRO_HIMHER> with nothing but disregard. T-That is so very rude.~ */
    IF ~~ THEN EXTERN M#AMBERN T10R
  END

  IF ~~ THEN BEGIN M#T10S
    SAY @4008 /* @4008 = ~Maybe you should start thinking before acting and try to be less rude. Then you would not have to come and apologise afterwards.~ */
    IF ~~ THEN EXTERN M#AMBERN T10T
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4009 /* @4009 = ~Oh... I-I am so sorry, <CHARNAME>. I did not mean to... interrupt.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END

  IF ~~ THEN BEGIN M#P2LT2
      SAY @4010 /* @4010 = ~Oh... I-I am so sorry, <PLAYER2>. I did not mean to... interrupt.~ */
    IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END

  IF ~~ THEN BEGIN M#FLT5Aer2
    SAY @4011 /* @4011 = ~Good heavens, <CHARNAME>, you really are hurt!~ */
    IF ~~ THEN GOTO M#FLT5Aer4
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#FLT5Aer3
  END
  
  IF ~~ THEN BEGIN M#FLT5Aer3
    SAY @4012 /* @4012 = ~J-just hold on a moment now... just keep still and let me take care of those wounds there...~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
          Spell(Player1,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)  
    	Spell(Player1,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1) 
    	Spell(Player1,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#FLT5Aer4
    SAY @4013 /* @4013 = ~I-I am afraid I am too weak to help you now... Just hold on, <CHARNAME>, we will not let you go.~ */
    IF ~~ THEN EXTERN M#AMBERN FLT5E
    IF ~InParty("Anomen")
        See("Anomen")
        !Dead("Anomen")
        !StateCheck("Anomen",STATE_PANIC)
        !StateCheck("Anomen",STATE_BERSERK)
        !StateCheck("Anomen",STATE_CHARMED)
        !StateCheck("Anomen",STATE_CONFUSED)
        !StateCheck("Anomen",STATE_HELPLESS)
        !StateCheck("Anomen",STATE_STUNNED)
        !StateCheck("Anomen",STATE_SLEEPING)
        !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Ano1
    IF ~InParty("Viconia")
        See("Viconia")
        !Dead("Viconia")
        !StateCheck("Viconia",STATE_PANIC)
        !StateCheck("Viconia",STATE_BERSERK)
        !StateCheck("Viconia",STATE_CHARMED)
        !StateCheck("Viconia",STATE_CONFUSED)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Vic1
    IF ~OR(3)
    	Class(Player2,CLERIC_ALL)
          Class(Player2,PALADIN)
          Class(Player2,RANGER_ALL)
        !Kit(Player2,INQUISITOR)
        !Kit(Player2,UNDEADHUNTER)
        CheckStat(Player2,0,MORALEBREAK)	// Bio-NPC, Hubelpot, Kivan of Shilmista
        !Name("SK#NEHT",Player2)		// Neh'Taniel Blacksheep (paladin)
        !Name("Wikaede",Player2) 		// Wikaede CoM (cleric)
        !Name("Robilard",Player2)		// Robillard (TDD) Modlist (class unknown)		
        !Name("Avaunis",Player2)		// Auvanis (TDD) Modlist (class unknown)		
        !Name("Adario",Player2)			// Adario Kalvaras (TDD) Modlist (class unknown)			
        !Name("KIVANDD",Player2)		// Kivan (TDD) Modlist (ranger)			
        !Name("yeslicdd",Player2) 		// Yeslick (TDD) Modlist (cleric)
        !Name("BOLIVAR",Player2) 		// Bolivar (SoS) FW (class unknown)		
        !Name("TOMASTM",Player2) 		// Tomas (SoS) FW (class unknown)
        !Name("R#ALLISON",Player2) 		// Allison RPGDungeon (druid)
        !Name("Kari",Player2) 			// Kari CoM (druid)
        !Name("Saerileth",Player2)		// Saerileth (paladin)
        See(Player2)
        HPGT(Player2,10)
        !StateCheck(Player2,STATE_PANIC)
        !StateCheck(Player2,STATE_BERSERK)
        !StateCheck(Player2,STATE_CHARMED)
        !StateCheck(Player2,STATE_CONFUSED)
        !StateCheck(Player2,STATE_HELPLESS)
        !StateCheck(Player2,STATE_STUNNED)
        !StateCheck(Player2,STATE_SLEEPING)
        !StateCheck(Player2,STATE_SILENCED)~ THEN DO ~SetGlobal("M#Player2Help","GLOBAL",1)
        					      ActionOverride("m#amber",SetDialog("m#amberj"))~ GOTO M#FLT5Aer5
    IF ~InParty("Cernd")
        See("Cernd")
        !Dead("Cernd")
        !StateCheck("Cernd",STATE_PANIC)
        !StateCheck("Cernd",STATE_BERSERK)
        !StateCheck("Cernd",STATE_CHARMED)
        !StateCheck("Cernd",STATE_CONFUSED)
        !StateCheck("Cernd",STATE_HELPLESS)
        !StateCheck("Cernd",STATE_STUNNED)
        !StateCheck("Cernd",STATE_SLEEPING) 
        !StateCheck("Cernd",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Cer1
  END
  
  IF ~~ THEN BEGIN M#FLT5Aer5
      SAY @4014 /* @4014 = ~Perhaps <PLAYER2> could help?~ */
      IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Aer2
    SAY @4015 /* @4015 = ~Good heavens, <PLAYER2>, you really are hurt!~ */
    IF ~~ THEN GOTO M#P2FLT5Aer4
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#P2FLT5Aer3
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Aer3
    SAY @4012 /* @4012 = ~J-just hold on a moment now... just keep still and let me take care of those wounds there...~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
          Spell(Player2,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)  
    	Spell(Player2,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2) 
    	Spell(Player2,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Aer4
    SAY @4016 /* @4016 = ~I-I am afraid I am too weak to help you now... Just hold on, <PLAYER2>, we will not let you go.~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT5E
    IF ~InParty("Anomen")
        See("Anomen")
        !Dead("Anomen")
        !StateCheck("Anomen",STATE_PANIC)
        !StateCheck("Anomen",STATE_BERSERK)
        !StateCheck("Anomen",STATE_CHARMED)
        !StateCheck("Anomen",STATE_CONFUSED)
        !StateCheck("Anomen",STATE_HELPLESS)
        !StateCheck("Anomen",STATE_STUNNED)
        !StateCheck("Anomen",STATE_SLEEPING)
        !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Ano1
    IF ~InParty("Viconia")
        See("Viconia")
        !Dead("Viconia")
        !StateCheck("Viconia",STATE_PANIC)
        !StateCheck("Viconia",STATE_BERSERK)
        !StateCheck("Viconia",STATE_CHARMED)
        !StateCheck("Viconia",STATE_CONFUSED)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Vic1
    IF ~OR(3)
    	  Class(Player1,CLERIC_ALL)
          Class(Player1,PALADIN)
          Class(Player1,RANGER_ALL)
                !Kit(Player1,INQUISITOR)
        !Kit(Player1,UNDEADHUNTER)
        See(Player1)
        !StateCheck(Player1,STATE_PANIC)
        !StateCheck(Player1,STATE_BERSERK)
        !StateCheck(Player1,STATE_CHARMED)
        !StateCheck(Player1,STATE_CONFUSED)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)~ THEN DO ~SetGlobal("M#Player1Help","GLOBAL",1)
          				              ActionOverride("m#amber",SetDialog("m#amberj"))~ GOTO M#P2FLT5Aer5		      
    IF ~InParty("Cernd")
        See("Cernd")
        !Dead("Cernd")
        !StateCheck("Cernd",STATE_PANIC)
        !StateCheck("Cernd",STATE_BERSERK)
        !StateCheck("Cernd",STATE_CHARMED)
        !StateCheck("Cernd",STATE_CONFUSED)
        !StateCheck("Cernd",STATE_HELPLESS)
        !StateCheck("Cernd",STATE_STUNNED)
        !StateCheck("Cernd",STATE_SLEEPING) 
        !StateCheck("Cernd",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Cer1
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Aer5
    SAY @4017 /* @4017 = ~Perhaps <CHARNAME> could help?~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#FLT2AerieB
    SAY @4018 /* @4018 = ~Aeeeeei! <GABBER>! What are you doing here? (Blushing, Aerie runs for a blanket and hastily covers her slender body with it.) W-Why did you sneak up on me like that? Have you no shame?~ */
    IF ~~ THEN REPLY @4019 /* @4019 = ~(Step out of the shadows to the moonlight.)  Ehhh.... I am sorry Aerie. I fancied a bath and I did not realise that you did too. But if you are finished - do you mind if I take my bath now?~ */ GOTO M#FLT2AerieC
    IF ~~ THEN REPLY @4020 /* @4020 = ~Umm... excuse me... I think that I should go now. (Go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~~ THEN REPLY @4021 /* @4021 = ~(Go back to the camp, really fast.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     						               ActionOverride("m#amber",SetDialog("m#amberj"))
      							       RestParty()~ EXIT
  END
    
  IF ~~ THEN BEGIN M#FLT2AerieC
    SAY @4022 /* @4022 = ~(Aerie's blue eyes widen in shock as you come closer.) How dare you? Leave me alone! (Aerie starts sobbing and runs away from you.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
      		   RestParty()~ EXIT
  END
  IF ~~ THEN BEGIN M#P2FLT2AerieB
    SAY @4023 /* @4023 = ~Aeeeeei! <GABBER>! What are you doing here? (Blushing, Aerie runs for a blanket and hastily covers her slender body with it.) W-Why did you sneak on me like that? Have you no shame?~ */
    IF ~~ THEN REPLY @4019 /* @4019 = ~(Step out of the shadows to the moonlight.)  Ehhh.... I am sorry Aerie. I fancied a bath and I did not realise that you did too. But if you are finished - do you mind if I take my bath now?~ */ GOTO M#P2FLT2AerieC
    IF ~~ THEN REPLY @4020 /* @4020 = ~Umm... excuse me... I think that I should go now. (Go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~~ THEN REPLY @4021 /* @4021 = ~(Go back to the camp, really fast.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    							       ActionOverride("m#amber",SetDialog("m#amberj"))
      							       RestParty()~ EXIT
  END
  IF ~~ THEN BEGIN M#P2FLT2AerieC
    SAY @4024 /* @4024 = ~(Aerie's blue eyes widen in shock as you come closer) How dare you? Leave me alone! (Aerie starts sobbing and runs away from you.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
      		   RestParty()~ EXIT
  END
END

// APPENDs to Anomen's dialog files
APPEND ~ANOMENJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
      CombatCounter(0)
      !StateCheck(Player1,STATE_HELPLESS)
      !StateCheck(Player1,STATE_STUNNED)
      !StateCheck(Player1,STATE_SLEEPING)
      !StateCheck(Player1,STATE_SILENCED)
      Global("M#AnomenKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
    SAY @4025 /* @4025 = ~What arrogance! That witch of a woman has some guts to sneak upon us and leave her henchmen to do her dirty work while sweeping away with her prize like a petty thief. I might not fully agree with your decision to keep Amber's company, but an insult like this should not be overlooked.~ */
    =
    @4026 /* @4026 = ~The slavers of Athkatla, that the Order has fought to destroy, are known to deal with exotic merchandise... You are likely to find these slavers among their kinsmen: robbers, snitches and other lowlife scum.~ */
    IF ~~ THEN DO ~SetGlobal("M#AnomenKidnapResponse","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN M#T1
    SAY @4027 /* @4027 = ~You are not planning to take this thing with us, are you? I don't know what it is, but it is an abomination of natural laws, of that I am sure.~ */
  IF ~~ THEN EXTERN M#AMBER T1J
  IF ~InParty("Imoen2")
      See("Imoen2")
      !StateCheck("Imoen2",STATE_SLEEPING)
      !StateCheck("Imoen2",STATE_HELPLESS)
      !StateCheck("Imoen2",STATE_STUNNED)
      !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
  IF ~InParty("Viconia")
      See("Viconia")
      !StateCheck("Viconia",STATE_SLEEPING)
      !StateCheck("Viconia",STATE_HELPLESS)
      !StateCheck("Viconia",STATE_STUNNED)
      !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
  IF ~InParty("Korgan")
      See("Korgan")
      !StateCheck("Korgan",STATE_SLEEPING)
      !StateCheck("Korgan",STATE_HELPLESS)
      !StateCheck("Korgan",STATE_STUNNED)
      !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
  IF ~InParty("Yoshimo")
      See("Yoshimo")
      !StateCheck("Yoshimo",STATE_SLEEPING)
      !StateCheck("Yoshimo",STATE_HELPLESS)
      !StateCheck("Yoshimo",STATE_STUNNED)
      !StateCheck("Yoshimo",STATE_SILENCED)~ THEN EXTERN YOSHJ M#T1
  IF ~InParty("Mazzy")
      See("Mazzy")
      !StateCheck("Mazzy",STATE_SLEEPING)
      !StateCheck("Mazzy",STATE_HELPLESS)
      !StateCheck("Mazzy",STATE_STUNNED)
      !StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN MAZZYJ M#T1
  IF ~InParty("Aerie")
      See("Aerie")
      !StateCheck("Aerie",STATE_SLEEPING)
      !StateCheck("Aerie",STATE_HELPLESS)
      !StateCheck("Aerie",STATE_STUNNED)
      !StateCheck("Aerie",STATE_SILENCED)
      !Global("HaerDalisRomanceActive","GLOBAL",1)
      !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1
  IF ~InParty("Aerie")
      See("Aerie")
      !StateCheck("Aerie",STATE_SLEEPING)
      !StateCheck("Aerie",STATE_HELPLESS)
      !StateCheck("Aerie",STATE_STUNNED)
      !StateCheck("Aerie",STATE_SILENCED)
      OR(2)
        Global("HaerDalisRomanceActive","GLOBAL",1)
        Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1B
  IF ~InParty("HaerDalis")
      See("HaerDalis")
      !StateCheck("HaerDalis",STATE_SLEEPING)
      !StateCheck("HaerDalis",STATE_HELPLESS)
      !StateCheck("HaerDalis",STATE_STUNNED)
      !StateCheck("HaerDalis",STATE_SILENCED)~ THEN EXTERN HAERDAJ M#T1
  IF ~InParty("Keldorn")
      See("Keldorn")
      !StateCheck("Keldorn",STATE_SLEEPING)
      !StateCheck("Keldorn",STATE_HELPLESS)
      !StateCheck("Keldorn",STATE_STUNNED)
      !StateCheck("Keldorn",STATE_SILENCED)~ THEN EXTERN KELDORJ M#T1
  IF ~InParty("Jaheira")
      See("Jaheira")
      !StateCheck("Jaheira",STATE_SLEEPING)
      !StateCheck("Jaheira",STATE_HELPLESS)
      !StateCheck("Jaheira",STATE_STUNNED)
      !StateCheck("Jaheira",STATE_SILENCED)~ THEN EXTERN JAHEIRAJ M#T1
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4028 /* @4028 = ~<CHARNAME>! Have you no decency?~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END

  IF ~~ THEN BEGIN M#P2LT2
      SAY @4029 /* @4029 = ~<PLAYER2>! Have you no decency?~ */
    IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END

  IF ~~ THEN BEGIN M#FLT5Ano2
    SAY @4030 /* @4030 = ~What is the matter with you, girl? I guess that your demonic parents never taught you how to talk to your superiors.~ */
    IF ~~ THEN EXTERN M#AMBERN FLT5Ano5
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN EXTERN M#AMBERN FLT5Ano3
  END
  
  IF ~~ THEN BEGIN M#FLT5Ano4
    SAY @4031 /* @4031 = ~Were it your life at stake, I would give you a lesson in manners, you impudent whelp. But since it is our leader who is in peril, I will lend my powers despite your feeble provocations.~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
          Spell(Player1,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)  
    	Spell(Player1,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1) 
    	Spell(Player1,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#FLT5Ano6
    SAY @4032 /* @4032 = ~Save your breath, girl. I currently have no means to help him, but I am sure <CHARNAME> will be just fine even without my help. Stop being hysterical.~ */
    IF ~~ THEN EXTERN M#AMBERN FLT5E
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Ano2
    SAY @4030 /* @4030 = ~What is the matter with you, girl? I guess that your demonic parents never taught you how to talk to your superiors.~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT5Ano5
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN EXTERN M#AMBERN P2FLT5Ano3
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Ano4
    SAY @4033 /* @4033 = ~Were it your life at stake, I would give you a lesson in manners, you impudent whelp. But since it is our leader who is in peril, I will lend my powers despite of your feeble provocations.~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
          Spell(Player2,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)  
    	Spell(Player2,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2) 
    	Spell(Player2,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Ano6
    SAY @4034 /* @4034 = ~Save your breath, girl. I currently have no means to help him, but I am sure <PLAYER2> will be just fine even without my help. Stop being hysterical.~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT5E
  END
END

ADD_TRANS_ACTION ~BANOMEN~ 
  BEGIN 60 END 
  BEGIN 0 END ~SetGlobal("M#AnomenInsultedMazzy","GLOBAL",1)~

// APPENDs to Cernd's dialog files
APPEND ~CERNDJ~
  IF ~~ THEN BEGIN M#FLT5Cer2
    SAY @4035 /* @4035 = ~Calm down, Amber. I'll see what I can do to help him.~ */
    IF ~~ THEN GOTO M#FLT5Cer4
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#FLT5Cer3
  END
  
  IF ~~ THEN BEGIN M#FLT5Cer3
    SAY @4036 /* @4036 = ~Ah, things are not as grave as they first seemed... My spell should give him enough strength to begin his recovery.~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
          Spell(Player1,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)  
    	Spell(Player1,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1) 
    	Spell(Player1,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#FLT5Cer4
    SAY @4037 /* @4037 = ~Unfortunately I can do naught for him right now. My skills will do little for his wounds since I have no spells to reinforce them with.~ */
    IF ~~ THEN EXTERN M#AMBERN FLT5E
    IF ~InParty("Anomen")
        See("Anomen")
        !Dead("Anomen")
        !StateCheck("Anomen",STATE_PANIC)
        !StateCheck("Anomen",STATE_BERSERK)
        !StateCheck("Anomen",STATE_CHARMED)
        !StateCheck("Anomen",STATE_CONFUSED)
        !StateCheck("Anomen",STATE_HELPLESS)
        !StateCheck("Anomen",STATE_STUNNED)
        !StateCheck("Anomen",STATE_SLEEPING)
        !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Ano1
    IF ~InParty("Viconia")
        See("Viconia")
        !Dead("Viconia")
        !StateCheck("Viconia",STATE_PANIC)
        !StateCheck("Viconia",STATE_BERSERK)
        !StateCheck("Viconia",STATE_CHARMED)
        !StateCheck("Viconia",STATE_CONFUSED)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Vic1
    IF ~OR(3)
    	Class(Player2,CLERIC_ALL)
          Class(Player2,PALADIN_ALL)
          Class(Player2,RANGER_ALL)
        !Kit(Player2,INQUISITOR)
        !Kit(Player2,UNDEADHUNTER)
        CheckStat(Player2,0,MORALEBREAK)	// Bio-NPC, Hubelpot, Kivan of Shilmista
        !Name("SK#NEHT",Player2)		// Neh'Taniel Blacksheep (paladin)
        !Name("Wikaede",Player2) 		// Wikaede CoM (cleric)
        !Name("Robilard",Player2)		// Robillard (TDD) Modlist (class unknown)		
        !Name("Avaunis",Player2)		// Auvanis (TDD) Modlist (class unknown)		
        !Name("Adario",Player2)			// Adario Kalvaras (TDD) Modlist (class unknown)			
        !Name("KIVANDD",Player2)		// Kivan (TDD) Modlist (ranger)			
        !Name("yeslicdd",Player2) 		// Yeslick (TDD) Modlist (cleric)
        !Name("BOLIVAR",Player2) 		// Bolivar (SoS) FW (class unknown)		
        !Name("TOMASTM",Player2) 		// Tomas (SoS) FW (class unknown)
        !Name("R#ALLISON",Player2) 		// Allison RPGDungeon (druid)
        !Name("Kari",Player2) 			// Kari CoM (druid)
        !Name("Saerileth",Player2)		// Saerileth (paladin)
        See(Player2)
        HPGT(Player2,10)
        !StateCheck(Player2,STATE_PANIC)
        !StateCheck(Player2,STATE_BERSERK)
        !StateCheck(Player2,STATE_CHARMED)
        !StateCheck(Player2,STATE_CONFUSED)
        !StateCheck(Player2,STATE_HELPLESS)
        !StateCheck(Player2,STATE_STUNNED)
        !StateCheck(Player2,STATE_SLEEPING)
        !StateCheck(Player2,STATE_SILENCED)~ THEN DO ~SetGlobal("M#Player2Help","GLOBAL",1)
        					      ActionOverride("m#amber",SetDialog("m#amberj"))~ GOTO M#FLT5Cer5
  END
  
  IF ~~ THEN BEGIN M#FLT5Cer5
      SAY @4014 /* @4014 = ~Perhaps <PLAYER2> could help?~ */
      IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Cer2
    SAY @4035 /* @4035 = ~Calm down, Amber. I'll see what I can do to help him.~ */
    IF ~~ THEN GOTO M#P2FLT5Cer4
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#P2FLT5Cer3
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Cer3
    SAY @4036 /* @4036 = ~Ah, things are not as grave as they first seemed... My spell should give him enough strength to begin his recovery.~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
          Spell(Player2,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)  
    	Spell(Player2,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2) 
    	Spell(Player2,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Cer4
    SAY @4037 /* @4037 = ~Unfortunately I can do naught for him right now. My skills will do little for his wounds since I have no spells to reinforce them with.~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT5E
    IF ~InParty("Anomen")
        See("Anomen")
        !Dead("Anomen")
        !StateCheck("Anomen",STATE_PANIC)
        !StateCheck("Anomen",STATE_BERSERK)
        !StateCheck("Anomen",STATE_CHARMED)
        !StateCheck("Anomen",STATE_CONFUSED)
        !StateCheck("Anomen",STATE_HELPLESS)
        !StateCheck("Anomen",STATE_STUNNED)
        !StateCheck("Anomen",STATE_SLEEPING)
        !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Ano1
    IF ~InParty("Viconia")
        See("Viconia")
        !Dead("Viconia")
        !StateCheck("Viconia",STATE_PANIC)
        !StateCheck("Viconia",STATE_BERSERK)
        !StateCheck("Viconia",STATE_CHARMED)
        !StateCheck("Viconia",STATE_CONFUSED)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Vic1
    IF ~OR(3)
    	Class(Player1,CLERIC_ALL)
          Class(Player1,PALADIN_ALL)
          Class(Player1,RANGER_ALL)
        !Kit(Player1,INQUISITOR)
        !Kit(Player1,UNDEADHUNTER)
        See(Player1)
        !StateCheck(Player1,STATE_PANIC)
        !StateCheck(Player1,STATE_BERSERK)
        !StateCheck(Player1,STATE_CHARMED)
        !StateCheck(Player1,STATE_CONFUSED)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)~ THEN DO ~SetGlobal("M#Player1Help","GLOBAL",1)
        					      ActionOverride("m#amber",SetDialog("m#amberj"))~ GOTO M#P2FLT5Cer5
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Cer5
      SAY @4017 /* @4017 = ~Perhaps <CHARNAME> could help?~ */
      IF ~~ THEN EXIT
  END
END

  ADD_TRANS_ACTION ~CERNDP~ 
    BEGIN 10 END 
  BEGIN 0 END ~SetGlobal("M#CheckCerndBaby","GLOBAL",1)~

// APPENDs to Edwin's dialog files
APPEND ~EDWINJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
      CombatCounter(0)
      !StateCheck(Player1,STATE_HELPLESS)
      !StateCheck(Player1,STATE_STUNNED)
      !StateCheck(Player1,STATE_SLEEPING)
      !StateCheck(Player1,STATE_SILENCED)
      Global("M#EdwinKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
    SAY @4038 /* @4038 = ~How embarrassing (<CHARNAME> should brush up on <PRO_HISHER> leadership skills). Those simians ambushed us all too easily -we should seek revenge or we'll be the laughing stock of every thug in this city.~ */
    =
    @4039 /* @4039 = ~Even a fool could see that those cretins who attacked us were slavers. I happen to know (because unlike you, I have connections) that they have a hideout in the slums of Athkatla.~ */
    IF ~~ THEN DO ~SetGlobal("M#EdwinKidnapResponse","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4040 /* @4040 = ~Ah, I saw this coming long ago. I knew you two could not resist your animal instincts.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4040 /* @4040 = ~Ah, I saw this coming long ago. I knew you two could not resist your animal instincts.~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
END

// APPENDs to Haer'Dalis' dialog files
APPEND ~HAERDAJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#HaerDalisKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4041 /* @4041 = ~Oh, woe is me! A cruel turn of fate has stolen our fiery angel from us. But despair not, my raven - these men bore the air of slavers upon them as clearly as if a mark was burned upon their flesh.~ */
      IF ~!AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#HaerDalisKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkAthkatla
      IF ~AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#HaerDalisKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkTrademeet
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkAthkatla
    SAY @4042 /* @4042 = ~All that is left is only the simple matter of locating their lair, which surely cannot be very far from the habitat of other lowlife.~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkTrademeet
    SAY @4043 /* @4043 = ~This sleepy town is unlikely to harbour such vicious villains, my raven. We are much likely to find their lair in the buzzing capital, close to the habitat of other lowlife.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#T1
    SAY @4044 /* @4044 = ~I'll be most pleased for the company of this delicate hummingbird. She has a fiery spirit that will surely kindle flames in this poet's heart.~ */
  IF ~~ THEN EXTERN M#AMBER T1J
  IF ~InParty("Imoen2")
      See("Imoen2")
      !StateCheck("Imoen2",STATE_SLEEPING)
      !StateCheck("Imoen2",STATE_HELPLESS)
      !StateCheck("Imoen2",STATE_STUNNED)
      !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
  IF ~InParty("Viconia")
      See("Viconia")
      !StateCheck("Viconia",STATE_SLEEPING)
      !StateCheck("Viconia",STATE_HELPLESS)
      !StateCheck("Viconia",STATE_STUNNED)
      !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
  IF ~InParty("Korgan")
      See("Korgan")
      !StateCheck("Korgan",STATE_SLEEPING)
      !StateCheck("Korgan",STATE_HELPLESS)
      !StateCheck("Korgan",STATE_STUNNED)
      !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
  IF ~InParty("Yoshimo")
      See("Yoshimo")
      !StateCheck("Yoshimo",STATE_SLEEPING)
      !StateCheck("Yoshimo",STATE_HELPLESS)
      !StateCheck("Yoshimo",STATE_STUNNED)
      !StateCheck("Yoshimo",STATE_SILENCED)~ THEN EXTERN YOSHJ M#T1
  IF ~InParty("Mazzy")
      See("Mazzy")
      !StateCheck("Mazzy",STATE_SLEEPING)
      !StateCheck("Mazzy",STATE_HELPLESS)
      !StateCheck("Mazzy",STATE_STUNNED)
      !StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN MAZZYJ M#T1
  IF ~InParty("Aerie")
      See("Aerie")
      !StateCheck("Aerie",STATE_SLEEPING)
      !StateCheck("Aerie",STATE_HELPLESS)
      !StateCheck("Aerie",STATE_STUNNED)
      !StateCheck("Aerie",STATE_SILENCED)
      !Global("HaerDalisRomanceActive","GLOBAL",1)
      !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1
  IF ~InParty("Aerie")
      See("Aerie")
      !StateCheck("Aerie",STATE_SLEEPING)
      !StateCheck("Aerie",STATE_HELPLESS)
      !StateCheck("Aerie",STATE_STUNNED)
      !StateCheck("Aerie",STATE_SILENCED)
      OR(2)
        Global("HaerDalisRomanceActive","GLOBAL",1)
        Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1B
  END

  IF ~~ THEN BEGIN M#T4
    SAY @4045 /* @4045 = ~But my dear hummingbird! Cannot you see that only because of our ancestors can we truly succumb to entropy and embrace the chaos. This sparrow draws strength and inspiration- ~ */
    IF ~~ THEN EXTERN M#AMBERN T4H
  END
  IF ~~ THEN BEGIN M#P2T4
    SAY @4045 /* @4045 = ~But my dear hummingbird! Cannot you see that only because of our ancestors can we truly succumb to entropy and embrace the chaos. This sparrow draws strength and inspiration- ~ */
    IF ~~ THEN EXTERN M#AMBERN P2T4H
  END

  IF ~~ THEN BEGIN M#CT3
    SAY @4046 /* @4046 = ~Ah, my hummingbird, you should accompany this bard on his travels some time. The planes hold many wondrous, secret places, and if savage beauty lights your heart my angel... This sparrow dares to believe that he could show something that you might take a liking to.~ */
    IF ~~ THEN EXTERN M#AMBERN CT3A1
  END
  
  IF ~~ THEN BEGIN M#P2CT3
      SAY @4046 /* @4046 = ~Ah, my hummingbird, you should accompany this bard on his travels some time. The planes hold many wondrous, secret places, and if savage beauty lights your heart my angel... This sparrow dares to believe that he could show something that you might take a liking to.~ */
      IF ~~ THEN EXTERN M#AMBERN P2CT3A1
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4047 /* @4047 = ~Ah, my raven, I envy you. A beautiful night, a lady even more fair, and a passion burning in one's soul. Even the skies celebrate this event. I would write it into a song, but alas, my poor heart is aching to be the hero in that tale. But that is not to be, is it, my hummingbird?~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2Hawk
     SAY @4048 /* @4048 = ~Ah, my hawk, I envy you. A beautiful night, a lady even more fair, and a passion burning in one's soul. Even the skies celebrate this event. I would write it into a song, but alas, my poor heart is aching to be the hero in that tale. But that is not to be, is it, my hummingbird?~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2Mockingbird
     SAY @4049 /* @4049 = ~Ah, my mockingbird, I envy you. A beautiful night, a lady even more fair, and a passion burning in one's soul. Even the skies celebrate this event. I would write it into a song, but alas, my poor heart is aching to be the hero in that tale. But that is not to be, is it, my hummingbird?~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2Owl
     SAY @4050 /* @4050 = ~Ah, my owl, I envy you. A beautiful night, a lady even more fair, and a passion burning in one's soul. Even the skies celebrate this event. I would write it into a song, but alas, my poor heart is aching to be the hero in that tale. But that is not to be, is it, my hummingbird?~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2Ibis
     SAY @4051 /* @4051 = ~Ah, my ibis, I envy you. A beautiful night, a lady even more fair, and a passion burning in one's soul. Even the skies celebrate this event. I would write it into a song, but alas, my poor heart is aching to be the hero in that tale. But that is not to be, is it, my hummingbird?~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2Hound
     SAY @4052 /* @4052 = ~Ah, my hound, I envy you. A beautiful night, a lady even more fair, and a passion burning in one's soul. Even the skies celebrate this event. I would write it into a song, but alas, my poor heart is aching to be the hero in that tale. But that is not to be, is it, my hummingbird?~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
END

// APPENDs to Imoen2's' dialog files
APPEND ~IMOEN2J~

  IF ~~ THEN BEGIN M#T1
    SAY @4053 /* @4053 = ~Heya, you said your name was Amber, right? Well, that suits you really well you know; that's probably most intensive red hair I've ever seen. It's very pretty. My name is Imoen, by the way.~ */
  IF ~~ THEN EXTERN M#AMBER T1J
  END
  IF ~~ THEN BEGIN M#LT2
    SAY @4054 /* @4054 = ~Heya Amber! It's time for me to take up the watch... Oooops! Eh - sorry guys, I did not mean to interrupt you or anything. But since I already spoiled the moment, I can point out that that is probably not the most efficient way to keep guard.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4054 /* @4054 = ~Heya Amber! It's time for me to take up the watch... Oooops! Eh - sorry guys, I did not mean to interrupt you or anything. But since I already spoiled the moment, I can point out that that is probably not the most efficient way to keep guard.~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END 
END

// APPENDs to Jaheira's dialog files
APPEND ~JAHEIRAJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#JaheiraKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4055 /* @4055 = ~By Silvanus! How could we let those slavers sneak up on us like that? This is inexcusable - we must track them down and punish them for their vile deeds. The very idea of slavery is an affront to nature and should never be tolerated.~ */
      IF ~!AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#JaheiraKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkAthkatla
      IF ~AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#JaheiraKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkTrademeet
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkAthkatla
    SAY @4056 /* @4056 = ~Remember that scum attracts more scum - we should start our search in the shadiest part of the city.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#KidnapRemarkTrademeet
    SAY @4057 /* @4057 = ~The local authorities must be notified of this. We should speak with the High Merchant; he knows local problems better than us and might be able to give us a clue where to go looking for them.~ */
    IF ~~ THEN EXIT
  END
 
  IF ~~ THEN BEGIN M#T1
    SAY @4058 /* @4058 = ~This creature is not of this world. I suggest that you think carefully before making any rash decisions about her, <CHARNAME>.~ */
    IF ~~ THEN EXTERN M#AMBER T1J
  IF ~InParty("Imoen2")
      See("Imoen2")
      !StateCheck("Imoen2",STATE_SLEEPING)
      !StateCheck("Imoen2",STATE_HELPLESS)
      !StateCheck("Imoen2",STATE_STUNNED)
      !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
  IF ~InParty("Viconia")
      See("Viconia")
      !StateCheck("Viconia",STATE_SLEEPING)
      !StateCheck("Viconia",STATE_HELPLESS)
      !StateCheck("Viconia",STATE_STUNNED)
      !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
  IF ~InParty("Korgan")
      See("Korgan")
      !StateCheck("Korgan",STATE_SLEEPING)
      !StateCheck("Korgan",STATE_HELPLESS)
      !StateCheck("Korgan",STATE_STUNNED)
      !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
  IF ~InParty("Yoshimo")
      See("Yoshimo")
      !StateCheck("Yoshimo",STATE_SLEEPING)
      !StateCheck("Yoshimo",STATE_HELPLESS)
      !StateCheck("Yoshimo",STATE_STUNNED)
      !StateCheck("Yoshimo",STATE_SILENCED)~ THEN EXTERN YOSHJ M#T1
  IF ~InParty("Mazzy")
      See("Mazzy")
      !StateCheck("Mazzy",STATE_SLEEPING)
      !StateCheck("Mazzy",STATE_HELPLESS)
      !StateCheck("Mazzy",STATE_STUNNED)
      !StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN MAZZYJ M#T1
  IF ~InParty("Aerie")
      See("Aerie")
      !StateCheck("Aerie",STATE_SLEEPING)
      !StateCheck("Aerie",STATE_HELPLESS)
      !StateCheck("Aerie",STATE_STUNNED)
      !StateCheck("Aerie",STATE_SILENCED)
      !Global("HaerDalisRomanceActive","GLOBAL",1)
      !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1
  IF ~InParty("Aerie")
      See("Aerie")
      !StateCheck("Aerie",STATE_SLEEPING)
      !StateCheck("Aerie",STATE_HELPLESS)
      !StateCheck("Aerie",STATE_STUNNED)
      !StateCheck("Aerie",STATE_SILENCED)
      OR(2)
        Global("HaerDalisRomanceActive","GLOBAL",1)
        Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1B
  IF ~InParty("HaerDalis")
      See("HaerDalis")
      !StateCheck("HaerDalis",STATE_SLEEPING)
      !StateCheck("HaerDalis",STATE_HELPLESS)
      !StateCheck("HaerDalis",STATE_STUNNED)
      !StateCheck("HaerDalis",STATE_SILENCED)~ THEN EXTERN HAERDAJ M#T1
  IF ~InParty("Keldorn")
      See("Keldorn")
      !StateCheck("Keldorn",STATE_SLEEPING)
      !StateCheck("Keldorn",STATE_HELPLESS)
      !StateCheck("Keldorn",STATE_STUNNED)
      !StateCheck("Keldorn",STATE_SILENCED)~ THEN EXTERN KELDORJ M#T1
  END

 IF ~~ THEN BEGIN M#T9D
   SAY @4059 /* @4059 = ~Not now, Amber. Can you not see that <CHARNAME> is busy?~ */
   IF ~~ THEN EXTERN M#AMBERN T9E
 END
 
 IF ~~ THEN BEGIN M#T9F
   SAY @4060 /* @4060 = ~You sarcasm has very little effect on me, so you should just save it for someone who cares. Now, fall back in line.~ */
   IF ~~ THEN EXTERN M#AMBERN T9G
 END
 
 IF ~~ THEN BEGIN M#LT2
    SAY @4061 /* @4061 = ~What do you think you are doing, you two? Amber, do you not realise that you are putting all of us in grave danger by neglecting your guard duty? And <CHARNAME>, I would have thought that at least you would understand this. I am very disappointed in you both.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 
 
  IF ~~ THEN BEGIN M#P2LT2
     SAY @4062 /* @4062 = ~What do you think you are doing, you two? Amber, do you not realise that you are putting all of us in grave danger by neglecting your guard duty? And <PLAYER2>, I would have thought that at least you would understand this. I am very disappointed in you both.~ */
   IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END 
 
 IF ~~ THEN BEGIN M#FLT5Jah2
   SAY @4063 /* @4063 = ~Patience is one of the benefits conferred by experience, Amber. Move aside, I cannot do a thing with you hovering around <CHARNAME> like that.~ */
   IF ~~ THEN GOTO M#FLT5Jah4
   IF ~OR(5)
 	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
 	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
 	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
 	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
 	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#FLT5Jah3
 END
 
 IF ~~ THEN BEGIN M#FLT5Jah3
   SAY @4064 /* @4064 = ~Hmmm... His wounds are serious indeed, but I can assure you that he won't be leaving our company just yet.~ */
   IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
     DO ~MoveToObjectNoInterrupt(Player1)
         Spell(Player1,CLERIC_CURE_LIGHT_WOUNDS)
         ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
   IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
     DO ~MoveToObjectNoInterrupt(Player1)  
   	Spell(Player1,CLERIC_CURE_MEDIUM_WOUNDS)
   	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
   IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
     DO ~MoveToObjectNoInterrupt(Player1)
   	Spell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
   	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
   IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
     DO ~MoveToObjectNoInterrupt(Player1)
   	Spell(Player1,CLERIC_CURE_CRITICAL_WOUNDS)
   	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
   IF ~HaveSpell(CLERIC_HEAL)~ THEN 
     DO ~MoveToObjectNoInterrupt(Player1) 
   	Spell(Player1,CLERIC_HEAL)
   	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
 END
 
 IF ~~ THEN BEGIN M#FLT5Jah4
   SAY @4065 /* @4065 = ~There is not much I can do, since I already spent all my powers in battle. Now I can only pray to the Oak Father that <CHARNAME> will remain with us for a while longer.~ */
   IF ~~ THEN EXTERN M#AMBERN FLT5E
   IF ~InParty("Anomen")
       See("Anomen")
       !Dead("Anomen")
       !StateCheck("Anomen",STATE_PANIC)
       !StateCheck("Anomen",STATE_BERSERK)
       !StateCheck("Anomen",STATE_CHARMED)
       !StateCheck("Anomen",STATE_CONFUSED)
       !StateCheck("Anomen",STATE_HELPLESS)
       !StateCheck("Anomen",STATE_STUNNED)
       !StateCheck("Anomen",STATE_SLEEPING)
       !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Ano1
   IF ~InParty("Viconia")
       See("Viconia")
       !Dead("Viconia")
       !StateCheck("Viconia",STATE_PANIC)
       !StateCheck("Viconia",STATE_BERSERK)
       !StateCheck("Viconia",STATE_CHARMED)
       !StateCheck("Viconia",STATE_CONFUSED)
       !StateCheck("Viconia",STATE_HELPLESS)
       !StateCheck("Viconia",STATE_STUNNED)
       !StateCheck("Viconia",STATE_SLEEPING)
       !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Vic1
   IF ~OR(3)
   	Class(Player2,CLERIC_ALL)
         Class(Player2,PALADIN_ALL)
         Class(Player2,RANGER_ALL)
       !Kit(Player2,INQUISITOR)
       !Kit(Player2,UNDEADHUNTER)
       CheckStat(Player2,0,MORALEBREAK)		// Bio-NPC, Hubelpot, Kivan of Shilmista
       !Name("SK#NEHT",Player2)			// Neh'Taniel Blacksheep (paladin)
       !Name("Wikaede",Player2) 		// Wikaede CoM (cleric)
       !Name("Robilard",Player2)		// Robillard (TDD) Modlist (class unknown)		
       !Name("Avaunis",Player2)			// Auvanis (TDD) Modlist (class unknown)		
       !Name("Adario",Player2)			// Adario Kalvaras (TDD) Modlist (class unknown)			
       !Name("KIVANDD",Player2)			// Kivan (TDD) Modlist (ranger)			
       !Name("yeslicdd",Player2) 		// Yeslick (TDD) Modlist (cleric)
       !Name("BOLIVAR",Player2) 		// Bolivar (SoS) FW (class unknown)		
       !Name("TOMASTM",Player2) 		// Tomas (SoS) FW (class unknown)
       !Name("R#ALLISON",Player2) 		// Allison RPGDungeon (druid)
       !Name("Kari",Player2) 			// Kari CoM (druid)
       !Name("Saerileth",Player2)		// Saerileth (paladin)
       See(Player2)
       HPGT(Player2,10)
       !StateCheck(Player2,STATE_PANIC)
       !StateCheck(Player2,STATE_BERSERK)
       !StateCheck(Player2,STATE_CHARMED)
       !StateCheck(Player2,STATE_CONFUSED)
       !StateCheck(Player2,STATE_HELPLESS)
       !StateCheck(Player2,STATE_STUNNED)
       !StateCheck(Player2,STATE_SLEEPING)
       !StateCheck(Player2,STATE_SILENCED)~ THEN DO ~SetGlobal("M#Player2Help","GLOBAL",1)
       					      ActionOverride("m#amber",SetDialog("m#amberj"))~ GOTO M#FLT5Jah5
   IF ~InParty("Cernd")
       See("Cernd")
       !Dead("Cernd")
       !StateCheck("Cernd",STATE_PANIC)
       !StateCheck("Cernd",STATE_BERSERK)
       !StateCheck("Cernd",STATE_CHARMED)
       !StateCheck("Cernd",STATE_CONFUSED)
       !StateCheck("Cernd",STATE_HELPLESS)
       !StateCheck("Cernd",STATE_STUNNED)
       !StateCheck("Cernd",STATE_SLEEPING)
       !StateCheck("Cernd",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Cer1
   IF ~InParty("Aerie")
       See("Aerie")
       !Dead("Aerie")
       !StateCheck("Aerie",STATE_PANIC)
       !StateCheck("Aerie",STATE_BERSERK)
       !StateCheck("Aerie",STATE_CHARMED)
       !StateCheck("Aerie",STATE_CONFUSED)
       !StateCheck("Aerie",STATE_HELPLESS)
       !StateCheck("Aerie",STATE_STUNNED)
       !StateCheck("Aerie",STATE_SLEEPING)
       !StateCheck("Aerie",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Aer1
  END
  
  IF ~~ THEN BEGIN M#FLT5Jah5
      SAY @4014 /* @4014 = ~Perhaps <PLAYER2> could help?~ */
      IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Jah2
    SAY @4066 /* @4066 = ~Patience is one of the benefits conferred by experience, Amber. Move aside, I cannot do a thing with you hovering around <PLAYER2> like that.~ */
    IF ~~ THEN GOTO M#P2FLT5Jah4
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#P2FLT5Jah3
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Jah3
    SAY @4064 /* @4064 = ~Hmmm... His wounds are serious indeed, but I can assure you that he won't be leaving our company just yet.~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
          Spell(Player2,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)  
    	Spell(Player2,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2) 
    	Spell(Player2,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Jah4
    SAY @4067 /* @4067 = ~There is not much I can do, since I already spent all my powers in battle. Now I can only pray to the Oak Father that <PLAYER2> will remain with us for a while longer.~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT5E
    IF ~InParty("Anomen")
        See("Anomen")
        !Dead("Anomen")
        !StateCheck("Anomen",STATE_PANIC)
        !StateCheck("Anomen",STATE_BERSERK)
        !StateCheck("Anomen",STATE_CHARMED)
        !StateCheck("Anomen",STATE_CONFUSED)
        !StateCheck("Anomen",STATE_HELPLESS)
        !StateCheck("Anomen",STATE_STUNNED)
        !StateCheck("Anomen",STATE_SLEEPING)
        !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Ano1
    IF ~InParty("Viconia")
        See("Viconia")
        !Dead("Viconia")
        !StateCheck("Viconia",STATE_PANIC)
        !StateCheck("Viconia",STATE_BERSERK)
        !StateCheck("Viconia",STATE_CHARMED)
        !StateCheck("Viconia",STATE_CONFUSED)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Vic1
    IF ~OR(3)
    	Class(Player1,CLERIC_ALL)
          Class(Player1,PALADIN_ALL)
          Class(Player1,RANGER_ALL)
        !Kit(Player1,INQUISITOR)
        !Kit(Player1,UNDEADHUNTER)
        See(Player1)
        !StateCheck(Player1,STATE_PANIC)
        !StateCheck(Player1,STATE_BERSERK)
        !StateCheck(Player1,STATE_CHARMED)
        !StateCheck(Player1,STATE_CONFUSED)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)~ THEN DO ~SetGlobal("M#Player1Help","GLOBAL",1)
        					      ActionOverride("m#amber",SetDialog("m#amberj"))~ GOTO M#P2FLT5Jah5
    IF ~InParty("Cernd")
        See("Cernd")
        !Dead("Cernd")
        !StateCheck("Cernd",STATE_PANIC)
        !StateCheck("Cernd",STATE_BERSERK)
        !StateCheck("Cernd",STATE_CHARMED)
        !StateCheck("Cernd",STATE_CONFUSED)
        !StateCheck("Cernd",STATE_HELPLESS)
        !StateCheck("Cernd",STATE_STUNNED)
        !StateCheck("Cernd",STATE_SLEEPING)
        !StateCheck("Cernd",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Cer1
    IF ~InParty("Aerie")
        See("Aerie")
        !Dead("Aerie")
        !StateCheck("Aerie",STATE_PANIC)
        !StateCheck("Aerie",STATE_BERSERK)
        !StateCheck("Aerie",STATE_CHARMED)
        !StateCheck("Aerie",STATE_CONFUSED)
        !StateCheck("Aerie",STATE_HELPLESS)
        !StateCheck("Aerie",STATE_STUNNED)
        !StateCheck("Aerie",STATE_SLEEPING)
        !StateCheck("Aerie",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Aer1
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Jah5
      SAY @4017 /* @4017 = ~Perhaps <CHARNAME> could help?~ */
      IF ~~ THEN EXIT
  END
  
  IF ~Global("M#AmberJaheiraRomanceConflict","GLOBAL",2)
      !StateCheck("M#Amber",STATE_SLEEPING)
      !StateCheck("M#Amber",STATE_HELPLESS)
      !StateCheck("M#Amber",STATE_STUNNED)
      !StateCheck("M#Amber",STATE_SILENCED)~ THEN BEGIN M#AmberJaheiraRCBegin1
    SAY @4068 /* @4068 = ~Amber, a moment of your time, if you please. ~ */
    IF ~~ THEN DO ~ActionOverride("m#amber",SetDialog("m#ambern"))~ GOTO M#AmberJaheiraRCBegin2
  END
  IF ~~ THEN BEGIN M#AmberJaheiraRCBegin2
    SAY @4069 /* @4069 = ~I see that you are getting close with <CHARNAME>, but you should bear in mind that he is still very young and inexperienced in many ways. Although your face does not betray your age, I suspect you are his senior by far and thus should be careful with him.~ */
    IF ~~ THEN EXTERN M#AMBERN AmberJaheiraRCA
  END
  IF ~~ THEN BEGIN M#AmberJaheiraRCB
    SAY @4070 /* @4070 = ~I only try to do what I think is best, and you try to turn it into a quarrel between us? You should think twice before calling me a hypocrite.~ */
    IF ~~ THEN EXTERN M#AMBERN AmberJaheiraRCC
  END
END

// APPENDs to Jan's dialog files
APPEND ~JANJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#JanKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4071 /* @4071 = ~Did you see that? They just grabbed her like a sack of turnips! How rude!~ */
      =
      @4072 /* @4072 = ~Something like that once happened to old Harry Turwocket, my third cousin on my mother's side - and a great cook, incidentally - or so we thought. In the end it turned out that he had just taken a wrong turn coming from the market and ended up on the wrong side of the city walls.~ */
      =
      @4073 /* @4073 = ~But I doubt that is the case here. I'm afraid someone has taken an unwelcome interest in our fiery friend. But I really cannot begin to fathom who would that be - those ruffians looked no different from the malingerers that constantly hang around our neighbourhood.~ */
      IF ~~ THEN DO ~SetGlobal("M#JanKidnapResponse","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4074 /* @4074 = ~Heh. Young love... You two remind me of my - please interrupt me if have told this before...~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4074 /* @4074 = ~Heh. Young love... You two remind me of my - please interrupt me if have told this before...~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END 
END

// APPENDs to Keldorn's dialog files
APPEND ~KELDORJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#KeldornKidnapResponse","GLOBAL",1)
        !AreaCheck("AR2000")~ THEN BEGIN M#KidnapRemarkAthkatla
      SAY @4075 /* @4075 = ~Slavers are like a pestilence to our fair city, infesting the most wretched parts of Athkatla. Every time the Order has tried to eradicate the epidemic once and for all, it turns out that we have only managed to stall its progress for a while. Judging by this, there seems to be no permanent cure in sight.~ */
      IF ~~ THEN DO ~SetGlobal("M#KeldornKidnapResponse","GLOBAL",2)~ EXIT
  END

  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#KeldornKidnapResponse","GLOBAL",1)
        AreaCheck("AR2000")~ THEN BEGIN M#KidnapRemarkTrademeet
      SAY @4076 /* @4076 = ~I see that slavers are a problem here just as they are in Athkatla. We should see the High Merchant Logan Coprinth in order to learn what measures this town has taken against them, and if anything is known of their base of operations.~ */
      IF ~~ THEN DO ~SetGlobal("M#KeldornKidnapResponse","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN M#T1
    SAY @4077 /* @4077 = ~I wager that the guards had sufficient reason to detain her. It would be best to leave her to face justice; if she is innocent, she will regain her freedom in due course.~ */
    IF ~~ THEN EXTERN M#AMBER T1J
    IF ~InParty("Imoen2")
        See("Imoen2")
        !StateCheck("Imoen2",STATE_SLEEPING)
        !StateCheck("Imoen2",STATE_HELPLESS)
        !StateCheck("Imoen2",STATE_STUNNED)
        !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
    IF ~InParty("Viconia")
        See("Viconia")
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
    IF ~InParty("Korgan")
        See("Korgan")
        !StateCheck("Korgan",STATE_SLEEPING)
        !StateCheck("Korgan",STATE_HELPLESS)
        !StateCheck("Korgan",STATE_STUNNED)
        !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
    IF ~InParty("Yoshimo")
        See("Yoshimo")
        !StateCheck("Yoshimo",STATE_SLEEPING)
        !StateCheck("Yoshimo",STATE_HELPLESS)
        !StateCheck("Yoshimo",STATE_STUNNED)
        !StateCheck("Yoshimo",STATE_SILENCED)~ THEN EXTERN YOSHJ M#T1
    IF ~InParty("Mazzy")
        See("Mazzy")
        !StateCheck("Mazzy",STATE_SLEEPING)
        !StateCheck("Mazzy",STATE_HELPLESS)
        !StateCheck("Mazzy",STATE_STUNNED)
        !StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN MAZZYJ M#T1
    IF ~InParty("Aerie")
        See("Aerie")
        !StateCheck("Aerie",STATE_SLEEPING)
        !StateCheck("Aerie",STATE_HELPLESS)
        !StateCheck("Aerie",STATE_STUNNED)
        !StateCheck("Aerie",STATE_SILENCED)
        !Global("HaerDalisRomanceActive","GLOBAL",1)
        !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1
    IF ~InParty("Aerie")
        See("Aerie")
        !StateCheck("Aerie",STATE_SLEEPING)
        !StateCheck("Aerie",STATE_HELPLESS)
        !StateCheck("Aerie",STATE_STUNNED)
        !StateCheck("Aerie",STATE_SILENCED)
        OR(2)
          Global("HaerDalisRomanceActive","GLOBAL",1)
          Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN EXTERN AERIEJ M#T1B
    IF ~InParty("HaerDalis")
        See("HaerDalis")
        !StateCheck("HaerDalis",STATE_SLEEPING)
        !StateCheck("HaerDalis",STATE_HELPLESS)
        !StateCheck("HaerDalis",STATE_STUNNED)
        !StateCheck("HaerDalis",STATE_SILENCED)~ THEN EXTERN HAERDAJ M#T1
  END

  IF ~~ THEN BEGIN M#Lorraine1
    SAY @4078 /* @4078 = ~I sense no true evil in this woman, and she bears the symbol of Mielikki, the Lady of the Forest. We should hear her out. I cannot see why a servant of Mielikki would attack us.~ */
    IF ~OR(6)
    	!InParty("Mazzy")
        !See("Mazzy")
        StateCheck("Mazzy",STATE_SLEEPING)
        StateCheck("Mazzy",STATE_HELPLESS)
        StateCheck("Mazzy",STATE_STUNNED)
        StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN M#LORRAI OUTSIDE8
    IF ~InParty("Mazzy")
        See("Mazzy")
        !StateCheck("Mazzy",STATE_SLEEPING)
        !StateCheck("Mazzy",STATE_HELPLESS)
        !StateCheck("Mazzy",STATE_STUNNED)
        !StateCheck("Mazzy",STATE_SILENCED)~ THEN EXTERN MAZZYJ M#Lorraine1
  END
  
  IF ~~ THEN BEGIN M#Lorraine2
    SAY @4079 /* @4079 = ~Noble lady, I will do all that is in my power to help your son. Also, you need not fear any additional harm to your person from this party. I will see that your wounds get proper attention. They are severe, and I am amazed that you are able to speak at all.~ */
    IF ~~ THEN EXTERN M#LORRAI OUTSIDE10
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4028 /* @4028 = ~<CHARNAME>! Have you no decency?~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 

  IF ~~ THEN BEGIN M#P2LT2
    SAY @4029 /* @4029 = ~<PLAYER2>! Have you no decency?~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END 
END

// APPENDs to Korgan's dialog files
APPEND ~KORGANJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#KorganKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4080 /* @4080 = ~What a stroke of luck has hit ye, <CHARNAME>. That irksome lass is not yer concern any longer.~ */
      =
      @4081 /* @4081 = ~But I'd reckon there's now some unfinished business between the slavers, ye and meself. Mostly of the owe-us-some-gold kind. If ye want the goods, ye got ta pay for 'em, too.~ */
      =
      @4082 /* @4082 = ~What say ye then? I say we drag our asses to the slaver hideout in the slums and have a little heart to heart with those stealing scumbags.~ */
      IF ~~ THEN DO ~SetGlobal("M#KorganKidnapResponse","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN M#T1
    SAY @4083 /* @4083 = ~Ptyih... Must ye drag every stray dog with ye <CHARNAME>? Girlie that skinny won't ever pull 'er weight.  ~ */
    IF ~~ THEN EXTERN M#AMBER T1J
    IF ~InParty("Imoen2")
        See("Imoen2")
        !StateCheck("Imoen2",STATE_SLEEPING)
        !StateCheck("Imoen2",STATE_HELPLESS)
        !StateCheck("Imoen2",STATE_STUNNED)
        !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
    IF ~InParty("Viconia")
        See("Viconia")
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
  END
  IF ~~ THEN BEGIN M#LT2
    SAY @4084 /* @4084 = ~Yich! Yer disgusting, you filthy rabbits! Just get outta me sight or I'll be sure to hurl me innards.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4084 /* @4084 = ~Yich! Yer disgusting, you filthy rabbits! Just get outta me sight or I'll be sure to hurl me innards.~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
  IF ~~ THEN BEGIN M#FLT2KorganB
    SAY @4085 /* @4085 = ~AAAAARGH!~ */
    IF ~~ THEN EXTERN PLAYER1 M#FLT2KorganC
  END
  IF ~~ THEN BEGIN M#P2FLT2KorganB
      SAY @4085 /* @4085 = ~AAAAARGH!~ */
      IF ~~ THEN EXTERN MULTIG M#P2FLT2KorganC
  END
END

// APPENDs to Mazzy's dialog files
APPEND ~MAZZYJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#MazzyKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4086 /* @4086 = ~By Arvoreen! This not something we can overlook. A friend and a companion taken from us within a heartbeat.~ */
      IF ~!AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#MazzyKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkAthkatla
      IF ~AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#MazzyKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkTrademeet
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkAthkatla
    SAY @4087 /* @4087 = ~I've dealt with the likes of these fellows before. Their manners and outfits suggest that they are slavers. We'd best look for them where other petty thieves and lowlife criminals make their home.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#KidnapRemarkTrademeet
    SAY @4088 /* @4088 = ~I've dealt with the likes of these fellows before. Their manners and outfits suggest that they are slavers. I'm deeply saddened that they have infested this fair city. We should talk to Lord Logan immediately.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#T1
    SAY @4089 /* @4089 = ~I respect your decision, <CHARNAME>, and trust that you would not take her with us were it not for the best.~ */
    IF ~~ THEN EXTERN M#AMBER T1J
    IF ~InParty("Imoen2")
        See("Imoen2")
        !StateCheck("Imoen2",STATE_SLEEPING)
        !StateCheck("Imoen2",STATE_HELPLESS)
        !StateCheck("Imoen2",STATE_STUNNED)
        !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
    IF ~InParty("Viconia")
        See("Viconia")
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
    IF ~InParty("Korgan")
        See("Korgan")
        !StateCheck("Korgan",STATE_SLEEPING)
        !StateCheck("Korgan",STATE_HELPLESS)
        !StateCheck("Korgan",STATE_STUNNED)
        !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
    IF ~InParty("Yoshimo")
        See("Yoshimo")
        !StateCheck("Yoshimo",STATE_SLEEPING)
        !StateCheck("Yoshimo",STATE_HELPLESS)
        !StateCheck("Yoshimo",STATE_STUNNED)
        !StateCheck("Yoshimo",STATE_SILENCED)~ THEN EXTERN YOSHJ M#T1
  END
  IF ~~ THEN BEGIN M#Lorraine1
    SAY @4090 /* @4090 = ~Stay your hand, <CHARNAME>. Mercy is a virtue honourable people bestow even upon the vilest of their enemies. Let her speak.~ */
    IF ~~ THEN EXTERN M#LORRAI OUTSIDE8
  END
  
  IF ~~ THEN BEGIN M#Lorraine2
    SAY @4091 /* @4091 = ~My lady, you fought with honour and dignity. We will help you shed this burden that compels you to acts of evil. Please, accept my deepest condolences for the death of your son.~ */
    IF ~~ THEN EXTERN M#LORRAI OUTSIDE10
  END
  IF ~~ THEN BEGIN M#LT2
    SAY @4092 /* @4092 = ~Milord! I am speechless! How could you distract Amber from her guard duty? That was very irresponsible of you.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4092 /* @4092 = ~Milord! I am speechless! How could you distract Amber from her guard duty? That was very irresponsible of you.~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END   
END

// APPENDs to Minsc's dialog files
APPEND ~MINSCJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#MinscKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4093 /* @4093 = ~Arrgh! Boo is roaring with fury! And Minsc agrees with him. This is an outrage!~ */
      IF ~AreaCheck("AR0400")~ THEN DO ~SetGlobal("M#MinscKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkSlums
      IF ~!AreaCheck("AR0400")~ THEN DO ~SetGlobal("M#MinscKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkNotSlums
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkSlums
    SAY @4094 /* @4094 = ~We must help Amber at once. Boo says all sort of evil people live in this very part of the city. We must raid every house at once!~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkNotSlums
    SAY @4095 /* @4095 = ~We must help Amber at once. Boo says all sort of evil people live in the slums of Athkatla. We must travel there at once!~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4096 /* @4096 = ~Oooo... Boo thinks that you're cute, <CHARNAME>. But Minsc cannot see how you are going to kick evil in the backside while doing that.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4097 /* @4097 = ~Oooo... Boo thinks that you're cute, <PLAYER2>. But Minsc cannot see how you are going to kick evil in the backside while doing that.~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END 
END

// APPENDs to Nalia's dialog files
APPEND ~NALIAJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#NaliaKidnapResponse","GLOBAL",1)
        GlobalGT("SpawnBarg","GLOBAL",0)~ THEN BEGIN M#KidnapRemarkA
      SAY @4098 /* @4098 = ~Whew! That bought back some unpleasant memories. This time I think the people responsible are not from high society, though.~ */
      =
      @4099 /* @4099 = ~Could it be that these people were slavers, <CHARNAME>? What do you think?~ */
      IF ~~ THEN REPLY @4100 /* @4100 = ~Yes, I think you might be right.~ */ DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkC
      IF ~~ THEN REPLY @4101 /* @4101 = ~Hmmm... I'm not so sure about that.~ */ DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkC
  END
 
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#NaliaKidnapResponse","GLOBAL",1)
        GlobalLT("SpawnBarg","GLOBAL",1)~ THEN BEGIN M#KidnapRemarkB
      SAY @4102 /* @4102 = ~Whew! I really dislike surprises like that.~ */
      =
      @4099 /* @4099 = ~Could it be that these people were slavers, <CHARNAME>? What do you think?~ */      
      IF ~~ THEN REPLY @4100 /* @4100 = ~Yes, I think you might be right.~ */ DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkC
      IF ~~ THEN REPLY @4101 /* @4101 = ~Hmmm... I'm not so sure about that.~ */ DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkC
  END

  IF ~~ THEN BEGIN M#KidnapRemarkC
    SAY @4103 /* @4103 = ~There are always suspicious folk hanging around the Copper Coronet. I think I've seen one or two of the fellows that attacked us there.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4104 /* @4104 = ~Hey, get a room you two! Or at least go somewhere else now that your shift is over.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4104 /* @4104 = ~Hey, get a room you two! Or at least go somewhere else now that your shift is over.~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END 
END

// APPENDs to Valygar's dialog files
APPEND ~VALYGARJ~
 IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#ValygarKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4105 /* @4105 = ~What a display of cowardice from that witch woman! It is embarrassing how easily those slavers snatched their prey from right under our noses.~ */
      IF ~!AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#ValygarKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkAthkatla
      IF ~AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#ValygarKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkTrademeet
  END  

  IF ~~ THEN BEGIN M#KidnapRemarkAthkatla
    SAY @4106 /* @4106 = ~When I was still in the military, our men raided several slaver hideouts in the slums. I suspect that it would still be the best place to start looking.~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkTrademeet
      SAY @4107 /* @4107 = ~I think we should inform Lord Logan of this crime. If it was the doing of local lowlife, he might know something.~ */
      IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#LT2
    SAY @4108 /* @4108 = ~Eeer... Do you wish me to come back later, <CHARNAME>?~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2
    SAY @4109 /* @4109 = ~Eeer... Do you wish me to come back later, <PLAYER2>?~ */
  IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END
  
  IF ~~ THEN BEGIN M#FLT2ValygarB
    SAY @4110 /* @4110 = ~W-what? Oh, <GABBER>, you certainly caught me off guard. But feel free to take your bath after me if you wish. I'll leave the rest of the soapwort here on the rock for you.~ */
    IF ~~ THEN EXTERN PLAYER1 M#FLT2ValygarL 
  END 
  IF ~~ THEN BEGIN M#FLT2ValygarE
    SAY @4111 /* @4111 = ~<CHARNAME>! I thought you were a bandit looking for easy prey - I could easily have skewered you right there, but luckily I felt curious as to who would be following us. What are you doing here, sneaking around like that?~ */
    IF ~~ THEN REPLY @4112 /* @4112 = ~Um, I just felt that I needed a bath and came here. When I found the pond already occupied, I thought I should not disturb you and tried to leave, but my foot caught on a root and I fell.~ */ GOTO M#FLT2ValygarF
    IF ~~ THEN REPLY @4113 /* @4113 = ~Um, nothing, really. I was just taking a walk and happened to wander this way. I didn't even notice you. I am sorry if I disturbed you.~ */ GOTO M#FLT2ValygarG
  END
  IF ~~ THEN BEGIN M#FLT2ValygarF
    SAY @4114 /* @4114 = ~(Valygar lets go of your shirt.) Oh, I'm sorry. I should have probably told you that I was going to take a bath, and we could have taken our turns in washing up. Would have saved us from this rather embarrassing encounter.~ */
    =
    @4115 /* @4115 = ~Now, if you don't mind, I should probably finish washing myself. Feel free to use the pond after I'm done. I'll leave the rest of the soapwort there on the rock for you.~ */
    IF ~~ THEN REPLY @4116 /* @4116 = ~Um, thank you for the offer, but I guess that I'll just go back to the camp and go to sleep. You just take your time. (Leave.) ~ */ GOTO M#FLT2ValygarJ
    IF ~~ THEN REPLY @4117 /* @4117 = ~Oh, right, thank you. I'll just go back to the camp, then. Just let me know when you are done. (Leave.)~ */ EXTERN PLAYER1 M#FLT2ValygarK
  END
  IF ~~ THEN BEGIN M#FLT2ValygarG
    SAY @4118 /* @4118 = ~(Valygar gives you an odd look as he lets go of your shirt.) Hmh. You should be more careful when walking around at night. I might have been a bandit waiting in ambush for you, in which case you would already be dead. Now, if you don't mind, I would like to finish washing myself.~ */
    IF ~~ THEN REPLY @4119 /* @4119 = ~Um. Of course. I'll just be going now. (Leave.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
  END 
  IF ~~ THEN BEGIN M#FLT2ValygarJ
    SAY @4120 /* @4120 = ~(Valygar gives you an odd look as you turn to leave but says nothing.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
    		   RestParty()~ EXIT
  END
  IF ~~ THEN BEGIN M#P2FLT2ValygarB
      SAY @4110 /* @4110 = ~W-what? Oh, <GABBER>, you certainly caught me off guard. But feel free to take your bath after me if you wish. I'll leave the rest of the soapwort here on the rock for you.~ */
      IF ~~ THEN EXTERN MULTIG M#P2FLT2ValygarL 
    END 
    IF ~~ THEN BEGIN M#P2FLT2ValygarE
      SAY @4111 /* @4111 = ~<CHARNAME>! I thought you were a bandit looking for easy prey - I could easily have skewered you right there, but luckily I felt curious as to who would be following us. What are you doing here, sneaking around like that?~ */
      IF ~~ THEN REPLY @4112 /* @4112 = ~Um, I just felt that I needed a bath and came here. When I found the pond already occupied, I thought I should not disturb you and tried to leave, but my foot caught on a root and I fell.~ */ GOTO M#P2FLT2ValygarF
      IF ~~ THEN REPLY @4113 /* @4113 = ~Um, nothing, really. I was just taking a walk and happened to wander this way. I didn't even notice you. I am sorry if I disturbed you.~ */ GOTO M#P2FLT2ValygarG
    END
    IF ~~ THEN BEGIN M#P2FLT2ValygarF
      SAY @4114 /* @4114 = ~(Valygar lets go of your shirt.) Oh, I'm sorry. I should have probably told you that I was going to take a bath, and we could have taken our turns in washing up. Would have saved us from this rather embarrassing encounter.~ */
      =
      @4115 /* @4115 = ~Now, if you don't mind, I should probably finish washing myself. Feel free to use the pond after I'm done. I'll leave the rest of the soapwort there on the rock for you.~ */
      IF ~~ THEN REPLY @4116 /* @4116 = ~Um, thank you for the offer, but I guess that I'll just go back to the camp and go to sleep. You just take your time. (Leave.) ~ */ GOTO M#P2FLT2ValygarJ
      IF ~~ THEN REPLY @4117 /* @4117 = ~Oh, right, thank you. I'll just go back to the camp, then. Just let me know when you are done. (Leave.)~ */ EXTERN MULTIG M#P2FLT2ValygarK
    END
    IF ~~ THEN BEGIN M#P2FLT2ValygarG
      SAY @4118 /* @4118 = ~(Valygar gives you an odd look as he lets go of your shirt.) Hmh. You should be more careful when walking around at night. I might have been a bandit waiting in ambush for you, in which case you would already be dead. Now, if you don't mind, I would like to finish washing myself.~ */
      IF ~~ THEN REPLY @4119 /* @4119 = ~Um. Of course. I'll just be going now. (Leave.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
       ActionOverride("m#amber",SetDialog("m#amberj"))	   	    						     RestParty()~ EXIT
    END 
    IF ~~ THEN BEGIN M#P2FLT2ValygarJ
      SAY @4120 /* @4120 = ~(Valygar gives you an odd look as you turn to leave but says nothing.)~ */
      IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
      		     ActionOverride("m#amber",SetDialog("m#amberj"))
      		     RestParty()~ EXIT
  END  
END

// APPENDs to Viconia's dialog files
APPEND ~VICONIJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#ViconiaKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4121 /* @4121 = ~Ah, I can see that you rivvin are not above slavery, after all. And unlike among my kindred, your merchants have to hide in the bowels of your cities amidst all the rats and filth - that simply cannot be good for their merchandise.~ */
      =
      @4122 /* @4122 = ~In this case there is not much to be spoiled, though... I would suggest that we move on and be grateful for this incident which so conveniently removed that tiresome pest from our presence.~ */
      IF ~~ THEN DO ~SetGlobal("M#ViconiaKidnapResponse","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN M#T1
    SAY @4123 /* @4123 = ~You plan to take this pathetic creature with you, <CHARNAME>? Of what use could she ever be to you?~ */
    IF ~~ THEN EXTERN M#AMBER T1I
  END

  IF ~~ THEN BEGIN M#T8F
    SAY @4124 /* @4124 = ~And what makes you think that <CHARNAME> or anyone else here would be interested in that, fiendling? Save yourself the trouble and spare us from hearing every dull detail of your life. ~ */
    IF ~~ THEN EXTERN M#AMBERN T8G
  END

  IF ~~ THEN BEGIN M#T8H
    SAY @4125 /* @4125 = ~You are in no position to tell me what to do or not to do, pest.~ */
    IF ~~ THEN EXTERN M#AMBERN T8G
  END

  IF ~~ THEN BEGIN M#CT6
    SAY @4126 /* @4126 = ~Your concern for my well-being is *so* touching, little fiend.~ */
    IF ~~ THEN EXTERN M#AMBERN CT6G
  END

  IF ~~ THEN BEGIN M#CT6B
    SAY @4127 /* @4127 = ~My, my - a fiendish mongrel like yourself calling others repulsive and obnoxious. You do rather well in that department yourself.~ */
    IF ~~ THEN REPLY @4128 /* @4128 = ~That's enough, both of you! Now get back in line and let's move on before this gets out of control.~ */ DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
    IF ~~ THEN REPLY @4129 /* @4129 = ~Not so concerned over the drow, are you now, Amber? Admit it, you would be more than glad to see this particular drow dead.~ */ EXTERN M#AMBERN CT6F
    IF ~~ THEN REPLY @4130 /* @4130 = ~That was totally unnecessary, Viconia. Amber is right; you could have got yourself killed back there with all those elves running amok.~ */ GOTO M#CT6C
  END

  IF ~~ THEN BEGIN M#CT6C
    SAY @4131 /* @4131 = ~And I did express my gratitude for her concern, after which she blew up in my face. Unpleasant, but not entirely unexpected.~ */
    IF ~~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
  END
 
IF ~~ THEN BEGIN M#P2CT6
    SAY @4126 /* @4126 = ~Your concern for my well-being is *so* touching, little fiend.~ */
    IF ~~ THEN EXTERN M#AMBERN CT6G
  END

  IF ~~ THEN BEGIN M#P2CT6B
    SAY @4127 /* @4127 = ~My, my - a fiendish mongrel like yourself calling others repulsive and obnoxious. You do rather well in that department yourself.~ */
    IF ~~ THEN REPLY @4132 /* @4132 = ~That's enough! We should get going before <CHARNAME> loses <PRO_HISHER> temper.~ */ 
               DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
    IF ~~ THEN REPLY @4129 /* @4129 = ~Not so concerned over the drow, are you now, Amber? Admit it, you would be more than glad to see this particular drow dead.~ */ EXTERN M#AMBERN P2CT6F
    IF ~~ THEN REPLY @4130 /* @4130 = ~That was totally unnecessary, Viconia. Amber is right; you could have got yourself killed back there with all those elves running amok.~ */ GOTO M#P2CT6C
  END

  IF ~~ THEN BEGIN M#P2CT6C
    SAY @4131 /* @4131 = ~And I did express my gratitude for her concern, after which she blew up in my face. Unpleasant, but not entirely unexpected.~ */
    IF ~~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
  END
  
  IF ~~ THEN BEGIN M#LT2
    SAY @4133 /* @4133 = ~Spoiled something sweet here, did I? How insensitive of me.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END 

  IF ~~ THEN BEGIN M#P2LT2
      SAY @4133 /* @4133 = ~Spoiled something sweet here, did I? How insensitive of me.~ */
    IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END 

  IF ~~ THEN BEGIN M#FLT5Vic2
    SAY @4134 /* @4134 = ~I will not take orders from you, little tiefling.~ */
    IF ~~ THEN GOTO M#FLT5Vic6
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#FLT5Vic3
  END
  
  IF ~~ THEN BEGIN M#FLT5Vic3
    SAY @4135 /* @4135 = ~If you wish me to help your dear <CHARNAME>, you would do well to adopt a different tone of voice.~ */
    IF ~~ THEN EXTERN M#AMBERN FLT5Vic4
  END
  
  IF ~~ THEN BEGIN M#FLT5Vic5
    SAY @4136 /* @4136 = ~No need to worry, tiefling. I will heal him, but do not think for a second that I am doing it for you.~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
          Spell(Player1,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)  
    	Spell(Player1,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1)
    	Spell(Player1,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player1) 
    	Spell(Player1,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#FLT5Vic6
    SAY @4137 /* @4137 = ~There is nothing I can do for him right now, and even if there was, your tone of voice might just persuade me *not* to help him.~ */
    IF ~~ THEN EXTERN M#AMBERN FLT5E
    IF ~InParty("Anomen")
        See("Anomen")
        !Dead("Anomen")
        !StateCheck("Anomen",STATE_PANIC)
        !StateCheck("Anomen",STATE_BERSERK)
        !StateCheck("Anomen",STATE_CHARMED)
        !StateCheck("Anomen",STATE_CONFUSED)
        !StateCheck("Anomen",STATE_HELPLESS)
        !StateCheck("Anomen",STATE_STUNNED)
        !StateCheck("Anomen",STATE_SLEEPING)
        !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN FLT5Ano1
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Vic2
    SAY @4134 /* @4134 = ~I will not take orders from you, little tiefling.~ */
    IF ~~ THEN GOTO M#P2FLT5Vic6
    IF ~OR(5)
  	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)
  	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)
  	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)
  	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)
  	HaveSpell(CLERIC_HEAL)~ THEN GOTO M#P2FLT5Vic3
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Vic3
    SAY @4138 /* @4138 = ~If you wish me to help your dear <PLAYER2>, you would do well to adopt a different tone of voice.~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT5Vic4
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Vic5
    SAY @4136 /* @4136 = ~No need to worry, tiefling. I will heal him, but do not think for a second that I am doing it for you.~ */
    IF ~HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
          Spell(Player2,CLERIC_CURE_LIGHT_WOUNDS)
          ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)  
    	Spell(Player2,CLERIC_CURE_MEDIUM_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_SERIOUS_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2)
    	Spell(Player2,CLERIC_CURE_CRITICAL_WOUNDS)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT
    IF ~HaveSpell(CLERIC_HEAL)~ THEN 
      DO ~MoveToObjectNoInterrupt(Player2) 
    	Spell(Player2,CLERIC_HEAL)
    	ActionOverride("m#amber",SetDialog("m#amberj"))~ EXIT  
  END
  
  IF ~~ THEN BEGIN M#P2FLT5Vic6
    SAY @4137 /* @4137 = ~There is nothing I can do for him right now, and even if there was, your tone of voice might just persuade me *not* to help him.~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT5E
    IF ~InParty("Anomen")
        See("Anomen")
        !Dead("Anomen")
        !StateCheck("Anomen",STATE_PANIC)
        !StateCheck("Anomen",STATE_BERSERK)
        !StateCheck("Anomen",STATE_CHARMED)
        !StateCheck("Anomen",STATE_CONFUSED)
        !StateCheck("Anomen",STATE_HELPLESS)
        !StateCheck("Anomen",STATE_STUNNED)
        !StateCheck("Anomen",STATE_SLEEPING)
        !StateCheck("Anomen",STATE_SILENCED)~ THEN EXTERN M#AMBERN P2FLT5Ano1
  END
  
  IF ~~ THEN BEGIN M#FLT7
    SAY @4139 /* @4139 = ~Great, jaluk. Go ahead and turn this nonsense into a sobfest. Just get a grip on yourselves, both of you.~ */
    IF ~~ THEN EXTERN M#AMBERN FLT7D
  END
  IF ~~ THEN BEGIN M#FLT2ViconiaD
    SAY @4140 /* @4140 = ~All right, <GABBER>. You can come out of the bushes now.~ */
    IF ~~ THEN REPLY @4141 /* @4141 = ~(Run back to the camp as fast as you can.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     								      ActionOverride("m#amber",SetDialog("m#amberj"))								
    								      RestParty()~ EXIT
  END
  IF ~~ THEN BEGIN M#P2FLT2ViconiaD
      SAY @4140 /* @4140 = ~All right, <GABBER>. You can come out of the bushes now.~ */
      IF ~~ THEN REPLY @4141 /* @4141 = ~(Run back to the camp as fast as you can.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
      									ActionOverride("m#amber",SetDialog("m#amberj"))								        
       									RestParty()~ EXIT
  END
  
  IF ~Global("M#AmberViconiaRomanceConflict","GLOBAL",2)
      !StateCheck("M#Amber",STATE_SLEEPING)
      !StateCheck("M#Amber",STATE_HELPLESS)
      !StateCheck("M#Amber",STATE_STUNNED)
      !StateCheck("M#Amber",STATE_SILENCED)~ THEN BEGIN M#AmberViconiaRCBegin1
    SAY @4142 /* @4142 = ~I can see through the pathetic game you're playing, little vixen, and I suggest that you stop.~ */
      IF ~~ THEN DO ~ActionOverride("m#amber",SetDialog("m#ambern"))~ GOTO M#AmberViconiaRCBegin2
  END
  IF ~~ THEN BEGIN M#AmberViconiaRCBegin2
    SAY @4143 /* @4143 = ~Dos ph' natha wael ka dos gyolaen uns'aa.~ */
    IF ~~ THEN EXTERN M#AMBERN AmberViconiaRCA
  END
  IF ~~ THEN BEGIN M#AmberViconiaRCB
    SAY @4144 /* @4144 = ~Don't play a fool, you're smarter than that. I have seen the longing looks you cast towards <CHARNAME>. I have marked this male as my own. You would do well to tear your lustful eyes away from my property.~ */
    IF ~~ THEN EXTERN M#AMBERN AmberViconiaRCC
  END
  IF ~~ THEN BEGIN M#AmberViconiaRCD
    SAY @4145 /* @4145 = ~Not so fast, little vixen. I'm not finished with you yet.~ */
    IF ~~ THEN EXTERN M#AMBERN AmberViconiaRCE
  END
  IF ~~ THEN BEGIN M#AmberViconiaRCF
    SAY @4146 /* @4146 = ~Very well, jaluk. I shall not tease your little beast any further, but neither shall I tease you any more. And I can assure you that is something you will come to regret.~ */
    IF ~~ THEN DO ~ActionOverride("m#amber",SetDialog("m#amberj"))
    		   SetGlobal("M#AmberViconiaRomanceConflict","GLOBAL",3)
    		   SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT
  END
  IF ~~ THEN BEGIN M#AmberViconiaRCI
    SAY @4147 /* @4147 = ~Now there is an idea worth considering. A vaen il telanthen l' aster.~ */
    IF ~~ THEN DO ~ActionOverride("m#amber",SetDialog("m#amberj"))
    		   SetGlobal("M#AmberViconiaRomanceConflict","GLOBAL",3)
    		   SetGlobal("M#AmberRomanceActive","GLOBAL",3)~ EXIT
  END
  IF ~~ THEN BEGIN M#AmberViconiaRCH
    SAY @4148 /* @4148 = ~Hah! You're not man enough to polish my boots, <CHARNAME>.~ */
    IF ~~ THEN EXTERN M#AMBERN AmberViconiaRCJ
  END
END

APPEND ~BVICONI~
  IF ~~ THEN BEGIN M#AmberViconiaBanterUD1
    SAY @4149 /* @4149 = ~Don't you pretend to know anything about me, you worthless maggot.~ */
    IF ~~ THEN EXTERN BM#AMBER AmberViconiaBanterUD2
  END

  IF ~~ THEN BEGIN M#AmberViconiaBanterUD3
    SAY @4150 /* @4150 = ~Ah, I see. The little fiendling is afraid of the glorious secrets of the Underdark. Taking it out on me is not going to help you, however. It is not my fault that you are too weak for this place.~ */
    IF ~~ THEN EXTERN BM#AMBER AmberViconiaBanterUD4
  END
  
  IF ~~ THEN BEGIN M#AmberViconiaBanterUD5
    SAY @4151 /* @4151 = ~You are a fool, <CHARNAME>, if you presume to sneak in here without anyone noticing. One squealing little tiefling makes no difference. Our presence is already well known to anyone who cares.~ */
    IF ~~ THEN EXTERN BM#AMBER AmberViconiaBanterUD6
  END
  
  IF ~~ THEN BEGIN M#AmberViconiaBanterUD7
    SAY @4152 /* @4152 = ~When we encounter my kin it is totally irrelevant whether I accompany you or not. The drow do not suffer surfacers to walk in these caverns - they will kill us on sight. Or, if you're unlucky enough to survive, you'll live to serve them as slaves.~ */
    IF ~~ THEN EXTERN BM#AMBER AmberViconiaBanterUD8
  END
  
  IF ~~ THEN BEGIN M#AmberViconiaBanterUD7b
      SAY @4153 /* @4153 = ~When they find out who you really are, it is totally irrelevant whether I accompany you or not. The drow do not suffer surfacers to walk in these caverns - they will kill us on sight. Or, if you're unlucky enough to survive, you'll live to serve them as slaves.~ */
      IF ~~ THEN EXTERN BM#AMBER AmberViconiaBanterUD8
  END
  
  IF ~~ THEN BEGIN M#AmberViconiaBanterUD9
      SAY @4154 /* @4154 = ~Dos ph' natha uln'hyrr.~ */
      IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#AmberViconiaBanterUD9b
    SAY @4155 /* @4155 = ~That is a lie and you know it.~ */
    IF ~~ THEN EXIT
  END
END

// APPENDs to Yoshimo's dialog files
APPEND ~YOSHJ~
  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
        CombatCounter(0)
        !StateCheck(Player1,STATE_HELPLESS)
        !StateCheck(Player1,STATE_STUNNED)
        !StateCheck(Player1,STATE_SLEEPING)
        !StateCheck(Player1,STATE_SILENCED)
        Global("M#YoshimoKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
      SAY @4156 /* @4156 = ~That was an embarrassing surprise if I have ever seen one.~ */
      =
      @4157 /* @4157 = ~A bunch of mediocre slavers steals one of our party right from under our noses - they surely must have had an extra incentive to take such a risk. Which means this could turn out profitable for us, should we manage to track them down and find out who this wealthy patron of theirs is.~ */
      IF ~!AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#YoshimoKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkAthkatla
      IF ~AreaCheck("AR2000")~ THEN DO ~SetGlobal("M#YoshimoKidnapResponse","GLOBAL",2)~ GOTO M#KidnapRemarkTrademeet
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkAthkatla
    SAY @4158 /* @4158 = ~I know that the slums have been a hiding place of slavers for generations, and I see no reason why it should be otherwise in this case.~ */
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN M#KidnapRemarkTrademeet
    SAY @4159 /* @4159 = ~It's doubtful that we'll find her in this town. But I do know that the slums of Athkatla have been a hiding place of slavers for generations, and I see no reason why it should be otherwise in this case.~ */
    IF ~~ THEN EXIT
  END  
  
  IF ~~ THEN BEGIN M#T1
    SAY @4160 /* @4160 = ~For all the commotion she has caused I would have expected something more... dangerous. There is definitely something about her that is not quite right, though.~ */
    IF ~~ THEN EXTERN M#AMBER T1J
    IF ~InParty("Imoen2")
         See("Imoen2")
        !StateCheck("Imoen2",STATE_SLEEPING)
        !StateCheck("Imoen2",STATE_HELPLESS)
        !StateCheck("Imoen2",STATE_STUNNED)
        !StateCheck("Imoen2",STATE_SILENCED)~ THEN EXTERN IMOEN2J M#T1
    IF ~InParty("Viconia")
        See("Viconia")
        !StateCheck("Viconia",STATE_SLEEPING)
        !StateCheck("Viconia",STATE_HELPLESS)
        !StateCheck("Viconia",STATE_STUNNED)
        !StateCheck("Viconia",STATE_SILENCED)~ THEN EXTERN VICONIJ M#T1
    IF ~InParty("Korgan")
        See("Korgan")
        !StateCheck("Korgan",STATE_SLEEPING)
        !StateCheck("Korgan",STATE_HELPLESS)
        !StateCheck("Korgan",STATE_STUNNED)
        !StateCheck("Korgan",STATE_SILENCED)~ THEN EXTERN KORGANJ M#T1
  END

  IF WEIGHT #-1 ~Global("M#AmberKidnap","GLOBAL",4)
     CombatCounter(0)
     !StateCheck(Player1,STATE_HELPLESS)
     !StateCheck(Player1,STATE_STUNNED)
     !StateCheck(Player1,STATE_SLEEPING)
     !StateCheck(Player1,STATE_SILENCED)
     Global("M#YoshimoKidnapResponse","GLOBAL",1)~ THEN BEGIN M#KidnapRemark
    SAY @4156 /* @4156 = ~That was an embarrassing surprise if I have ever seen one.~ */
        =
        @4157 /* @4157 = ~A bunch of mediocre slavers steals one of our party right from under our noses - they surely must have had an extra incentive to take such a risk. Which means this could turn out profitable for us, should we manage to track them down and find out who this wealthy patron of theirs is.~ */
        =
        @4158 /* @4158 = ~I know that the slums have been a hiding place of slavers for generations, and I see no reason why it should be otherwise in this case.~ */
    IF ~~ THEN DO ~SetGlobal("M#YoshimoKidnapResponse","GLOBAL",2)~ EXIT
  END
  IF ~~ THEN BEGIN M#LT2
    SAY @4161 /* @4161 = ~It seems that spring is upon us - the sap is rising in the trees and the bees are busy with the flowers. Heh heh.~ */
  IF ~~ THEN EXTERN M#AMBERN LT2K 
  END
  IF ~~ THEN BEGIN M#P2LT2
     SAY @4161 /* @4161 = ~It seems that spring is upon us - the sap is rising in the trees and the bees are busy with the flowers. Heh heh.~ */
   IF ~~ THEN EXTERN M#AMBERN P2LT2K 
  END   
END

// APPENDs to Player1's dialog file

APPEND ~PLAYER1~
  IF WEIGHT #-1 ~Global("M#AmberMatch","GLOBAL",1)
    	         Global("M#BathTalk","GLOBAL",1)
    	         !StateCheck(Player1,STATE_HELPLESS)
    	         !StateCheck(Player1,STATE_STUNNED)
     	         !StateCheck(Player1,STATE_SLEEPING)
    	         !StateCheck(Player1,STATE_SILENCED)~ THEN BEGIN M#FLT2Begin
    SAY @4162 /* @4162 = ~(After a hard day's march, you feel even more dirty and smelly than usual. You recall seeing a pond just a stone's throw away that might help remedy the situation.)~ */
    IF ~~ THEN REPLY @4163 /* @4163 = ~(Go to sleep, disregarding the stink of blood and sweat.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~CheckStatGT(Player1,5,FATIGUE)~ THEN REPLY @4164 /* @4164 = ~(Go wash yourself in the refreshing pool of water, even though it's bound to be ice cold.) ~ */ GOTO M#FLT2X
    IF ~CheckStatLT(Player1,6,FATIGUE)~ THEN REPLY @4164 /* @4164 = ~(Go wash yourself in the refreshing pool of water, even though it's bound to be ice cold.) ~ */ GOTO M#FLT2Y
  END

  IF ~~ THEN BEGIN M#FLT2X
    SAY @4165 /* @4165 = ~(Although you feel dead tired, you nevertheless decide to go for a quick swim in the small pond you saw earlier when you were looking for a campsite. While you approach the spot where you remember seeing the pond, you hear soft splashes of water that tell you somebody has already stolen your watering hole.)~ */
    IF ~~ THEN REPLY @4166 /* @4166 = ~(Turn around and go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    								  ActionOverride("m#amber",SetDialog("m#amberj"))
  								RestParty()~ EXIT
    IF ~RandomNum(5,1)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A1
    IF ~RandomNum(5,2)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A2
    IF ~RandomNum(5,3)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A3
    IF ~RandomNum(5,4)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A4
    IF ~RandomNum(5,5)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A5
    IF ~~ THEN REPLY @4168 /* @4168 = ~(Listen.)~ */ GOTO M#FLT2AmberB
  END 

  IF ~~ THEN BEGIN M#FLT2Y
    SAY @4169 /* @4169 = ~(Since you are not feeling too tired, you decide to go for a quick swim in the small pond you saw earlier when you were looking for a campsite. While you approach the spot where you remember seeing the pond, you hear soft splashes of water that tell you somebody has already stolen your watering hole.)~ */
    IF ~~ THEN REPLY @4166 /* @4166 = ~(Turn around and go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    								  ActionOverride("m#amber",SetDialog("m#amberj"))
  								RestParty()~ EXIT
    IF ~RandomNum(5,1)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A1
    IF ~RandomNum(5,2)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A2
    IF ~RandomNum(5,3)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A3
    IF ~RandomNum(5,4)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A4
    IF ~RandomNum(5,5)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#FLT2A5
    IF ~~ THEN REPLY @4168 /* @4168 = ~(Listen.)~ */ GOTO M#FLT2AmberB
  END 

  IF ~~ THEN BEGIN M#FLT2A1
    SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
    IF ~~ THEN GOTO M#FLT2AmberA
    IF ~IsValidForPartyDialog("Korgan")~ THEN GOTO M#FLT2KorganA
    IF ~IsValidForPartyDialog("Korgan")
        Race(Player1,DWARF)~ THEN GOTO M#FLT2KorganA2
  END

  IF ~~ THEN BEGIN M#FLT2A2
    SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
    IF ~~ THEN GOTO M#FLT2AmberA
    IF ~IsValidForPartyDialog("Valygar")~ THEN GOTO M#FLT2ValygarA
  END

  IF ~~ THEN BEGIN M#FLT2A3
    SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
    IF ~~ THEN GOTO M#FLT2AmberA
    IF ~IsValidForPartyDialog("Viconia")~ THEN GOTO M#FLT2ViconiaA
  END

  IF ~~ THEN BEGIN M#FLT2A4
    SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
    IF ~~ THEN GOTO M#FLT2AmberA
    IF ~IsValidForPartyDialog("Aerie")~ THEN GOTO M#FLT2AerieA
  END

  IF ~~ THEN BEGIN M#FLT2A5
    SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
    IF ~~ THEN GOTO M#FLT2AmberA
  END

  IF ~~ THEN BEGIN M#FLT2KorganA
    SAY @4171 /* @4171 = ~(You see something you would never have believed you would have to see: a stark naked dwarf bathing. The once so clear pool is visibly murky from all the dirt Korgan has rubbed off from his thick skin.)~ */
    =
    @4172 /* @4172 = ~(You turn, perhaps too quickly because you realise you have just made your presence more than clear to the dwarf by stepping on a twig that makes an uncomfortably loud crack under your feet.)~ */
    IF ~~ THEN EXTERN KORGANJ M#FLT2KorganB
  END

  IF ~~ THEN BEGIN M#FLT2KorganA2
    SAY @4173 /* @4173 = ~(To your surprise, you see Korgan bathing in the pond. The once so clear pool is visibly murky from all the dirt Korgan has rubbed off from his thick skin. You cannot decide which upsets you more: the fact that Korgan is actually taking a bath, or the fact that his obvious lack of personal hygiene, as witnessed by the current state of the pond, so painfully highlights his being a disgrace to your noble - and generally cleanly - race.)~ */
      =
    @4174 /* @4174 = ~(As you are trying to decide upon the correct course of action for this situation, you realise that you have just made your presence more than clear to him by stepping on a twig that makes an uncomfortably loud crack under your feet.)~ */
    IF ~~ THEN EXTERN KORGANJ M#FLT2KorganB
  END

  IF ~~ THEN BEGIN M#FLT2KorganC
    SAY @4175 /* @4175 = ~(You have probably never run so fast, but on the other hand, you have never had a such good reason. Korgan's anger eventually subsides, but he continues to throw nasty glares in your direction for several days.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
    		   RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN M#FLT2AerieA
    SAY @4176 /* @4176 = ~(You barely manage to realise that it is Aerie whose bath you have interrupted before she catches you with her infravision.)~ */
    IF ~~ THEN EXTERN AERIEJ M#FLT2AerieB
  END

  IF ~~ THEN BEGIN M#FLT2ViconiaA
    SAY @4177 /* @4177 = ~(You see Viconia - all of her. The drow is standing sideways to you, knee deep in the water. Her hands are high above her head as she soaps her long white hair. At first you can only see her silhouette against the rippling darkness of the water, but suddenly the clouds break and the moonlight reflects softly from her ebony skin. You know you should leave, but you can only stand still, transfixed by the sight of her.)~ */
    IF ~~ THEN REPLY @4178 /* @4178 = ~(With great effort, tear your eyes off the drow and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    	ActionOverride("m#amber",SetDialog("m#amberj"))
    	RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#FLT2ViconiaB
  END

  IF ~~ THEN BEGIN M#FLT2ViconiaB
    SAY @4180 /* @4180 = ~(The night is cool and you can see Viconia shiver in the chill air. Somehow the involuntary shivers make her seem vulnerable, creating a fascinating contrast to the otherwise tough nature of the drow. Suddenly you feel warm and while your every instinct practically screams for you to leave, your feet remain rooted to the ground.)~ */
    IF ~~ THEN REPLY @4181 /* @4181 = ~(Force your feet from the ground and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#FLT2ViconiaC
  END

  IF ~~ THEN BEGIN M#FLT2ViconiaC
    SAY @4182 /* @4182 = ~(Viconia slowly wades to the deeper end of the pond. She tilts her head backwards to wash the soap from her hair that looks like the brilliant silvery web of a spider floating on the surface of the dark water. Having rinsed her hair, she slowly but steadily walks back towards the shallow end of the pond, wringing water out of her silvery mane. As she steps out of the pond, small rivulets of water run down between her breasts to her belly and below.)~ */
    =
    @4183 /* @4183 = ~(Once on the shore, the drow turns straight towards you, boldly and uninhibitedly displaying her naked body, still glistening with water in the moonlight. You see her eyes gleam with a soft, crimson glow.)~ */
    IF ~~ THEN EXTERN VICONIJ M#FLT2ViconiaD
  END

  IF ~~ THEN BEGIN M#FLT2ValygarA
    SAY @4184 /* @4184 = ~(You are startled by a loud, resounding crack just as you reach the edge of the clearing. The crack is followed by several more in a rapid succession.)~ */
    =
    @4185 /* @4185 = ~(As soon as you recover from your surprise, you realise it is Valygar who is making the noise by hitting a stone the size of a fist against a larger, flat one sitting on the ground. Spread on the larger rock you see some roots that you think might be soapwort, which are rapidly turning into a mound of thick foam as Valygar continues to grind and beat them with the stone.)~ */
    IF ~~ THEN REPLY @4186 /* @4186 = ~(Leave Valygar alone, sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))		   							RestParty()~ EXIT
    IF ~~ THEN REPLY @4187 /* @4187 = ~Hey, Valygar! I'm sorry to disturb you, but I felt like I could use a bath. (Step out of the woods.)~ */ EXTERN VALYGARJ M#FLT2ValygarB
    IF ~~ THEN REPLY @4188 /* @4188 = ~(Do nothing, stay where you are.)~ */ GOTO M#FLT2ValygarC
  END

  IF ~~ THEN BEGIN M#FLT2ValygarC
    SAY @4189 /* @4189 = ~(You cannot help noticing that the tall ranger has already stripped half-naked, apparently to take the bath that you longed for, and to wash the dirt and bloodstains from his clothes. You cannot help admiring his well-proportioned body as his taut muscles work the pestle stone up and down again, the moonlight glistening on his darkly tanned skin. His shirt, still wet and dripping, is hanging from a nearby tree branch as Valygar prepares to remove the rest of his clothes.)~ */
    IF ~OR(3)
     	  CheckStatGT(Player1,13,DEX)
          Class(Player1,RANGER_ALL)
          Class(Player1,THIEF_ALL)~ THEN REPLY @4190 /* @4190 = ~(Leave Valygar alone and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
           ActionOverride("m#amber",SetDialog("m#amberj"))
           RestParty()~ EXIT
    IF ~CheckStatLT(Player1,14,DEX)
        !Class(Player1,RANGER_ALL)
        !Class(Player1,THIEF_ALL)~ THEN REPLY @4190 /* @4190 = ~(Leave Valygar alone and sneak back to the camp.)~ */ GOTO M#FLT2ValygarD
    IF ~~ THEN REPLY @4187 /* @4187 = ~Hey, Valygar! I'm sorry to disturb you, but I felt like I could use a bath. (Step out of the woods.)~ */ EXTERN VALYGARJ M#FLT2ValygarB
    IF ~~ THEN REPLY @4191 /* @4191 = ~(Do nothing, stay where you are.) ~ */ GOTO M#FLT2ValygarH
  END

  IF ~~ THEN BEGIN M#FLT2ValygarD
    SAY @4192 /* @4192 = ~ (When you turn around to leave, a root snags your foot and despite your panicked attempts to regain your balance, you fall headlong into the rushes.)~ */
    =
    @4193 /* @4193 = ~(As you try to scramble back to your feet, you feel something hit you squarely between the shoulder blades and quickly find yourself pressed face-down against the ground. Something unpleasantly sharp presses firmly against the small of your back. A hand grabs you by your shirt and flips you over. You find yourself staring at Valygar's naked form holding the tip of a keen-edged sword in front of your face.)~ */ 
    IF ~~ THEN EXTERN VALYGARJ M#FLT2ValygarE  
  END

  IF ~~ THEN BEGIN M#FLT2ValygarH
    SAY @4194 /* @4194 = ~(You stand mesmerised by the sight of the sleek ranger as he carefully removes the rest of his dirty clothes and carefully steps into the cold water. His muscles tense as he wades deeper and nimbly dives into the dark pool, disappearing under the calm surface with the slightest of splashes.)~ */
    IF ~~ THEN REPLY @4195 /* @4195 = ~(Leave and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    							       ActionOverride("m#amber",SetDialog("m#amberj"))
    		   	   				       RestParty()~ EXIT
    IF ~~ THEN REPLY @4188 /* @4188 = ~(Do nothing, stay where you are.)~ */ GOTO M#FLT2ValygarI
  END
  
  IF ~~ THEN BEGIN M#FLT2ValygarI
    SAY @4196 /* @4196 = ~(After looking at the empty and silent pond for what seems like an eternity, you begin to suspect having imagined the whole thing. Just as you blink your eyes as if to shake off the memory, Valygar suddenly emerges from the placid water, splashing water high into the air. As he steps out of the water, you suddenly realise that you are staring straight into his eyes.)~ */
    IF ~~ THEN REPLY @4197 /* @4197 = ~(Turn around and run for your life.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    								ActionOverride("m#amber",SetDialog("m#amberj"))
      		   	   				        RestParty()~ EXIT
    IF ~~ THEN REPLY @4198 /* @4198 = ~Hey, Valygar! I'm sorry to disturb you, but I felt like I could use a bath.~ */ EXTERN VALYGARJ M#FLT2ValygarB
  END

  IF ~~ THEN BEGIN M#FLT2ValygarK
    SAY @4199 /* @4199 = ~(You walk back to the camp and wait for Valygar to return. After a while he strides back into the camp and discreetly nods at you. The water of the pond is just as freezing as you thought it might be, but the soapwort Valygar left you gets you feeling extra clean and fresh.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
    		   RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN M#FLT2ValygarL
    SAY @4200 /* @4200 = ~(The bath is quite refreshing and the soapwort leaves you feeling extra clean and fresh afterwards.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
       		   RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN M#FLT2AmberB
    SAY @4201 /* @4201 = ~(You hear soft humming that after a while transforms to a murmuring song. You cannot quite make out the words, but you recognise the voice to be Amber's.)~ */
    IF ~~ THEN REPLY @4202 /* @4202 = ~(Go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    						  ActionOverride("m#amber",SetDialog("m#amberj"))
    						  RestParty()~ EXIT
    IF ~~ THEN REPLY @4203 /* @4203 = ~(Sneak closer.)~ */ GOTO M#FLT2AmberA
    IF ~~ THEN REPLY @4204 /* @4204 = ~(Start humming the same tune.)~ */ GOTO M#FLT2AmberN
  END
 
  IF ~~ THEN BEGIN M#FLT2AmberA
    SAY @4205 /* @4205 = ~(As you carefully peek between the branches, your heart almost skips a beat. You see Amber standing waist-deep in the water, lathering her gorgeous red mane and humming a tune you do not remember ever hearing before.)~ */
    =
    @4206 /* @4206 = ~(You cannot help staring at the sight of her taut body as she slowly works the foam into her hair. Despite the feeling that you really should not be watching, your feet feel as if they had grown roots.)~ */
    IF ~~ THEN REPLY @4181 /* @4181 = ~(Force your feet from the ground and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#FLT2AmberD
    IF ~~ THEN REPLY @4207 /* @4207 = ~(Step out of the bush and into the clearing.)~ */ GOTO M#FLT2AmberC
  END

  IF ~~ THEN BEGIN M#FLT2AmberD
    SAY @4208 /* @4208 = ~(Having worked the soap into her hair, Amber goes on to cover her whole body with the luxurious foam, enjoying its cleansing effect. As your eyes trace every line of her delicate shape, glistening with soap in the moonlight, you cannot help thinking that for tonight, the scent that is so inimitably her will be gone, replaced by the fresh smell of soapwort. You know you should leave, but you can only stand still, transfixed by the sight of her.)~ */
    IF ~~ THEN REPLY @4209 /* @4209 = ~(With great effort, tear your eyes off Amber and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#FLT2AmberE
    IF ~~ THEN REPLY @4207 /* @4207 = ~(Step out of the bush and into the clearing.)~ */ GOTO M#FLT2AmberC
  END

  IF ~~ THEN BEGIN M#FLT2AmberE
    SAY @4210 /* @4210 = ~(With one swift movement Amber dives into the depths of the pond, surfacing for air on the other side. Preserving her natural grace even in the water, she languidly swims back towards the shore, seeming to savour the cool touch of the water on her freshly washed body. As she stands up in the waist-deep water and wades towards the shore, little islands of foam float around her legs.)~ */
    IF ~~ THEN REPLY @4211 /* @4211 = ~(Sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    						     ActionOverride("m#amber",SetDialog("m#amberj"))
    						     RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#FLT2AmberF
    IF ~~ THEN REPLY @4207 /* @4207 = ~(Step out of the bush and into the clearing.)~ */ GOTO M#FLT2AmberC
  END

  IF ~~ THEN BEGIN M#FLT2AmberF
    SAY @4212 /* @4212 = ~(Standing only ankle deep in the water, Amber lets her eyes routinely scan her surroundings, like a deer watching out for predators. As her eyes slide past the bush you are hiding in, she freezes. The soft red glow of her eyes disappears for a surprised blink of an eye, and you can almost feel her heart skip a beat.)~ */
    =
    @4213 /* @4213 = ~(As if acting upon pure instinct, she dashes for the sword propped against the rock on which her clothes lie.)~ */
    IF ~~ THEN EXTERN M#AMBERN FLT2AmberG
  END

  IF ~~ THEN BEGIN M#FLT2AmberH 
    SAY @4214 /* @4214 = ~(You are distracted by the sight of her lithe yet unmistakably feminine body glistening in the moonlight, her muscles tense and primed for attack. You notice a slight shiver going through her body, but you cannot tell whether it is due to the cool air, the rush of adrenaline or something else altogether.)~ */
    IF ~~ THEN REPLY @4215 /* @4215 = ~Amber, it's all right. I just fancied a bath, but it seems that you had the same idea.~ */ EXTERN M#AMBERN FLT2AmberI
    IF ~~ THEN REPLY @4216 /* @4216 = ~What was that tune you were humming? I don't think that I have ever heard it before.~ */ EXTERN M#AMBERN FLT2AmberJ
    IF ~~ THEN REPLY @4217 /* @4217 = ~Oh, I get the hint. I am sorry for having disturbed your bath.~ */ EXTERN M#AMBERN FLT2AmberK
    IF ~~ THEN REPLY @4218 /* @4218 = ~Amber - it is cold here and you are shivering. Would you mind if I- ~ */ EXTERN M#AMBERN FLT2AmberL
  END

  IF ~~ THEN BEGIN M#FLT2AmberC
    SAY @4219 /* @4219 = ~(Within a heartbeat of you stepping out of the woods, Amber realises that she has been ambushed. As if acting upon pure instinct, she dashes for the sword propped against the rock on which her clothes lie.)~ */
    IF ~~ THEN EXTERN M#AMBERN FLT2AmberG
  END

  IF ~~ THEN BEGIN M#FLT2AmberN
    SAY @4220 /* @4220 = ~(Within two heartbeats of joining the song, Amber's voice ends abruptly and you hear rapid splashes as she quickly wades to the shore. The sound of a sword being pulled out of its sheath tells you that she is quite prepared to defend herself.)~ */
    IF ~~ THEN REPLY @4221 /* @4221 = ~Amber, it is all right. I just fancied a bath, but it seems that you had the same idea. (Make your way to the pond and  step out of the bushes.)~ */ GOTO M#FLT2AmberO
    IF ~~ THEN REPLY @4222 /* @4222 = ~(Sneak away, back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    							   ActionOverride("m#amber",SetDialog("m#amberj"))
   						           RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN M#FLT2AmberO
    SAY @4223 /* @4223 = ~(When you step out of the bush and raise your eyes to greet Amber, you are surprised to find her standing there stark naked, facing you with her blade drawn and pointed directly at your throat.)~ */
    =
    @4224 /* @4224 = ~(You are distracted by the sight of her lithe yet unmistakably feminine body glistening in the moonlight, her muscles taut and primed for attack. You notice a slight shiver going through her body, but you cannot tell whether it is due to the cool air, the rush of adrenaline or something else altogether.)~ */
     IF ~~ THEN REPLY @4225 /* @4225 = ~Whoa! You can put that blade away, it's just me. And besides, I don't think you'd need it anyway - most attackers would probably drop their weapons out of sheer surprise.~ */ EXTERN M#AMBERN FLT2AmberM
     IF ~~ THEN REPLY @4216 /* @4216 = ~What was that tune you were humming? I don't think that I have ever heard it before.~ */ EXTERN M#AMBERN FLT2AmberJ
     IF ~~ THEN REPLY @4217 /* @4217 = ~Oh, I get the hint. I am sorry for having disturbed your bath.~ */ EXTERN M#AMBERN FLT2AmberK
     IF ~~ THEN REPLY @4226 /* @4226 = ~Amber - it is cold here and  you are shivering. Would you mind if I- ~ */ EXTERN M#AMBERN FLT2AmberL
  END
END

// APPENDs to Player2's dialog file

APPEND ~MULTIG~
  IF WEIGHT #-1 ~Global("M#AmberMatch","GLOBAL",3)
    	         Global("M#BathTalk","GLOBAL",1)
    	         !StateCheck(Player2,STATE_HELPLESS)
    	         !StateCheck(Player2,STATE_STUNNED)
     	         !StateCheck(Player2,STATE_SLEEPING)
    	         !StateCheck(Player2,STATE_SILENCED)~ THEN BEGIN M#P2FLT2Begin
    SAY @4162 /* @4162 = ~(After a hard day's march, you feel even more dirty and smelly than usual. You recall seeing a pond just a stone's throw away that might help remedy the situation.)~ */
    IF ~~ THEN REPLY @4163 /* @4163 = ~(Go to sleep, disregarding the stink of blood and sweat.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~CheckStatGT(Player2,5,FATIGUE)~ THEN REPLY @4164 /* @4164 = ~(Go wash yourself in the refreshing pool of water, even though it's bound to be ice cold.) ~ */ GOTO M#P2FLT2X
    IF ~CheckStatLT(Player2,6,FATIGUE)~ THEN REPLY @4164 /* @4164 = ~(Go wash yourself in the refreshing pool of water, even though it's bound to be ice cold.) ~ */ GOTO M#P2FLT2Y
  END

  IF ~~ THEN BEGIN M#P2FLT2X
    SAY @4165 /* @4165 = ~(Although you feel dead tired, you nevertheless decide to go for a quick swim in the small pond you saw earlier when you were looking for a campsite. While you approach the spot where you remember seeing the pond, you hear soft splashes of water that tell you somebody has already stolen your watering hole.)~ */
    IF ~~ THEN REPLY @4166 /* @4166 = ~(Turn around and go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    								  ActionOverride("m#amber",SetDialog("m#amberj"))
  								  RestParty()~ EXIT
    IF ~RandomNum(5,1)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A1
    IF ~RandomNum(5,2)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A2
    IF ~RandomNum(5,3)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A3
    IF ~RandomNum(5,4)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A4
    IF ~RandomNum(5,4)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A5
    IF ~~ THEN REPLY @4168 /* @4168 = ~(Listen.)~ */ GOTO M#P2FLT2AmberB
  END 

    IF ~~ THEN BEGIN M#P2FLT2Y
      SAY @4169 /* @4169 = ~(Since you are not feeling too tired, you decide to go for a quick swim in the small pond you saw earlier when you were looking for a campsite. While you approach the spot where you remember seeing the pond, you hear soft splashes of water that tell you somebody has already stolen your watering hole.)~ */
      IF ~~ THEN REPLY @4166 /* @4166 = ~(Turn around and go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
      								  ActionOverride("m#amber",SetDialog("m#amberj"))
    								RestParty()~ EXIT
      IF ~RandomNum(5,1)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A1
      IF ~RandomNum(5,2)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A2
      IF ~RandomNum(5,3)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A3
      IF ~RandomNum(5,4)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A4
      IF ~RandomNum(5,4)~ THEN REPLY @4167 /* @4167 = ~(Sneak closer to see who it is.)~ */ GOTO M#P2FLT2A5
      IF ~~ THEN REPLY @4168 /* @4168 = ~(Listen.)~ */ GOTO M#P2FLT2AmberB
    END 
  
    IF ~~ THEN BEGIN M#P2FLT2A1
      SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
      IF ~~ THEN GOTO M#P2FLT2AmberA
      IF ~IsValidForPartyDialog("Korgan")~ THEN GOTO M#P2FLT2KorganA
      IF ~IsValidForPartyDialog("Korgan")
      Race(Player2,DWARF)~ THEN GOTO M#P2FLT2KorganA2
    END
  
    IF ~~ THEN BEGIN M#P2FLT2A2
      SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
      IF ~~ THEN GOTO M#P2FLT2AmberA
      IF ~IsValidForPartyDialog("Valygar")~ THEN GOTO M#P2FLT2ValygarA
    END
  
    IF ~~ THEN BEGIN M#P2FLT2A3
      SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
      IF ~~ THEN GOTO M#P2FLT2AmberA
      IF ~IsValidForPartyDialog("Viconia")~ THEN GOTO M#P2FLT2ViconiaA
    END
  
    IF ~~ THEN BEGIN M#P2FLT2A4
      SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
      IF ~~ THEN GOTO M#P2FLT2AmberA
      IF ~IsValidForPartyDialog("Aerie")~ THEN GOTO M#P2FLT2AerieA
    END
  
    IF ~~ THEN BEGIN M#P2FLT2A5
      SAY @4170 /* @4170 = ~(You sneak through the bushes as quietly as the rustling branches allow. Stopping right before you step out of the shadows to the moonlit clearing, you suddenly find out who it was making all the splashing noises.)~ */
      IF ~~ THEN GOTO M#P2FLT2AmberA
    END

    IF ~~ THEN BEGIN M#P2FLT2KorganA
      SAY @4171 /* @4171 = ~(You see something you would never have believed you would have to see: a stark naked dwarf bathing. The once so clear pool is visibly murky from all the dirt Korgan has rubbed off from his thick skin.)~ */
      =
      @4172 /* @4172 = ~(You turn, perhaps too quickly because you realise you have just made your presence more than clear to the dwarf by stepping on a twig that makes an uncomfortably loud crack under your feet.)~ */
      IF ~~ THEN EXTERN KORGANJ M#P2FLT2KorganB
    END

    IF ~~ THEN BEGIN M#P2FLT2KorganA2
      SAY @4227 /* @4227 = ~(To your surprise, you see Korgan bathing in the pond. The once so clear pool is visibly murky from all the dirt Korgan has rubbed off from his thick skin. You cannot decide which upsets you more: the fact that Korgan is actually taking a bath, or the fact that his obvious lack of personal hygiene witnessed by the current state of the pond so painfully highlights his being a disgrace to your noble - and generally cleanly - race.)~ */
        =
      @4174 /* @4174 = ~(As you are trying to decide upon the correct course of action for this situation, you realise that you have just made your presence more than clear to him by stepping on a twig that makes an uncomfortably loud crack under your feet.)~ */
      IF ~~ THEN EXTERN KORGANJ M#FLT2KorganB
    END

    IF ~~ THEN BEGIN M#P2FLT2KorganC
      SAY @4228 /* @4228 = ~(You have probably never run so fast, but on the other hand, you have never had a such good reason. Korgan's anger eventually subsides, but he continues to throw nasty glares at your direction for several days.)~ */
      IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		     ActionOverride("m#amber",SetDialog("m#amberj"))
     		     RestParty()~ EXIT
    END

  IF ~~ THEN BEGIN M#P2FLT2AerieA
    SAY @4176 /* @4176 = ~(You barely manage to realise that it is Aerie whose bath you have interrupted before she catches you with her infravision.)~ */
    IF ~~ THEN EXTERN AERIEJ M#P2FLT2AerieB
  END

  IF ~~ THEN BEGIN M#P2FLT2ViconiaA
    SAY @4229 /* @4229 = ~(You see Viconia - all of her. The drow is standing sideways to you knee deep in the water. Her hands are high above her head  as she soaps her long white hair. At first you can only see her silhouette against the rippling darkness of the water, but suddenly the clouds break and the moonlight reflects softly from her ebony skin. You know you should leave, but you can only stand still, transfixed by the sight of her.)~ */
    IF ~~ THEN REPLY @4178 /* @4178 = ~(With great effort, tear your eyes off the drow and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    	ActionOverride("m#amber",SetDialog("m#amberj"))
    	RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#P2FLT2ViconiaB
  END

  IF ~~ THEN BEGIN M#P2FLT2ViconiaB
    SAY @4180 /* @4180 = ~(The night is cool and you can see Viconia shiver in the chill air. Somehow the involuntary shivers make her seem vulnerable, creating a fascinating contrast to the otherwise tough nature of the drow. Suddenly you feel warm and while your every instinct practically screams for you to leave, your feet remain rooted to the ground.)~ */
    IF ~~ THEN REPLY @4181 /* @4181 = ~(Force your feet from the ground and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#P2FLT2ViconiaC
  END

  IF ~~ THEN BEGIN M#P2FLT2ViconiaC
    SAY @4230 /* @4230 = ~(Viconia slowly wades to the deeper end of the pond. Se tilts her head backwards to wash the soap from her hair that looks like the brilliant silvery web of a spider, floating on the surface of the dark water. Having rinsed her hair, she slowly but steadily walks back towards the shallow end of the pond, wringing water out of her silvery mane. As she steps out of the pond, small rivers of water run down between her breasts to her belly and below.)~ */
    =
    @4231 /* @4231 = ~(Once on the shore, the drow turns straight at you, boldly and uninhibitedly displaying her naked body, still glistening with water in the moonlight. You see her eyes gleam with a soft, crimson glow.)~ */
    IF ~~ THEN EXTERN VICONIJ M#P2FLT2ViconiaD
  END

  IF ~~ THEN BEGIN M#P2FLT2ValygarA
    SAY @4184 /* @4184 = ~(You are startled by a loud, resounding crack just as you reach the edge of the clearing. The crack is followed by several more in a rapid succession.)~ */
    =
    @4185 /* @4185 = ~(As soon as you recover from your surprise, you realise it is Valygar who is making the noise by hitting a stone the size of a fist against a larger, flat one sitting on the ground. Spread on the larger rock you see some roots that you think might be soapwort, which are rapidly turning into a mound of thick foam as Valygar continues to grind and beat them with the stone.)~ */
    IF ~~ THEN REPLY @4186 /* @4186 = ~(Leave Valygar alone, sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
      ActionOverride("m#amber",SetDialog("m#amberj"))		   							RestParty()~ EXIT
    IF ~~ THEN REPLY @4187 /* @4187 = ~Hey, Valygar! I'm sorry to disturb you, but I felt like I could use a bath. (Step out of the woods.)~ */ EXTERN VALYGARJ M#P2FLT2ValygarB
    IF ~~ THEN REPLY @4188 /* @4188 = ~(Do nothing, stay where you are.)~ */ GOTO M#P2FLT2ValygarC
  END

  IF ~~ THEN BEGIN M#P2FLT2ValygarC
    SAY @4232 /* @4232 = ~(You cannot help noticing that the tall ranger has already stripped half-naked, apparently to take the bath that you longed for, and to wash the dirt and bloodstains from his clothes. You cannot help admiring his well-proportioned body as his taut muscles work the pestle stone up and down again, the moonlight glistening on his dark tan skin. His shirt, still wet and dripping, is hanging from a nearby tree branch as Valygar prepares to remove the rest of his clothes.)~ */
    IF ~OR(3)
     	  CheckStatGT(Player2,13,DEX)
          Class(Player2,RANGER_ALL)
          Class(Player2,THIEF_ALL)~ THEN REPLY @4190 /* @4190 = ~(Leave Valygar alone and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
           ActionOverride("m#amber",SetDialog("m#amberj"))
    	   RestParty()~ EXIT
    IF ~CheckStatLT(Player2,14,DEX)
        !Class(Player2,RANGER_ALL)
        !Class(Player2,THIEF_ALL)~ THEN REPLY @4190 /* @4190 = ~(Leave Valygar alone and sneak back to the camp.)~ */ GOTO M#P2FLT2ValygarD
    IF ~~ THEN REPLY @4187 /* @4187 = ~Hey, Valygar! I'm sorry to disturb you, but I felt like I could use a bath. (Step out of the woods.)~ */ EXTERN VALYGARJ M#P2FLT2ValygarB
    IF ~~ THEN REPLY @4191 /* @4191 = ~(Do nothing, stay where you are.) ~ */ GOTO M#P2FLT2ValygarH
  END

  IF ~~ THEN BEGIN M#P2FLT2ValygarD
    SAY @4192 /* @4192 = ~ (When you turn around to leave, a root snags your foot and despite your panicked attempts to regain your balance, you fall headlong into the rushes.)~ */
    =
    @4233 /* @4233 = ~(As you try to scramble back on your feet, you feel something hit your back and find yourself pressed face-down against the ground with something sharp pressing against your back. A hand grabs you by your shirt and flips you over. You find yourself on your back, staring at Valygar's naked form holding the tip of a sharp sword in front of your face.)~ */ 
    IF ~~ THEN EXTERN VALYGARJ M#P2FLT2ValygarE  
  END

  IF ~~ THEN BEGIN M#P2FLT2ValygarH
    SAY @4234 /* @4234 = ~(You stand mesmerised by the sight of the sleek ranger, as he carefully removes the rest of his dirty clothes and carefully steps into the cold water. His muscles tense as he wades deeper and nimbly dives into the dark pool, disappearing under the calm surface with the slightest of splashes.)~ */
    IF ~~ THEN REPLY @4195 /* @4195 = ~(Leave and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    							       ActionOverride("m#amber",SetDialog("m#amberj"))
    		   	   				       RestParty()~ EXIT
    IF ~~ THEN REPLY @4188 /* @4188 = ~(Do nothing, stay where you are.)~ */ GOTO M#P2FLT2ValygarI
  END
  
  IF ~~ THEN BEGIN M#P2FLT2ValygarI
    SAY @4196 /* @4196 = ~(After looking at the empty and silent pond for what seems like an eternity, you begin to suspect having imagined the whole thing. Just as you blink your eyes as if to shake off the memory, Valygar suddenly emerges from the placid water, splashing water high into the air. As he steps out of the water, you suddenly realise that you are staring straight into his eyes.)~ */
    IF ~~ THEN REPLY @4197 /* @4197 = ~(Turn around and run for your life.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    								ActionOverride("m#amber",SetDialog("m#amberj"))
     		   	   				      RestParty()~ EXIT
    IF ~~ THEN REPLY @4198 /* @4198 = ~Hey, Valygar! I'm sorry to disturb you, but I felt like I could use a bath.~ */ EXTERN VALYGARJ M#P2FLT2ValygarB
  END

  IF ~~ THEN BEGIN M#P2FLT2ValygarK
    SAY @4199 /* @4199 = ~(You walk back to the camp and wait for Valygar to return. After a while he strides back into the camp and discreetly nods at you. The water of the pond is just as freezing as you thought it might be, but the soapwort Valygar left you gets you feeling extra clean and fresh.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
    		   RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN M#P2FLT2ValygarL
    SAY @4200 /* @4200 = ~(The bath is quite refreshing and the soapwort leaves you feeling extra clean and fresh afterwards.)~ */
    IF ~~ THEN DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    		   ActionOverride("m#amber",SetDialog("m#amberj"))
       		   RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberB
    SAY @4201 /* @4201 = ~(You hear soft humming that after a while transforms to a murmuring song. You cannot quite make out the words, but you recognise the voice to be Amber's.)~ */
    IF ~~ THEN REPLY @4202 /* @4202 = ~(Go back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    						  ActionOverride("m#amber",SetDialog("m#amberj"))
    		          			  RestParty()~ EXIT
    IF ~~ THEN REPLY @4203 /* @4203 = ~(Sneak closer.)~ */ GOTO M#P2FLT2AmberA
    IF ~~ THEN REPLY @4204 /* @4204 = ~(Start humming the same tune.)~ */ GOTO M#P2FLT2AmberN
  END
 
  IF ~~ THEN BEGIN M#P2FLT2AmberA
    SAY @4205 /* @4205 = ~(As you carefully peek between the branches, your heart almost skips a beat. You see Amber standing waist-deep in the water, lathering her gorgeous red mane and humming a tune you do not remember ever hearing before.)~ */
    =
    @4235 /* @4235 = ~(You cannot help but stare at the sight of her taut body as she slowly works the foam into her hair. Despite the feeling that you really should not be watching, your feet feel as if they had grown roots.)~ */
    IF ~~ THEN REPLY @4181 /* @4181 = ~(Force your feet from the ground and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
    RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#P2FLT2AmberD
    IF ~~ THEN REPLY @4207 /* @4207 = ~(Step out of the bush and into the clearing.)~ */ GOTO M#P2FLT2AmberC
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberD
    SAY @4236 /* @4236 = ~(Having worked the soap into her hair, Amber goes on to cover her whole body with the luxurious foam, enjoying its cleansing effect. As your eyes trace every line of her delicate shape, glistening with soap in the moonlight, you cannot help thinking that for tonight, the scent that is so inimitably her will be gone, replaced by the fresh smell of soapwort. You know you should leave, but you cannot but stand still, transfixed by the sight of her.)~ */
    IF ~~ THEN REPLY @4209 /* @4209 = ~(With great effort, tear your eyes off Amber and sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
     ActionOverride("m#amber",SetDialog("m#amberj"))
     RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#P2FLT2AmberE
    IF ~~ THEN REPLY @4207 /* @4207 = ~(Step out of the bush and into the clearing.)~ */ GOTO M#P2FLT2AmberC
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberE
    SAY @4237 /* @4237 = ~(With one swift movement Amber dives into the depths of the pond, surfacing for air on the other side. Preserving her natural grace even in the water, she languidly swims back towards the shore, seeming to savour the cool touch of water on her freshly washed body. As she stands up in the waist-deep water and wades towards the shore, little islands of foam float around her legs.)~ */
    IF ~~ THEN REPLY @4211 /* @4211 = ~(Sneak back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    						     ActionOverride("m#amber",SetDialog("m#amberj"))
   						   RestParty()~ EXIT
    IF ~~ THEN REPLY @4179 /* @4179 = ~(Do nothing.)~ */ GOTO M#P2FLT2AmberF
    IF ~~ THEN REPLY @4207 /* @4207 = ~(Step out of the bush and into the clearing.)~ */ GOTO M#P2FLT2AmberC
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberF
    SAY @4212 /* @4212 = ~(Standing only ankle deep in the water, Amber lets her eyes routinely scan her surroundings, like a deer watching out for predators. As her eyes slide past the bush you are hiding in, she freezes. The soft red glow of her eyes disappears for a surprised blink of an eye, and you can almost feel her heart skip a beat.)~ */
    =
    @4213 /* @4213 = ~(As if acting upon pure instinct, she dashes for the sword propped against the rock on which her clothes lie.)~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT2AmberG
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberH 
    SAY @4214 /* @4214 = ~(You are distracted by the sight of her lithe yet unmistakably feminine body glistening in the moonlight, her muscles tense and primed for attack. You notice a slight shiver going through her body, but you cannot tell whether it is due to the cool air, the rush of adrenaline or something else altogether.)~ */
    IF ~~ THEN REPLY @4215 /* @4215 = ~Amber, it's all right. I just fancied a bath, but it seems that you had the same idea.~ */ EXTERN M#AMBERN P2FLT2AmberI
    IF ~~ THEN REPLY @4216 /* @4216 = ~What was that tune you were humming? I don't think that I have ever heard it before.~ */ EXTERN M#AMBERN P2FLT2AmberJ
    IF ~~ THEN REPLY @4217 /* @4217 = ~Oh, I get the hint. I am sorry for having disturbed your bath.~ */ EXTERN M#AMBERN P2FLT2AmberK
    IF ~~ THEN REPLY @4226 /* @4226 = ~Amber - it is cold here and  you are shivering. Would you mind if I- ~ */ EXTERN M#AMBERN P2FLT2AmberL
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberC
    SAY @4219 /* @4219 = ~(Within a heartbeat of you stepping out of the woods, Amber realises that she has been ambushed. As if acting upon pure instinct, she dashes for the sword propped against the rock on which her clothes lie.)~ */
    IF ~~ THEN EXTERN M#AMBERN P2FLT2AmberG
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberN
    SAY @4220 /* @4220 = ~(Within two heartbeats of joining the song, Amber's voice ends abruptly and you hear rapid splashes as she quickly wades to the shore. The sound of a sword being pulled out of its sheath tells you that she is quite prepared to defend herself.)~ */
    IF ~~ THEN REPLY @4221 /* @4221 = ~Amber, it is all right. I just fancied a bath, but it seems that you had the same idea. (Make your way to the pond and  step out of the bushes.)~ */ GOTO M#P2FLT2AmberO
    IF ~~ THEN REPLY @4222 /* @4222 = ~(Sneak away, back to the camp.)~ */ DO ~SetGlobal("M#BathTalk","GLOBAL",2)
    							   ActionOverride("m#amber",SetDialog("m#amberj"))
   						           RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN M#P2FLT2AmberO
    SAY @4223 /* @4223 = ~(When you step out of the bush and raise your eyes to greet Amber, you are surprised to find her standing there stark naked, facing you with her blade drawn and pointed directly at your throat.)~ */
    =
    @4224 /* @4224 = ~(You are distracted by the sight of her lithe yet unmistakably feminine body glistening in the moonlight, her muscles taut and primed for attack. You notice a slight shiver going through her body, but you cannot tell whether it is due to the cool air, the rush of adrenaline or something else altogether.)~ */
     IF ~~ THEN REPLY @4225 /* @4225 = ~Whoa! You can put that blade away, it's just me. And besides, I don't think you'd need it anyway - most attackers would probably drop their weapons out of sheer surprise.~ */ EXTERN M#AMBERN P2FLT2AmberM
     IF ~~ THEN REPLY @4216 /* @4216 = ~What was that tune you were humming? I don't think that I have ever heard it before.~ */ EXTERN M#AMBERN P2FLT2AmberJ
     IF ~~ THEN REPLY @4217 /* @4217 = ~Oh, I get the hint. I am sorry for having disturbed your bath.~ */ EXTERN M#AMBERN P2FLT2AmberK
     IF ~~ THEN REPLY @4226 /* @4226 = ~Amber - it is cold here and  you are shivering. Would you mind if I- ~ */ EXTERN M#AMBERN P2FLT2AmberL
  END
END

// "Demon in Athkatla" quest

EXTEND_TOP ~HABREGA~ 0  
  6 IF ~Global("M#AmberRescue","GLOBAL",2)~ THEN REPLY @4238 /* @4238 = ~I need Form 1567 with your seal. I was told I could get one from you.~ */ GOTO M#0
END
EXTEND_TOP ~HABREGA~ 0  
  7 IF ~Global("M#AmberRescue","GLOBAL",4)
        PartyHasItem("M#FORM4")
        Global("M#Form5","GLOBAL",0)
        Global("M#Form6","GLOBAL",0)
        Global("M#Form7","GLOBAL",0)~ THEN REPLY @4239 /* @4239 = ~Here is the form you requested, with appendix B135. All filled in and signed, as you may well see.~ */ DO ~TakePartyItem("M#FORM4")~ GOTO M#1
END
EXTEND_TOP ~HABREGA~ 0  
  8 IF ~Global("M#AmberRescue","GLOBAL",4)
        PartyHasItem("M#FORM6")~ THEN REPLY @4240 /* @4240 = ~Do I now have everything I need for you to seal this form for me?~ */ DO ~TakePartyItem("M#FORM6")~ GOTO M#2
END

APPEND ~HABREGA~
IF ~~ THEN BEGIN M#0
  SAY @4241 /* @4241 = ~Well, you would need the form filled out and signed first, my friend. The Civil Servants should be able to help you with that.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",3)~
  EXIT
END

IF ~~ THEN BEGIN M#1
  SAY @4242 /* @4242 = ~Ah, but you still need a stamp from a Civil Servant to verify that this event has been duly recorded in our files. The Civil Servant probably forgot that, but you have to be understanding. They're working under a great deal of stress.~ */
  IF ~~ THEN DO ~SetGlobal("M#Form5","GLOBAL",1)
                 GiveItemCreate("M#FORM5",LastTalkedToBy(Myself),1,0,0)~
  EXIT
END

IF ~~ THEN BEGIN M#2
  SAY @4243 /* @4243 = ~Why, yes. Here, let me seal it for you. All right, now everything should be in order. Glad to be of assistance.~ */
  IF ~~ THEN DO ~SetGlobal("M#Form7","GLOBAL",1)
                 GiveItemCreate("M#FORM7",LastTalkedToBy(Myself),1,0,0)
                 SetGlobal("M#AmberRescue","GLOBAL",5)
                 AddexperienceParty(2000)~
             UNSOLVED_JOURNAL @5             
  EXIT
END
END

APPEND ~CIVIL01~
IF ~Global("M#AmberRescue","GLOBAL",3)~ THEN BEGIN M#0
  SAY @4244 /* @4244 = ~Do you not see that I am busy? State your business quickly and be gone with it.~ */
  IF ~~ THEN REPLY @4245 /* @4245 = ~I would like to have Form-~ */ GOTO M#1
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN m#exit
  SAY @4247 /* @4247 = ~Move on then! You are blocking the line.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#1
  SAY @4248 /* @4248 = ~You can get forms from the clerk, go see him. Next!~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",4)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    !PartyHasItem("M#FORM1")
    !PartyHasItem("M#FORM3")
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#2
  SAY @4249 /* @4249 = ~Do you not see that I am busy? Go see the clerk.~ */
  IF ~~ THEN EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form1","GLOBAL",1)
    PartyHasItem("M#FORM1")~ THEN BEGIN M#3
  SAY @4250 /* @4250 = ~If you came to inquire about that land ownership conflict, I suggest you go see the herald. I don't-~ */
  IF ~~ THEN REPLY @4251 /* @4251 = ~Actually, I just need this form filled out and signed.~ */ DO ~TakePartyItem("M#FORM1")~ GOTO M#4
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN M#4
  SAY @4252 /* @4252 = ~Krhmm... Let me see... Yes, everything seems to be in order...  What do you need this form for?~ */
  IF ~~ THEN REPLY @4253 /* @4253 = ~Eh, why do you want to know?~ */ GOTO M#5
  IF ~~ THEN REPLY @4254 /* @4254 = ~Oh, I just want to have the demon in the prison released under my custody.~ */ GOTO M#6
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ DO ~GiveItemCreate("M#FORM1",LastTalkedToBy(Myself),1,0,0)~ GOTO m#exit
END

IF ~~ THEN BEGIN M#5
  SAY @4255 /* @4255 = ~I cannot fill out this form unless you tell what it is for. Now, if you are here just to waste my time, please move aside so that I can get to serving customers with real business.~ */
  IF ~~ THEN REPLY @4256 /* @4256 = ~Well, I just wanted to take a look at the demon in the prison... If it's not too much trouble, you could just as well release it under my custody as well. I'm skilled in handling demons, you see.~ */ GOTO M#6
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ DO ~GiveItemCreate("M#FORM1",LastTalkedToBy(Myself),1,0,0)~ GOTO m#exit
END

IF ~~ THEN BEGIN M#6
  SAY @4257 /* @4257 = ~I see... Well, you should have told the clerk that we're talking about a demon, because for one of those, you also need an Appendix B135 for dangerous creatures. Unless you get me that, I cannot help you.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#Form2","GLOBAL",1) GiveItemCreate("M#FORM2",LastTalkedToBy(Myself),1,0,0)~
  EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    PartyHasItem("M#FORM3")
    Global("M#Form4","GLOBAL",0)~ THEN BEGIN M#7
  SAY @4258 /* @4258 = ~You needed something?~ */ 
  IF ~~ THEN REPLY @4259 /* @4259 = ~I now have both Form 1567 and Appendix B135. Could you PLEASE fill them out and sign them?~ */ DO ~TakePartyItem("M#FORM3")~ GOTO M#8 
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit   
END

IF ~~ THEN BEGIN M#8
  SAY @4260 /* @4260 = ~Got up on the wrong side of the bed today, eh? You still should not vent your frustration on me, <SIRMAAM>. 'Tis a very taxing and ungrateful job being a civil servant, you know.~ */
  IF ~~ THEN REPLY @4261 /* @4261 = ~The *forms*, filled out and signed!~ */ GOTO M#10
  IF ~~ THEN REPLY @4262 /* @4262 = ~Just forget it, I just can't take this any more!~ */ DO ~GiveItemCreate("M#FORM3",LastTalkedToBy(Myself),1,0,0)~ GOTO M#9
END


IF ~~ THEN BEGIN M#9
  SAY @4263 /* @4263 = ~Some people just have *no* idea how to behave... Next!~ */ 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#10
  SAY @4264 /* @4264 = ~Okay, okay! Sheesh, you really are high-strung, aren't you?~ */
  IF ~~ THEN DO ~SetGlobal("M#Form4","GLOBAL",1)
                 GiveItemCreate("M#FORM4",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form4","GLOBAL",1)
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#11
  SAY @4265 /* @4265 = ~What do you want? I have no time for idle chitchat.~ */
  IF ~~ THEN REPLY @4266 /* @4266 = ~Umm... Nothing, I guess.~ */ 
  EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    PartyHasItem("M#FORM5")
    Global("M#Form6","GLOBAL",0)~ THEN BEGIN M#12
  SAY @4267 /* @4267 = ~How can I help??~ */ 
  IF ~~ THEN REPLY @4268 /* @4268 = ~Stamp this.~ */ DO ~TakePartyItem("M#FORM5")~ GOTO M#13 
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit   
END

IF ~~ THEN BEGIN M#13
  SAY @4269 /* @4269 = ~(The Civil Servant stamps the form with a loud bang.) Next!~ */
  IF ~~ THEN DO ~SetGlobal("M#Form6","GLOBAL",1)
                 GiveItemCreate("M#FORM6",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form4","GLOBAL",1)
    Global("M#Form6","GLOBAL",1)
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#14
  SAY @4270 /* @4270 = ~If you have no need of my services, kindly just leave me to my tasks. There are other people besides you who need my time and expertise, you know.~ */
  IF ~~ THEN EXIT
END
END

APPEND ~CIVIL02~
IF ~Global("M#AmberRescue","GLOBAL",3)~ THEN BEGIN M#0
  SAY @4244 /* @4244 = ~Do you not see that I am busy? State your business quickly and be gone with it.~ */
  IF ~~ THEN REPLY @4245 /* @4245 = ~I would like to have Form-~ */ GOTO M#1
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN m#exit
  SAY @4247 /* @4247 = ~Move on then! You are blocking the line.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#1
  SAY @4248 /* @4248 = ~You can get forms from the clerk, go see him. Next!~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",4)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    !PartyHasItem("M#FORM1")
    !PartyHasItem("M#FORM3")
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#2
  SAY @4249 /* @4249 = ~Do you not see that I am busy? Go see the clerk.~ */
  IF ~~ THEN EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form1","GLOBAL",1)
    PartyHasItem("M#FORM1")~ THEN BEGIN M#3
  SAY @4250 /* @4250 = ~If you came to inquire about that land ownership conflict, I suggest you go see the herald. I don't-~ */
  IF ~~ THEN REPLY @4251 /* @4251 = ~Actually, I just need this form filled out and signed.~ */ DO ~TakePartyItem("M#FORM1")~ GOTO M#4
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN M#4
  SAY @4252 /* @4252 = ~Krhmm... Let me see... Yes, everything seems to be in order...  What do you need this form for?~ */
  IF ~~ THEN REPLY @4253 /* @4253 = ~Eh, why do you want to know?~ */ GOTO M#5
  IF ~~ THEN REPLY @4254 /* @4254 = ~Oh, I just want to have the demon in the prison released under my custody.~ */ GOTO M#6
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ DO ~GiveItemCreate("M#FORM1",LastTalkedToBy(Myself),1,0,0)~ GOTO m#exit
END

IF ~~ THEN BEGIN M#5
  SAY @4255 /* @4255 = ~I cannot fill out this form unless you tell what it is for. Now, if you are here just to waste my time, please move aside so that I can get to serving customers with real business.~ */
  IF ~~ THEN REPLY @4256 /* @4256 = ~Well, I just wanted to take a look at the demon in the prison... If it's not too much trouble, you could just as well release it under my custody as well. I'm skilled in handling demons, you see.~ */ GOTO M#6
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ DO ~GiveItemCreate("M#FORM1",LastTalkedToBy(Myself),1,0,0)~ GOTO m#exit
END

IF ~~ THEN BEGIN M#6
  SAY @4257 /* @4257 = ~I see... Well, you should have told the clerk that we're talking about a demon, because for one of those, you also need an Appendix B135 for dangerous creatures. Unless you get me that, I cannot help you.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#Form2","GLOBAL",1) GiveItemCreate("M#FORM2",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    PartyHasItem("M#FORM3")
    Global("M#Form4","GLOBAL",0)~ THEN BEGIN M#7
  SAY @4258 /* @4258 = ~You needed something?~ */ 
  IF ~~ THEN REPLY @4271 /* @4271 = ~I now have both Form 1567 and Appendix B135. Could you, PLEASE, fill them in and sign them?~ */ DO ~TakePartyItem("M#FORM3")~ GOTO M#8 
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit 
END

IF ~~ THEN BEGIN M#8
  SAY @4272 /* @4272 = ~Got up with a wrong foot today, eh? You still should not vent your frustration on me <SIRMAAM>. 'Tis a very taxing and ungrateful job being a civil servant, you know.~ */
  IF ~~ THEN REPLY @4273 /* @4273 = ~The *forms*, filled and signed!~ */ GOTO M#10
  IF ~~ THEN REPLY @4262 /* @4262 = ~Just forget it, I just can't take this any more!~ */ DO ~GiveItemCreate("M#FORM3",LastTalkedToBy(Myself),1,0,0)~ GOTO M#9
END


IF ~~ THEN BEGIN M#9
  SAY @4263 /* @4263 = ~Some people just have *no* idea how to behave... Next!~ */ 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#10
  SAY @4264 /* @4264 = ~Okay, okay! Sheesh, you really are high-strung, aren't you?~ */
  IF ~~ THEN DO ~SetGlobal("M#Form4","GLOBAL",1)
                 GiveItemCreate("M#FORM4",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form4","GLOBAL",1)
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#11
  SAY @4265 /* @4265 = ~What do you want? I have no time for idle chitchat.~ */
  IF ~~ THEN REPLY @4266 /* @4266 = ~Umm... Nothing, I guess.~ */ 
  EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    PartyHasItem("M#FORM5")
    Global("M#Form6","GLOBAL",0)~ THEN BEGIN M#12
  SAY @4267 /* @4267 = ~How can I help??~ */ 
  IF ~~ THEN REPLY @4268 /* @4268 = ~Stamp this.~ */ DO ~TakePartyItem("M#FORM5")~ GOTO M#13 
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit 
END

IF ~~ THEN BEGIN M#13
  SAY @4269 /* @4269 = ~(The Civil Servant stamps the form with a loud bang.) Next!~ */
  IF ~~ THEN DO ~SetGlobal("M#Form6","GLOBAL",1)
                 GiveItemCreate("M#FORM6",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form4","GLOBAL",1)
    Global("M#Form6","GLOBAL",1)
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#14
  SAY @4270 /* @4270 = ~If you have no need of my services, kindly just leave me to my tasks. There are other people besides you who need my time and expertise, you know.~ */
  IF ~~ THEN EXIT
END
END

APPEND ~CIVIL03~
IF ~Global("M#AmberRescue","GLOBAL",3)~ THEN BEGIN M#0
  SAY @4244 /* @4244 = ~Do you not see that I am busy? State your business quickly and be gone with it.~ */
  IF ~~ THEN REPLY @4245 /* @4245 = ~I would like to have Form-~ */ GOTO M#1
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN m#exit
  SAY @4247 /* @4247 = ~Move on then! You are blocking the line.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#1
  SAY @4248 /* @4248 = ~You can get forms from the clerk, go see him. Next!~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",4)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    !PartyHasItem("M#FORM1")
    !PartyHasItem("M#FORM3")
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#2
  SAY @4249 /* @4249 = ~Do you not see that I am busy? Go see the clerk.~ */
  IF ~~ THEN EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form1","GLOBAL",1)
    PartyHasItem("M#FORM1")~ THEN BEGIN M#3
  SAY @4250 /* @4250 = ~If you came to inquire about that land ownership conflict, I suggest you go see the herald. I don't-~ */
  IF ~~ THEN REPLY @4251 /* @4251 = ~Actually, I just need this form filled out and signed.~ */ DO ~TakePartyItem("M#FORM1")~ GOTO M#4
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN M#4
  SAY @4252 /* @4252 = ~Krhmm... Let me see... Yes, everything seems to be in order...  What do you need this form for?~ */
  IF ~~ THEN REPLY @4253 /* @4253 = ~Eh, why do you want to know?~ */ GOTO M#5
  IF ~~ THEN REPLY @4254 /* @4254 = ~Oh, I just want to have the demon in the prison released under my custody.~ */ GOTO M#6
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ DO ~GiveItemCreate("M#FORM1",LastTalkedToBy(Myself),1,0,0)~  GOTO m#exit
END

IF ~~ THEN BEGIN M#5
  SAY @4255 /* @4255 = ~I cannot fill out this form unless you tell what it is for. Now, if you are here just to waste my time, please move aside so that I can get to serving customers with real business.~ */
  IF ~~ THEN REPLY @4256 /* @4256 = ~Well, I just wanted to take a look at the demon in the prison... If it's not too much trouble, you could just as well release it under my custody as well. I'm skilled in handling demons, you see.~ */ GOTO M#6
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ DO ~GiveItemCreate("M#FORM1",LastTalkedToBy(Myself),1,0,0)~  GOTO m#exit
END

IF ~~ THEN BEGIN M#6
  SAY @4257 /* @4257 = ~I see... Well, you should have told the clerk that we're talking about a demon, because for one of those, you also need an Appendix B135 for dangerous creatures. Unless you get me that, I cannot help you.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#Form2","GLOBAL",1) GiveItemCreate("M#FORM2",LastTalkedToBy(Myself),1,0,0)~
  EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    PartyHasItem("M#FORM3")
    Global("M#Form4","GLOBAL",0)~ THEN BEGIN M#7
  SAY @4258 /* @4258 = ~You needed something?~ */ 
  IF ~~ THEN REPLY @4274 /* @4274 = ~(sigh) I now have both Form 1567 and Appendix B135. Could you, PLEASE, fill them in and sign them?~ */ DO ~TakePartyItem("M#FORM3")~ GOTO M#8 
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit  
END

IF ~~ THEN BEGIN M#8
  SAY @4272 /* @4272 = ~Got up with a wrong foot today, eh? You still should not vent your frustration on me <SIRMAAM>. 'Tis a very taxing and ungrateful job being a civil servant, you know.~ */
  IF ~~ THEN REPLY @4273 /* @4273 = ~The *forms*, filled and signed!~ */ GOTO M#10
  IF ~~ THEN REPLY @4262 /* @4262 = ~Just forget it, I just can't take this any more!~ */ DO ~GiveItemCreate("M#FORM3",LastTalkedToBy(Myself),1,0,0)~ GOTO M#9
END

IF ~~ THEN BEGIN M#9
  SAY @4263 /* @4263 = ~Some people just have *no* idea how to behave... Next!~ */ 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN M#10
  SAY @4264 /* @4264 = ~Okay, okay! Sheesh, you really are high-strung, aren't you?~ */
  IF ~~ THEN DO ~SetGlobal("M#Form4","GLOBAL",1)
                 GiveItemCreate("M#FORM4",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form4","GLOBAL",1)
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#11
  SAY @4265 /* @4265 = ~What do you want? I have no time for idle chitchat.~ */
  IF ~~ THEN REPLY @4266 /* @4266 = ~Umm... Nothing, I guess.~ */ 
  EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    PartyHasItem("M#FORM5")
    Global("M#Form6","GLOBAL",0)~ THEN BEGIN M#12
  SAY @4267 /* @4267 = ~How can I help??~ */ 
  IF ~~ THEN REPLY @4268 /* @4268 = ~Stamp this.~ */ DO ~TakePartyItem("M#FORM5")~ GOTO M#13 
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit  
END

IF ~~ THEN BEGIN M#13
  SAY @4269 /* @4269 = ~(The Civil Servant stamps the form with a loud bang.) Next!~ */
  IF ~~ THEN DO ~SetGlobal("M#Form6","GLOBAL",1)
                 GiveItemCreate("M#FORM6",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    Global("M#Form4","GLOBAL",1)
    Global("M#Form6","GLOBAL",1)
    !PartyHasItem("M#FORM5")~ THEN BEGIN M#14
  SAY @4270 /* @4270 = ~If you have no need of my services, kindly just leave me to my tasks. There are other people besides you who need my time and expertise, you know.~ */
  IF ~~ THEN EXIT
END
END

APPEND ~CLERK01~
IF ~Global("M#AmberRescue","GLOBAL",4)
    !PartyHasItem("M#FORM2")~ THEN BEGIN M#0
  SAY @4275 /* @4275 = ~Yes?~ */
  IF ~Global("M#Form1","GLOBAL",0)~ THEN REPLY @4276 /* @4276 = ~Could you perhaps give me Form 1567?~ */ GOTO M#1
  IF ~Global("M#Form1","GLOBAL",1)~ THEN REPLY @4277 /* @4277 = ~Could you perhaps give me another copy of Form 1567?~ */ GOTO M#2
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN M#1
  SAY @4278 /* @4278 = ~Yes, of course I could, but didn't your mother teach you to say 'please'? Apparently not. Here you go anyway. Remember to take it to the Civil Servant to be filled out and signed.~ */
  IF ~~ THEN DO ~SetGlobal("M#Form1","GLOBAL",1)
                 GiveItemCreate("M#FORM1",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~~ THEN BEGIN M#2
  SAY @4279 /* @4279 = ~I'm afraid I gave you the last one. I suggest that you find the one I gave you - it might be a while before our scribes can make more of those.~ */ 
  IF ~~ THEN EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",4)
    OR(2)
    PartyHasItem("M#FORM2")
    Global("M#Form3","GLOBAL",1)~ THEN BEGIN M#3
  SAY @4280 /* @4280 = ~How can I help you?~ */
  IF ~PartyHasItem("M#FORM2")~ THEN REPLY @4281 /* @4281 = ~It turned out that I need Appendix B135 for this form... um... please.~ */ DO ~TakePartyItem("M#FORM2")~ GOTO M#4
  IF ~Global("M#Form3","GLOBAL",1)~ THEN REPLY @4282 /* @4282 = ~Could I have another copy of Appendix B135, please.~ */ GOTO M#5
  IF ~~ THEN REPLY @4246 /* @4246 = ~Never mind...~ */ GOTO m#exit
END

IF ~~ THEN BEGIN M#4
  SAY @4283 /* @4283 = ~Hmmm... You could have told me right away that you needed that one. That would have saved a lot of trouble for both of us, young <MANWOMAN>.~ */
  =
  @4284 /* @4284 = ~All right, here it is. That is the last copy - don't lose it. You wont be getting a new one before our scribes make some more.~ */
  IF ~~ THEN DO ~SetGlobal("M#Form3","GLOBAL",1)
                 GiveItemCreate("M#FORM3",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF ~~ THEN BEGIN M#5
  SAY @4285 /* @4285 = ~I'm afraid that is impossible. As I already told you, I gave the last copy to you. I suggest you go and find it - we are quite low on most of the forms and appendices.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN m#exit
  SAY @4286 /* @4286 = ~Hrmph...~ */
  IF ~~ THEN EXIT
END
END

ADD_STATE_TRIGGER ~CIVIL01~ 
  0 ~!Global("M#AmberRescue","GLOBAL",3) !Global("M#AmberRescue","GLOBAL",4)~
  1 2 3 4 5 6 7 8
 
ADD_STATE_TRIGGER ~CIVIL02~
  0 ~!Global("M#AmberRescue","GLOBAL",3) !Global("M#AmberRescue","GLOBAL",4)~
  1 2 3 4 5 6 7 8
  
ADD_STATE_TRIGGER ~CIVIL03~
  0 ~!Global("M#AmberRescue","GLOBAL",3) !Global("M#AmberRescue","GLOBAL",4)~
  1 2 3 4
  
ADD_STATE_TRIGGER ~CLERK01~
  0 ~!Global("M#AmberRescue","GLOBAL",4)~
  1 2 3 4 5 6 7

// Black Market thief

EXTEND_TOP ~BMTHIEF~ 0
  IF ~Global("M#JillBracelet","GLOBAL",6)
      Global("M#JBracePromise","GLOBAL",0)
      !Class(LastTalkedToBy(),Thief)
      !IsGabber("M#Amber")~ THEN REPLY @4287 /* @4287 = ~I'm looking for a certain bracelet that was allegedly sold to you. Do you still have it?~ */ 
                                 DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#0
  IF ~Global("M#JillBracelet","GLOBAL",6)
      Global("M#JBracePromise","GLOBAL",0)
      Class(LastTalkedToBy(),Thief)
      !IsGabber("M#Amber")~ THEN REPLY @4288 /* @4288 = ~I heard you've got something I might be interested in.~ */
                                 DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#15
  IF ~Global("M#JillBracelet","GLOBAL",6)
      Global("M#JBracePromise","GLOBAL",0)
      IsGabber("M#Amber")~ THEN REPLY @4288 /* @4288 = ~I heard you've got something I might be interested in.~ */ 
                                DO ~SetGlobal("M#AmberBMThief","AR0305",1)
                                    ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#15
END

EXTEND_TOP ~BMTHIEF~ 4 
  IF ~Global("M#JillBracelet","GLOBAL",6)
      Global("M#JBracePromise","GLOBAL",0)
      !Class(LastTalkedToBy(),Thief)~ THEN REPLY @4287 /* @4287 = ~I'm looking for a certain bracelet that was allegedly sold to you. Do you still have it?~ */
                                           DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#0
  IF ~Global("M#JillBracelet","GLOBAL",6)
      Global("M#JBracePromise","GLOBAL",0)
      Class(LastTalkedToBy(),Thief)
      !IsGabber("M#Amber")~ THEN REPLY @4288 /* @4288 = ~I heard you've got something I might be interested in.~ */
                                 DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#15  
  IF ~Global("M#JillBracelet","GLOBAL",6)
      Global("M#JBracePromise","GLOBAL",0)
      IsGabber("M#Amber")~ THEN REPLY @4288 /* @4288 = ~I heard you've got something I might be interested in.~ */ 
                                DO ~SetGlobal("M#AmberBMThief","AR0305",1)
                                    ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#15  
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",5)
      PartyGoldGT(499)~ THEN REPLY @4289 /* @4289 = ~I have the money now. Do you still have the bracelet?~ */ 
                             DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#26
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",5)
      PartyGoldLT(500)~ THEN REPLY @4290 /* @4290 = ~I still don't have enough money. Are you sure you couldn't go any lower on the price?~ */ GOTO M#25
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",7)
      PartyGoldGT(699)~ THEN REPLY @4289 /* @4289 = ~I have the money now. Do you still have the bracelet?~ */ 
                             DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#26
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",7)
      PartyGoldLT(700)~ THEN REPLY @4290 /* @4290 = ~I still don't have enough money. Are you sure you couldn't go any lower on the price?~ */ GOTO M#25
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",10)
      PartyGoldGT(999)~ THEN REPLY @4289 /* @4289 = ~I have the money now. Do you still have the bracelet?~ */ 
                             DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#26
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",10)
      PartyGoldLT(1000)~ THEN REPLY @4290 /* @4290 = ~I still don't have enough money. Are you sure you couldn't go any lower on the price?~ */ GOTO M#25
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",15)
      PartyGoldGT(1499)~ THEN REPLY @4289 /* @4289 = ~I have the money now. Do you still have the bracelet?~ */ 
                              DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#26
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",15)
      PartyGoldLT(1500)~ THEN REPLY @4290 /* @4290 = ~I still don't have enough money. Are you sure you couldn't go any lower on the price?~ */ GOTO M#25
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",20)
      PartyGoldGT(1999)~ THEN REPLY @4289 /* @4289 = ~I have the money now. Do you still have the bracelet?~ */ 
                              DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#26
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",20)
      PartyGoldLT(2000)~ THEN REPLY @4290 /* @4290 = ~I still don't have enough money. Are you sure you couldn't go any lower on the price?~ */ GOTO M#25
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",50)
      PartyGoldGT(4999)~ THEN REPLY @4289 /* @4289 = ~I have the money now. Do you still have the bracelet?~ */ 
                              DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~GOTO M#26
  IF ~Global("M#JillBracelet","GLOBAL",7)
      Global("M#JBracePromise","GLOBAL",50)
      PartyGoldLT(5000)~ THEN REPLY @4290 /* @4290 = ~I still don't have enough money. Are you sure you couldn't go any lower on the price?~ */ GOTO M#25  
  IF ~Global("M#BMTSpec","Locals",1)~ THEN REPLY @4291 /* @4291 = ~I would like to take a look at your special selection again.~ */ GOTO M#28
END

APPEND ~BMTHIEF~

IF ~~ THEN BEGIN M#0
  SAY @4292 /* @4292 = ~A bracelet you say, let me think...~ */
  IF ~~ THEN EXTERN M#AMBERN 22
END

IF ~~ THEN BEGIN M#1
  SAY @4293 /* @4293 = ~Hmmm... I just might have seen it. Bracelet with a large red stone, very valuable I would think. Maybe even magical?~ */
  IF ~~ THEN EXTERN M#AMBERN 23
END

IF ~~ THEN BEGIN M#2
  SAY @4294 /* @4294 = ~Ah... I see. But if I am not entirely mistaken, your little memento IS actually rather valuable, and even more so to you, it would seem.~ */
         =
     @4295 /* @4295 = ~So, if I were to have this item you seek, how much exactly would it be worth to you in gold?~ */
  IF ~CheckStatLT(LastTalkedToBy(),11,INT)~ THEN REPLY @4296 /* @4296 = ~How about 100 gold pieces?~ */ GOTO M#3
  IF ~~ THEN REPLY @4297 /* @4297 = ~How about 500 gold pieces?~ */ GOTO M#3
  IF ~~ THEN REPLY @4298 /* @4298 = ~How about 1000 gold pieces?~ */ GOTO M#4
  IF ~~ THEN REPLY @4299 /* @4299 = ~How about 2000 gold pieces?~ */ GOTO M#5
  IF ~CheckStatLT(LastTalkedToBy(),11,INT)~ THEN REPLY @4300 /* @4300 = ~How about 5000 gold pieces?~ */ GOTO M#6
END

IF ~~ THEN BEGIN M#3
  SAY @4301 /* @4301 = ~Bah! Do you take me for a complete idiot or are you just trying to insult me? The gem in this bracelet alone is worth much more than that. If you really want this bracelet, you'll pay no less than 1500 gold pieces.~ */
  IF ~PartyGoldGT(1499)~ THEN REPLY @4302 /* @4302 = ~OK, I guess I have no choice but to pay. Here you go.~ */ 
                              DO ~TakePartyGold(1500)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~PartyGoldGT(1499)~ THEN REPLY @4303 /* @4303 = ~I'm sorry, I don't think I can afford to pay that much. Maybe you could reconsider your offer?~ */ GOTO M#7
  IF ~PartyGoldLT(1500)~ THEN REPLY @4304 /* @4304 = ~I'm sorry, I don't have that much money. Is there any way you could reconsider your offer?~ */ GOTO M#7
END

IF ~~ THEN BEGIN M#4
  SAY @4305 /* @4305 = ~Well, I guess that's an offer I could consider...~ */
        =
      @4306 /* @4306 = ~OK, 1000 gold here and now and the bracelet is yours. Deal?~ */
  IF ~PartyGoldGT(999)~ THEN REPLY @4307 /* @4307 = ~OK, it's a deal. Here you go.~ */ 
                              DO ~TakePartyGold(1000)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~PartyGoldGT(999)~ THEN REPLY @4303 /* @4303 = ~I'm sorry, I don't think I can afford to pay that much. Maybe you could reconsider your offer?~ */ GOTO M#9
  IF ~PartyGoldLT(1000)~ THEN REPLY @4304 /* @4304 = ~I'm sorry, I don't have that much money. Is there any way you could reconsider your offer?~ */ GOTO M#9
END

IF ~~ THEN BEGIN M#5
  SAY @4305 /* @4305 = ~Well, I guess that's an offer I could consider...~ */
        =
      @4308 /* @4308 = ~OK, 2000 gold here and now and the bracelet is yours. Deal?~ */
  IF ~PartyGoldGT(1999)~ THEN REPLY @4307 /* @4307 = ~OK, it's a deal. Here you go.~ */ 
                              DO ~TakePartyGold(2000)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~PartyGoldGT(1999)~ THEN REPLY @4303 /* @4303 = ~I'm sorry, I don't think I can afford to pay that much. Maybe you could reconsider your offer?~ */ GOTO M#11
  IF ~PartyGoldLT(2000)~ THEN REPLY @4304 /* @4304 = ~I'm sorry, I don't have that much money. Is there any way you could reconsider your offer?~ */ GOTO M#11
END

IF ~~ THEN BEGIN M#6
  SAY @4305 /* @4305 = ~Well, I guess that's an offer I could consider...~ */
        =
      @4309 /* @4309 = ~OK, 5000 gold here and now and the bracelet is yours. Deal?~ */
  IF ~PartyGoldGT(4999)~ THEN REPLY @4307 /* @4307 = ~OK, it's a deal. Here you go.~ */ 
                              DO ~TakePartyGold(5000)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~PartyGoldGT(4999)~ THEN REPLY @4303 /* @4303 = ~I'm sorry, I don't think I can afford to pay that much. Maybe you could reconsider your offer?~ */ GOTO M#13
  IF ~PartyGoldLT(5000)~ THEN REPLY @4304 /* @4304 = ~I'm sorry, I don't have that much money. Is there any way you could reconsider your offer?~ */ GOTO M#13
END

IF ~~ THEN BEGIN M#7
  SAY @4310 /* @4310 = ~No, I'm afraid I won't part with it for any less. I will have no difficulties in finding a buyer at this price.~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN EXTERN M#AMBERN 24
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldLT(1500)~ THEN REPLY @4311 /* @4311 = ~We don't have the money right now, but we will will come back as soon as we can get the money together.~ */ GOTO M#8
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldGT(1499)~ THEN REPLY @4312 /* @4312 = ~OK. I'll pay what you asked. Here you go.~ */
                              DO ~TakePartyGold(1500)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
END

IF ~~ THEN BEGIN M#8
  SAY @4313 /* @4313 = ~Very well, but you'd better hurry. I can't promise that I'll have the bracelet for very long. These kinds of things have quite the demand, you know.~ */
  IF ~~ THEN DO ~SetGlobal("M#JBracePromise","GLOBAL",15)
                 SetGlobal("M#JillBracelet","GLOBAL",7)
                 SetGlobal("M#AmberBMThief","AR0305",0)
                 SetGlobal("M#AmberQuestRemind","Locals",0)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ 
             UNSOLVED_JOURNAL @17
  EXIT
END

IF ~~ THEN BEGIN M#9
  SAY @4310 /* @4310 = ~No, I'm afraid I won't part with it for any less. I will have no difficulties in finding a buyer at this price.~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN EXTERN M#AMBERN 27
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldLT(1000)~ THEN REPLY @4311 /* @4311 = ~We don't have the money right now, but we will will come back as soon as we can get the money together.~ */ GOTO M#10
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldGT(999)~ THEN REPLY @4312 /* @4312 = ~OK. I'll pay what you asked. Here you go.~ */
                              DO ~TakePartyGold(1000)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
END

IF ~~ THEN BEGIN M#10
  SAY @4313 /* @4313 = ~Very well, but you'd better hurry. I can't promise that I'll have the bracelet for very long. These kinds of things have quite the demand, you know.~ */
  IF ~~ THEN DO ~SetGlobal("M#JBracePromise","GLOBAL",10)
                 SetGlobal("M#JillBracelet","GLOBAL",7)
                 SetGlobal("M#AmberBMThief","AR0305",0)
                 SetGlobal("M#AmberQuestRemind","Locals",0)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~
             UNSOLVED_JOURNAL @16
  EXIT
END

IF ~~ THEN BEGIN M#11
  SAY @4310 /* @4310 = ~No, I'm afraid I won't part with it for any less. I will have no difficulties in finding a buyer at this price.~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN EXTERN M#AMBERN 29
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldLT(2000)~ THEN REPLY @4311 /* @4311 = ~We don't have the money right now, but we will will come back as soon as we can get the money together.~ */ GOTO M#12
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldGT(1999)~ THEN REPLY @4312 /* @4312 = ~OK. I'll pay what you asked. Here you go.~ */
                              DO ~TakePartyGold(2000)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
END

IF ~~ THEN BEGIN M#12
  SAY @4313 /* @4313 = ~Very well, but you'd better hurry. I can't promise that I'll have the bracelet for very long. These kinds of things have quite the demand, you know.~ */
  IF ~~ THEN DO ~SetGlobal("M#JBracePromise","GLOBAL",20)
                 SetGlobal("M#JillBracelet","GLOBAL",7)
                 SetGlobal("M#AmberBMThief","AR0305",0)
                 SetGlobal("M#AmberQuestRemind","Locals",0)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~
             UNSOLVED_JOURNAL @18
  EXIT
END

IF ~~ THEN BEGIN M#13
  SAY @4310 /* @4310 = ~No, I'm afraid I won't part with it for any less. I will have no difficulties in finding a buyer at this price.~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN EXTERN M#AMBERN 31
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldLT(5000)~ THEN REPLY @4311 /* @4311 = ~We don't have the money right now, but we will will come back as soon as we can get the money together.~ */ GOTO M#14
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldGT(4999)~ THEN REPLY @4312 /* @4312 = ~OK. I'll pay what you asked. Here you go.~ */
                              DO ~TakePartyGold(5000)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46  
END

IF ~~ THEN BEGIN M#14
  SAY @4313 /* @4313 = ~Very well, but you'd better hurry. I can't promise that I'll have the bracelet for very long. These kinds of things have quite the demand, you know.~ */
  IF ~~ THEN DO ~SetGlobal("M#JBracePromise","GLOBAL",50)
                 SetGlobal("M#JillBracelet","GLOBAL",7)
                 SetGlobal("M#AmberBMThief","AR0305",0)
                 SetGlobal("M#AmberQuestRemind","Locals",0)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ 
             UNSOLVED_JOURNAL @19
  EXIT
END

IF ~~ THEN BEGIN M#15
  SAY @4314 /* @4314 = ~Might be, might be. What exactly would you be interested in?~ */
  IF ~~ THEN REPLY @4315 /* @4315 = ~Hmmm... You wouldn't happen to have any nice bracelets, would you? Something with a big red stone?~ */ GOTO M#17
  IF ~~ THEN REPLY @4316 /* @4316 = ~I heard someone sold you a bracelet with a big red stone. Is this true?~ */ GOTO M#16
END

IF ~~ THEN BEGIN M#16
  SAY @4317 /* @4317 = ~Hmmm... Might be, might be. Bracelet with a large red stone, very valuable I would think. Maybe even magical?~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN EXTERN M#AMBERN 23
  IF ~Global("M#AmberBMThief","AR0305",1)~ THEN REPLY @4318 /* @4318 = ~Not really; I've just carried it for a long time and grown rather fond of it. Sentimental value, you know.~ */ GOTO M#2
END

IF ~~ THEN BEGIN M#17
  SAY @4319 /* @4319 = ~As it so happens, I might have something to suit your tastes. Does this look like something you had in mind?~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN EXTERN M#AMBERN 33
  IF ~Global("M#AmberBMThief","AR0305",1)~ THEN REPLY @4320 /* @4320 = ~How much?~ */ GOTO M#19
END

IF ~~ THEN BEGIN M#18
  SAY @4321 /* @4321 = ~Mmm... yes, I thought this would satisfy your needs.~ */
  IF ~~ THEN REPLY @4320 /* @4320 = ~How much?~ */ GOTO M#19 
END

IF ~~ THEN BEGIN M#19
  SAY @4322 /* @4322 = ~A very special price just for you, my friend - 700 gold pieces.~ */
  IF ~PartyGoldGT(699)~ THEN REPLY @4323 /* @4323 = ~OK, it's a deal.~ */ 
                              DO ~TakePartyGold(700)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)
                                  ActionOverride("M#Amber",SetDialog("m#ambern")~ GOTO M#BMThiefA 
  IF ~PartyGoldGT(699)
      CheckStatLT(LastTalkedToBy(),15,CHR)~ THEN REPLY @4324 /* @4324 = ~Come on, surely you can do better than that? It's not even in mint condition; look at all those scratches.~ */ GOTO M#23
  IF ~PartyGoldGT(699)
      CheckStatGT(LastTalkedToBy(),14,CHR)~ THEN REPLY @4324 /* @4324 = ~Come on, surely you can do better than that? It's not even in mint condition; look at all those scratches.~ */ GOTO M#20
  IF ~PartyGoldLT(700)
      CheckStatLT(LastTalkedToBy(),15,CHR)~ THEN REPLY @4325 /* @4325 = ~No can do, my friend. Can't you go any lower?~ */ GOTO M#23
  IF ~PartyGoldLT(700)
      CheckStatGT(LastTalkedToBy(),14,CHR)~ THEN REPLY @4325 /* @4325 = ~No can do, my friend. Can't you go any lower?~ */ GOTO M#20
END

IF ~~ THEN BEGIN M#BMThiefA
  SAY @4326 /* @4326 = ~Ñice doing business with you, friend.~ */ 
  IF ~~ THEN EXTERN M#AMBERN 46
END

IF ~~ THEN BEGIN M#20
  SAY @4327 /* @4327 = ~Ah, you drive a hard bargain my friend. I'll give you my very best price - 500 gold. That's as low as I can go.~ */
  IF ~PartyGoldGT(499)~ THEN REPLY @4328 /* @4328 = ~OK, that's more like it. It's a deal.~ */ 
                              DO ~TakePartyGold(500)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)
                                  ActionOverride("M#Amber",SetDialog("m#ambern")~ GOTO M#BMThiefA
   IF ~PartyGoldLT(500)~ THEN REPLY @4304 /* @4304 = ~I'm sorry, I don't have that much money. Is there any way you could reconsider your offer?~ */ GOTO M#21
END

IF ~~ THEN BEGIN M#21
  SAY @4329 /* @4329 = ~No, I'm afraid I won't part with it for any less. You are already getting it at a very good price.~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#ambern")~ GOTO M#BMThiefB 
  IF ~Global("M#AmberBMThief","AR0305",1)~ THEN GOTO M#BMThiefB
END

IF ~~ THEN BEGIN M#BMThiefB
  SAY @4330 /* @4330 = ~I could get much more from other buyers; I just happen to like your face. Take it or leave it.~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN EXTERN M#AMBERN 34
  IF ~Global("M#AmberBMThief","AR0305",1)~ THEN REPLY @4311 /* @4311 = ~We don't have the money right now, but we will will come back as soon as we can get the money together.~ */ GOTO M#22
END

IF ~~ THEN BEGIN M#22
  SAY @4313 /* @4313 = ~Very well, but you'd better hurry. I can't promise that I'll have the bracelet for very long. These kinds of things have quite the demand, you know.~ */
  IF ~~ THEN DO ~SetGlobal("M#JBracePromise","GLOBAL",5)
                 SetGlobal("M#JillBracelet","GLOBAL",7)
                 SetGlobal("M#AmberBMThief","AR0305",0)
                 SetGlobal("M#AmberQuestRemind","Locals",0)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ 
             UNSOLVED_JOURNAL @14
  EXIT
END

IF ~~ THEN BEGIN M#23
  SAY @4331 /* @4331 = ~No, I'm afraid I won't part with it for any less. You are already getting it at a very good price. I could get much more from other buyers; I just happen to like your face. Take it or leave it.~ */
  IF ~!Global("M#AmberBMThief","AR0305",1)~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#ambern")~ GOTO M#BMThiefC
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldLT(700)~ THEN REPLY @4311 /* @4311 = ~We don't have the money right now, but we will will come back as soon as we can get the money together.~ */ GOTO M#24
  IF ~Global("M#AmberBMThief","AR0305",1)
      PartyGoldGT(699)~ THEN REPLY @4312 /* @4312 = ~OK. I'll pay what you asked. Here you go.~ */
                              DO ~TakePartyGold(700)
                                  SetGlobal("M#JillBracelet","GLOBAL",8)
                                  SetGlobal("M#AmberQuestRemind","Locals",0)
                                  ActionOverride("M#Amber",SetDialog("m#ambern")~ GOTO M#BMThiefA 
END

IF ~~ THEN BEGIN M#BMThiefC
  SAY @4332 /* @4332 = ~Well, what do you say?~ */
  IF ~~ THEN EXTERN M#AMBERN 36
END

IF ~~ THEN BEGIN M#24
  SAY @4313 /* @4313 = ~Very well, but you'd better hurry. I can't promise that I'll have the bracelet for very long. These kinds of things have quite the demand, you know.~ */
  IF ~~ THEN DO ~SetGlobal("M#JBracePromise","GLOBAL",7)
                 SetGlobal("M#JillBracelet","GLOBAL",7)
                 SetGlobal("M#AmberBMThief","AR0305",0)
                 SetGlobal("M#AmberQuestRemind","Locals",0)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~
             UNSOLVED_JOURNAL @15 
  EXIT
END

IF ~~ THEN BEGIN M#25
  SAY @4333 /* @4333 = ~No; I told you that's as low as I'll go. If you want the bracelet, you'd better just find the money somewhere.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberBMThief","AR0305",0)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
END

IF ~~ THEN BEGIN M#26
  SAY @4334 /* @4334 = ~Well, it seems this is your lucky day. Yes, I still have the bracelet. Give me the money and it's yours.~ */
  IF ~Global("M#JBracePromise","GLOBAL",5)~ THEN REPLY @4335 /* @4335 = ~OK, here you go.~ */ 
                                                DO ~TakePartyGold(500)
                                                    SetGlobal("M#JillBracelet","GLOBAL",8)
                                                    SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~Global("M#JBracePromise","GLOBAL",7)~ THEN REPLY @4335 /* @4335 = ~OK, here you go.~ */ 
                                                DO ~TakePartyGold(700)
                                                    SetGlobal("M#JillBracelet","GLOBAL",8)
                                                    SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~Global("M#JBracePromise","GLOBAL",10)~ THEN REPLY @4335 /* @4335 = ~OK, here you go.~ */ 
                                                DO ~TakePartyGold(1000)
                                                    SetGlobal("M#JillBracelet","GLOBAL",8)
                                                    SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~Global("M#JBracePromise","GLOBAL",15)~ THEN REPLY @4335 /* @4335 = ~OK, here you go.~ */ 
                                                DO ~TakePartyGold(1500)
                                                    SetGlobal("M#JillBracelet","GLOBAL",8)
                                                    SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~Global("M#JBracePromise","GLOBAL",20)~ THEN REPLY @4335 /* @4335 = ~OK, here you go.~ */ 
                                                DO ~TakePartyGold(2000)
                                                    SetGlobal("M#JillBracelet","GLOBAL",8)
                                                    SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
  IF ~Global("M#JBracePromise","GLOBAL",50)~ THEN REPLY @4335 /* @4335 = ~OK, here you go.~ */ 
                                                DO ~TakePartyGold(5000)
                                                    SetGlobal("M#JillBracelet","GLOBAL",8)
                                                    SetGlobal("M#AmberQuestRemind","Locals",0)~ EXTERN M#AMBERN 46
 END

IF ~~ THEN BEGIN M#27
  SAY @4336 /* @4336 = ~Nice doing business with you. Seeing that you have a taste for unusual items, might I interest you in some specialities that have ended up in my hands?~ */
  IF ~~ THEN REPLY @4337 /* @4337 = ~Yes, let me see what you have.~ */ 
             DO ~SetGlobal("M#BMTSpec","Locals",1)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO M#28
  IF ~~ THEN REPLY @4338 /* @4338 = ~No, thanks. I would like to see your regular selection instead.~ */ 
             DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO 2
  IF ~~ THEN REPLY @4339 /* @4339 = ~No, I don't think I'm interested.~ */ 
             DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO 3  
END

IF ~~ THEN BEGIN M#28
  SAY @4340 /* @4340 = ~Ah, I knew you had an appreciation for quality tools.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberBMThief","AR0305",0)
                 StartStore("m#bmthi2",LastTalkedToBy())~  
  EXIT
END
END

// Cromwell

ADD_TRANS_TRIGGER ~WSMITH01~ 13
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 0

EXTEND_BOTTOM ~WSMITH01~ 13
  IF ~!PartyHasItem("m#jbrace")
  !PartyHasItem("sw1h40")
  !PartyHasItem("scaleb")
  !PartyHasItem("scaler")
  !PartyHasItem("misc12")
  !PartyHasItem("scrlag")
  !PartyHasItem("hamm07")
  !PartyHasItem("sw1h54a")
  !PartyHasItem("sw1h54b")
  !PartyHasItem("sw1h54c")
  !PartyHasItem("bow19a")
  !PartyHasItem("bow19b")
  !PartyHasItem("halb09a")
  !PartyHasItem("halb09b")
  !PartyHasItem("misc8u")
  !PartyHasItem("sw2h15a")
  !PartyHasItem("misc5k")
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

APPEND ~WSMITH01~
  IF ~~ THEN BEGIN M#1
    SAY @4341 /* @4341 = ~Now this looks interesting - let me take a closer look at that...~ */
    IF ~PartyHasItem("sw1h40")
        !PartyHasItem("m#jbrace")~ THEN GOTO M#2
    IF ~!PartyHasItem("sw1h40")
        PartyHasItem("m#jbrace")~ THEN EXTERN M#AMBERN 61
    IF ~PartyHasItem("sw1h40")
        PartyHasItem("m#jbrace")~ THEN EXTERN M#AMBERN 61
  END
  
  IF ~~ THEN BEGIN M#2
    SAY @4342 /* @4342 = ~Hmmm... Seems that the Blade of Roses here has something missing. Se this cavity at the end of the pommel here? If I recalls me lore correctly, it ought to have a large cabochon ruby in it. Too bad that it's fallen off somewhere; seems that the weight's a bit off because of it. So if I were you, I'd be on the lookout for any largish rounded rubies that might fit here. It'd make one fine sword even finer.~ */
    IF ~~ THEN REPLY @4343 /* @4343 = ~I'll keep that in mind. Do I have anything else you could use?~ */
               DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO M#9
  END
  
  IF ~~ THEN BEGIN M#3
    SAY @4344 /* @4344 = ~Easy there now - I recognise that gem set on that bracelet... what an odd place for it. This bracelet itself is worth next to nothing - it's not even real silver. What's interesting is why this gem was ever put on it... I cannot fathom, but... ~ */
    IF ~!PartyHasItem("sw1h40")~ THEN EXTERN M#AMBERN 62
    IF ~PartyHasItem("sw1h40")~ THEN GOTO M#6
  END
  
  IF ~~ THEN BEGIN M#4
    SAY @4345 /* @4345 = ~Easy there lass, I meant no offense. But what I was about to say was that this ruby originally comes from a sword known as the Blade of Roses. It must have fallen off at some point in the sword's history. So, you might want to be on the lookout for a beautiful sword, about this long, that's decorated with rose-motif engravings. If you's happen to come across it, I would be more than glad to reunite it with this gem.~ */
    IF ~~ THEN EXTERN M#AMBERN 63
  END
  
  IF ~~ THEN BEGIN M#5
    SAY @4346 /* @4346 = ~Well, I can't force it off you, but it'd be a right shame to keep those two pieces apart.~ */
    IF ~~ THEN REPLY @4347 /* @4347 = ~I'll be sure to come and see you, Cromwell, if I happen to come across that blade. Do I have anything else that you could use?~ */ DO ~ActionOverride("M#Amber",SetDialog("m#amberj")~ GOTO M#9
    IF ~~ THEN REPLY @4348 /* @4348 = ~Well, you heard Amber here. I'm sure that sword would be useful, but if she does not want to give up her bracelet, there is nothing I can do. Do I have anything else that you could use?~ */ 
               DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO M#9
  END
  
  IF ~~ THEN BEGIN M#6
    SAY @4349 /* @4349 = ~By the Soul Forger! If this isn't the Blade of Roses itself, I shan't be called a smith no longer. Before I met you, I never even knew this sword was missing a piece and here they both are. So, shall we put it together for you already?~ */
    IF ~~ THEN EXTERN M#AMBERN 64
  END
  
  IF ~~ THEN BEGIN M#7
    SAY @4350 /* @4350 = ~Hrm. Right. I'll just see if you have something else then.~ */
    IF ~~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO M#9
  END
  
  IF ~~ THEN BEGIN M#8
    SAY @4351 /* @4351 = ~Good, good, I'm glad you made that decision.~ */
    IF ~~ THEN REPLY @4352 /* @4352 = ~What would you need to combine the gem with the sword?~ */ 
               DO ~SetGlobal("M#ForgeItem","GLOBAL",1)
                   ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO 54
    IF ~~ THEN REPLY @4353 /* @4353 = ~I don't think I want to combine them after all. Do I have anything else you could work with?~ */ 
               DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ GOTO M#9 
  END
  
  IF ~~ THEN BEGIN M#9
    SAY @4354 /* @4354 = ~Let's see then...~ */
    COPY_TRANS WSMITH01 13
  END

  IF ~GlobalGT("M#ForgeItem","GLOBAL",0)~ THEN BEGIN M#10
    SAY @4355 /* @4355 = ~Well, there ye go, me friend.  Use it well.  And if ye comes across anything else of interest, ye knows where to bring it, aye?~ */
    IF ~~ THEN DO ~SetGlobal("M#ForgeItem","GLOBAL",0)
                   ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
  END

  IF ~~ THEN BEGIN M#11
    SAY @4356 /* @4356 = ~Now this here be interesting...~ */
    IF ~PartyHasItem("m#bchide")~ THEN GOTO M#12
    IF ~PartyHasItem("m#wskin")~ THEN GOTO M#13
    IF ~PartyHasItem("m#wskin")
        PartyHasItem("m#bchide")~ THEN GOTO M#14
  END

  IF ~~ THEN BEGIN M#12
    SAY @4357 /* @4357 = ~Ain't really my speciality, but I know that ol' Rashryn would love ta set his eyes on this cat hide ya got 'ere.~ */
      =
    @4358 /* @4358 = ~Ya should drop by 'im at the Promenade - I reckon he could make sumthin' outta it for ya.~ */
      =
    @4359 /* @4359 = ~Hmm.  Looks like ye've nothing amongst yer goods that I could work with.  If ye come across anything interesting later, friend, ye knows where to come, aye? An' in the meantime, just go see ol' Rashryn, will ya.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#13
    SAY @4360 /* @4360 = ~Ain't quite what I like ta work with, but I know that ol' Rashryn could have sum ideas about this 'ere reptile skin.~ */
      =
    @4361 /* @4361 = ~Wyvern, is it? I reckon you could give 'im a call over at Waukeen's - I could bet ya me left hand that he could make sumthin' outta it for ya.~ */
      =
    @4359 /* @4359 = ~Hmm.  Looks like ye've nothing amongst yer goods that I could work with.  If ye come across anything interesting later, friend, ye knows where to come, aye? An' in the meantime, just go see ol' Rashryn, will ya.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#14
    SAY @4362 /* @4362 = ~Ain't quite what I like ta work with, but I know that ol' Rashryn could have sum ideas about these 'ere skins ya got.~ */
      =
    @4363 /* @4363 = ~Wyvern, is it? And some sorta big cat, by the looks o' this other one. I reckon you should give Rashryn a call over at Waukeen's - I could bet ya me left hand that he could make sumthin' outta 'em for ya.~ */
      =
    @4359 /* @4359 = ~Hmm.  Looks like ye've nothing amongst yer goods that I could work with.  If ye come across anything interesting later, friend, ye knows where to come, aye? An' in the meantime, just go see ol' Rashryn, will ya.~ */
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN M#15
    SAY @4364 /* @4364 = ~Hmmm... Lessee... ~ */
    IF ~~ THEN GOTO M#11
  END
END

ADD_STATE_TRIGGER ~WSMITH01~ 58
  ~Global("M#ForgeItem","GLOBAL",0)~
  
ADD_TRANS_TRIGGER ~WSMITH01~ 13
  ~!PartyHasItem("sw1h40")~
ADD_TRANS_TRIGGER ~WSMITH01~ 13
  ~!PartyHasItem("m#jbrace")~
ADD_TRANS_TRIGGER ~WSMITH01~ 19
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 6
ADD_TRANS_TRIGGER ~WSMITH01~ 23
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 5
ADD_TRANS_TRIGGER ~WSMITH01~ 33
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 4
ADD_TRANS_TRIGGER ~WSMITH01~ 38
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 3
ADD_TRANS_TRIGGER ~WSMITH01~ 43
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 2
ADD_TRANS_TRIGGER ~WSMITH01~ 48
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 1
ADD_TRANS_TRIGGER ~WSMITH01~ 51
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 1
ADD_TRANS_TRIGGER ~WSMITH01~ 54
  ~!PartyHasItem("m#bchide")
   !PartyHasItem("m#wskin")~ DO 5

EXTEND_TOP ~WSMITH01~ 13
#1 IF ~OR(2)
        PartyHasItem("sw1h40")
        PartyHasItem("m#jbrace")~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO M#1
END

EXTEND_TOP ~WSMITH01~ 19
#6 IF ~!PartyHasItem("scrlag")
  !PartyHasItem("hamm07")
  !PartyHasItem("sw1h54a")
  !PartyHasItem("sw1h54b")
  !PartyHasItem("sw1h54c")
  !PartyHasItem("bow19a")
  !PartyHasItem("bow19b")
  !PartyHasItem("halb09a")
  !PartyHasItem("halb09b")
  !PartyHasItem("misc8u")
  !PartyHasItem("sw2h15a")
  !PartyHasItem("misc5k")
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

EXTEND_TOP ~WSMITH01~ 23
#5 IF ~!PartyHasItem("sw1h54a")
  !PartyHasItem("sw1h54b")
  !PartyHasItem("sw1h54c")
  !PartyHasItem("bow19a")
  !PartyHasItem("bow19b")
  !PartyHasItem("halb09a")
  !PartyHasItem("halb09b")
  !PartyHasItem("misc8u")
  !PartyHasItem("sw2h15a")
  !PartyHasItem("misc5k")
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

EXTEND_TOP ~WSMITH01~ 33
#4 IF ~!PartyHasItem("bow19a")
  !PartyHasItem("bow19b")
  !PartyHasItem("halb09a")
  !PartyHasItem("halb09b")
  !PartyHasItem("misc8u")
  !PartyHasItem("sw2h15a")
  !PartyHasItem("misc5k")
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

EXTEND_TOP ~WSMITH01~ 38
#3 IF ~!PartyHasItem("halb09a")
  !PartyHasItem("halb09b")
  !PartyHasItem("misc8u")
  !PartyHasItem("sw2h15a")
  !PartyHasItem("misc5k")
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

EXTEND_TOP ~WSMITH01~ 43
#2 IF ~!PartyHasItem("misc8u")
  !PartyHasItem("sw2h15a")
  !PartyHasItem("misc5k")
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

EXTEND_TOP ~WSMITH01~ 48
#1 IF ~!PartyHasItem("misc5k")
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

EXTEND_BOTTOM ~WSMITH01~ 50
  IF ~OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN GOTO M#11
END

EXTEND_TOP ~WSMITH01~ 51
#1 IF ~OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN REPLY @4365 /* @4365 = ~No, I don't think so. Anything else of use?~ */ GOTO M#15
END

EXTEND_TOP ~WSMITH01~ 54
#5 IF ~Global("ForgeItem","GLOBAL",9)
  OR(2)
    PartyHasItem("m#bchide")
    PartyHasItem("m#wskin")~ THEN REPLY @4366 /* @4366 = ~No, I don't think so.  Do I have anything else useful?~ */ DO ~SetGlobal("ForgeItem","GLOBAL",0)~ GOTO M#15
END

EXTEND_BOTTOM ~WSMITH01~ 54
  IF ~Global("M#ForgeItem","GLOBAL",1)~ THEN REPLY @4367 /* @4367 = ~No, I don't think so. Do I have anything else useful?~ */ DO ~SetGlobal("M#ForgeItem","GLOBAL",0)~ GOTO M#9
END

// Kiddnap quest

ADD_TRANS_TRIGGER ~CELOGAN~ 29 
~OR(2)
 !Global("M#AmberKidnap","GLOBAL",4)
 Global("M#LoganKidnapResponse","Locals",1)~ 30 53 74 80 81 95 DO 0

EXTEND_BOTTOM ~CELOGAN~ 2
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)
    CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @4368 /* @4368 = ~My name is <CHARNAME> and I'm here to report a crime.~ */ GOTO M#AmberKidnapA1
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)
    CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY @4368 /* @4368 = ~My name is <CHARNAME> and I'm here to report a crime.~ */ GOTO M#AmberKidnapA
END

EXTEND_BOTTOM ~CELOGAN~ 15
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4369 /* @4369 = ~I don't have time for your troubles right now. I'm here to report a crime.~ */ GOTO M#AmberKidnapA1
END

EXTEND_BOTTOM ~CELOGAN~ 28
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4370 /* @4370 = ~I don't have time for that right now. My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
END

EXTEND_BOTTOM ~CELOGAN~ 29
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4370 /* @4370 = ~I don't have time for that right now. My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4371 /* @4371 = ~I will speak to him as soon as possible.~ */ GOTO M#AmberKidnapC
END

EXTEND_BOTTOM ~CELOGAN~ 30
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4372 /* @4372 = ~Can I then ask for your assistance in return? My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4373 /* @4373 = ~I will help him.~ */ GOTO M#AmberKidnapC
END

EXTEND_BOTTOM ~CELOGAN~ 60
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4370 /* @4370 = ~I don't have time for that right now. My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB1
END

EXTEND_BOTTOM ~CELOGAN~ 53
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4374 /* @4374 = ~My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
 IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4375 /* @4375 = ~ I'll see what I can do about the genies.~ */ GOTO M#AmberKidnapC  
END

EXTEND_BOTTOM ~CELOGAN~ 0
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4368 /* @4368 = ~My name is <CHARNAME> and I'm here to report a crime.~ */ GOTO M#AmberKidnapD
END

EXTEND_BOTTOM ~CELOGAN~ 1
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4376 /* @4376 = ~My name is <CHARNAME> and I'm here to report a crime. ~ */ GOTO M#AmberKidnapD
END

EXTEND_BOTTOM ~CELOGAN~ 64
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4370 /* @4370 = ~I don't have time for that right now. My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
END

EXTEND_BOTTOM ~CELOGAN~ 67
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4377 /* @4377 = ~ I don't have time for that right now. My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
END

EXTEND_BOTTOM ~CELOGAN~ 74
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4378 /* @4378 = ~But this is very urgent. I have a serious crime to report!~ */ GOTO M#AmberKidnapE
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4379 /* @4379 = ~Never mind then. I'll get going.~ */ GOTO M#AmberKidnapC
END

EXTEND_BOTTOM ~CELOGAN~ 80
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4374 /* @4374 = ~My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4380 /* @4380 = ~Yes, my adventures are going well.~ */ GOTO M#AmberKidnapC
END

EXTEND_BOTTOM ~CELOGAN~ 81
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4374 /* @4374 = ~My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4381 /* @4381 = ~Trust me, I'll be careful.~ */ GOTO M#AmberKidnapC
END

EXTEND_BOTTOM ~CELOGAN~ 88
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4370 /* @4370 = ~I don't have time for that right now. My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
END

EXTEND_BOTTOM ~CELOGAN~ 95
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4378 /* @4378 = ~But this is very urgent. I have a serious crime to report!~ */ GOTO M#AmberKidnapE
IF ~Global("M#AmberKidnap","GLOBAL",4)
    Global("M#LoganKidnapResponse","Locals",0)~ THEN REPLY @4379 /* @4379 = ~Never mind then. I'll get going.~ */ GOTO M#AmberKidnapC
END

APPEND ~CELOGAN~ 
  IF ~~ THEN BEGIN M#AmberKidnapA
     SAY @4382 /* @4382 = ~So you have come to add your troubles to mine? If someone has wronged you, I can only assume that you brought it on yourself. You positively reek of arrogance. You may not be the one behind our current troubles, but I will watch you nonetheless.~ */
     IF ~~ THEN REPLY @4383 /* @4383 = ~That is your right. Perhaps I could look into your troubles to demonstrate my trustworthiness?~ */ GOTO 10
     IF ~~ THEN REPLY @4384 /* @4384 = ~Then watch as I leave. I will not suffer your judgement, or that of any other. I leave you to your problems.~ */ GOTO 14
  END
  
  IF ~~ THEN BEGIN M#AmberKidnapA1
     SAY @4385 /* @4385 = ~Oh. I already hoped that you would be here to assist us with *our* problems. But very well, what is the crime you want to report?~ */
     IF ~~ THEN REPLY @4374 /* @4374 = ~My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
     IF ~~ THEN REPLY @4386 /* @4386 = ~I'm sorry. I should have had the sense to ask what I can do for you before asking help for myself.~ */ GOTO 10
  END  
  
  IF ~~ THEN BEGIN M#AmberKidnapB
     SAY @4387 /* @4387 = ~Slavers, you say? Unfortunately it is not unheard of, although I'm happy to say it is relatively rare that they would travel this far from Athkatla.~ */
     =
     @4388 /* @4388 = ~Trademeet is a wealthy town; I guess we don't really have enough unfortunate people for them to take advantage of.~ */
     =
     @4389 /* @4389 = ~That being said, if you wish to find you companion, you should probably go to Athkatla and find the slavers' hideout. Slavery is illegal in all of Amn, so you are unlikely to find them in a respectable part of the city. This is as much help as I can offer you.~ */
     IF ~~ THEN DO ~SetGlobal("M#LoganKidnapResponse","Locals",1)~ EXIT
  END
  
  IF ~~ THEN BEGIN M#AmberKidnapC
     SAY @4390 /* @4390 = ~That's good to hear.~ */
     IF ~~ THEN EXIT
  END 
  
  IF ~~ THEN BEGIN M#AmberKidnapB1
     SAY @4387 /* @4387 = ~Slavers, you say? Unfortunately it is not unheard of, although I'm happy to say it is relatively rare that they would travel this far from Athkatla.~ */
     =
     @4388 /* @4388 = ~Trademeet is a wealthy town; I guess we don't really have enough unfortunate people for them to take advantage of.~ */
     =
     @4389 /* @4389 = ~That being said, if you wish to find you companion, you should probably go to Athkatla and find the slavers' hideout. Slavery is illegal in all of Amn, so you are unlikely to find them in a respectable part of the city. This is as much help as I can offer you.~ */
     =
     @4392 /* @4392 = ~If you wish to assist us in dealing with the Genies later, please seek Guildmistress Busya just outside my office. She will be most interested in hiring you, I am sure.~ */
     IF ~~ THEN DO ~SetGlobal("M#LoganKidnapResponse","Locals",1)~ EXIT
  END
  
  IF ~~ THEN BEGIN M#AmberKidnapD
     SAY @4393 /* @4393 = ~Oh. I already hoped that you would be here to offer your assistance to us, my good <MANWOMAN>. But very well, what is the crime you wish to report?~ */
     IF ~~ THEN REPLY @4374 /* @4374 = ~My companion has been taken by a group of ruffians that I suspect to be involved in slave trade. I was hoping you could give me information on any activity of that type in this region.~ */ GOTO M#AmberKidnapB
     IF ~~ THEN REPLY @4386 /* @4386 = ~I'm sorry. I should have had the sense to ask what I can do for you before asking help for myself.~ */ GOTO 10
  END
  
  IF ~~ THEN BEGIN M#AmberKidnapE
     SAY @4394 /* @4394 = ~I already told you that you are unwelcome here. Now, be gone from my sight.~ */
     IF ~~ THEN DO ~SetGlobal("M#LoganKidnapResponse","Locals",1)~ EXIT
  END   
END

APPEND ~HAEGAN~
  IF WEIGHT #-2 ~!Dead("Lehtinan")
                 Global("M#AmberKidnap","GLOBAL",4)~ THEN BEGIN M#JustAmber
    SAY @4395 /* @4395 = ~Who in the Nine Hells are you? Why have you barged in here with drawn weapons and attacked my men?~ */
    =
    @4396 /* @4396 = ~Wait, you must be the friends of that infernal creature we captured. I was warned about you, but it seems that my men didn't take that warning seriously enough.~ */
    IF ~~ THEN REPLY @4397 /* @4397 = ~So you're the leader of these slavers?  Your cruelty ends this day, scum!~ */ GOTO 2
    IF ~~ THEN REPLY @4398 /* @4398 = ~So it is you who are responsible for kidnapping Amber. You'd better tell me where she is now!~ */ GOTO M#Question
    IF ~~ THEN REPLY @4399 /* @4399 = ~Slavery is illegal, sir, as is kidnapping people! Turn yourself over to the authorities.~ */ GOTO 3
    IF ~~ THEN REPLY @4400 /* @4400 = ~Excuse me. I think I've got the wrong houseboat.~ */ GOTO 5
  END

  IF WEIGHT #-1 ~Dead("Lehtinan")
                 Global("M#AmberKidnap","GLOBAL",4)~ THEN BEGIN M#AmberLehtinan
    SAY @4401 /* @4401 = ~You! How dare you! We were doin' good business in this town before you took out my partner, Lehtinan at the Copper Coronet! Why are you out to ruin me?~ */
    =
    @4402 /* @4402 = ~Wait, you must be the friends of that infernal creature we captured. I was told of you, but it seems that my men didn't manage to kill you after all.~ */
    IF ~~ THEN REPLY @4403 /* @4403 = ~Quiet you slaver scum! You brought ruin upon yourself. Kidnapping our friend just gave us another good reason to get rid of you.~ */ GOTO M#Modified1
    IF ~~ THEN REPLY @4404 /* @4404 = ~So it is you who is responsible for kidnapping Amber. You'd better tell me where she is now!~ */ GOTO M#Question
    IF ~~ THEN REPLY @4405 /* @4405 = ~Reasons don't matter to the dead.~ */ GOTO 2
    IF ~~ THEN REPLY @4406 /* @4406 = ~You're finished, slaver! Turn yourself in to the authorities.~ */ GOTO 3
  END

  IF ~~ THEN BEGIN M#Modified1
    SAY @4407 /* @4407 = ~Kidnapping your friend was nothing but a nice supplement to my income. I have no personal interest in her. And these dregs that we normally deal in could nary be called persons! This is no different than trading in cattle! Speakin' of which, it's about time you were butchered!~ */
    IF ~~ THEN UNSOLVED_JOURNAL @25
               DO ~Enemy()~ EXIT                                       
  END

  IF ~~ THEN BEGIN M#Question
    SAY @4408 /* @4408 = ~Responsible? We only did what we were paid to do. Besides, we don't have her anymore. Ymmyrt's men picked her up as soon as she arrived. A feisty creature she was, and I don't miss her in the least. Gave a few of my men some nasty bruises. But her current location is of no consequence to you, for you will not be leaving here alive. At 'em, men!~ */
    IF ~~ THEN UNSOLVED_JOURNAL @25
               DO ~Enemy()~ EXIT
  END
END