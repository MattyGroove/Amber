// Here are the dialogs for the brand new NPCs.
// CONTENTS:
// "Demon in Athkatla" and "Jill's Bracelet" quests. Dialog files for Girl, Boy, Max, Ed and Nick.
// Amber's kidnapping - quest. Dialogs for the Slaver, Corin, Lorraine, Guard captain, Bathing guard, Cook, Maid, Demon, Gabriel, Nyphs, Ymmyrt, Soul Machine and Lorraine's son.
// Other NPCs. Dialog file for Rashryn the Tailor
// Items & objects: Key Ring, Book of Rings, Ymmyrt's map, Soul Machine, Window

// "Demon in Athkatla" and "Jill's Bracelet" quests. Dialog files for Boy, Girl, Ed, Max and Nick.

BEGIN ~M#GIRL1~
IF ~Global("M#BoyGirl","GLOBAL",1)~ THEN BEGIN 0
  SAY @3000 /* @3000 = ~Oooo... You have to see this! They've captured a live demon!~ */ 
  IF ~~ THEN EXTERN ~M#BOY1~ 0
END

IF ~~ THEN BEGIN 1
  SAY @3001 /* @3001 = ~Yes there is! My brother says he has a friend whose dad's seen one!~ */ 
  IF ~~ THEN REPLY @3002 /* @3002 = ~What are you talking about, girl? Spit it out!~ */ GOTO 2
  IF ~~ THEN REPLY @3003 /* @3003 = ~A demon you say? That sounds interesting - tell me more.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3004 /* @3004 = ~No! Not unless you give me 100 gold!~ */ 
  IF ~~ THEN REPLY @3005 /* @3005 = ~Tell me now unless you want to get yourself hurt!~ */ GOTO 3
  IF ~~ THEN REPLY @3006 /* @3006 = ~What if I just give you these 5 gold pieces?~ */ DO ~TakePartyGold(5)~ GOTO 4
  IF ~~ THEN REPLY @3007 /* @3007 = ~Okay, here you go lassie.~ */ DO ~TakePartyGold(100)~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @3008 /* @3008 = ~Please don't hurt me! I'll tell you right away, my <LADYLORD>! I know for sure that the city guard captured a *real* demon this afternoon on Waukeen's Promenade. The cowled ones said it's no mage, but that it's dangerous, and ordered it to be locked up.~ */ 
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @3009 /* @3009 = ~Wow! Thank you, my <LADYLORD>! Anyway I heard that the city guard captured a *real* demon this afternoon on Waukeen's Promenade. The cowled ones said it's no mage, but that it's dangerous, and ordered it to be locked up.~ */ 
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @3010 /* @3010 = ~Wow, I've never seen so much gold before! Thank you, my <LADYLORD>!  Well anyway, what I heard was that the city guard captured a *real* demon this afternoon on Waukeen's Promenade. My brother and his friends saw it. The cowled ones said it's no mage, but that it can be dangerous, and ordered it to be locked up just to be sure.~ */ 
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @3011 /* @3011 = ~My brother saw the guards drag it to the city prison.~ */  
IF ~~ THEN DO ~SetGlobal("M#BoyGirl","GLOBAL",2)
               SetGlobal("M#AmberRescue","GLOBAL",1)~ 
           UNSOLVED_JOURNAL @1
	   EXIT
END

BEGIN ~M#BOY1~
IF ~~ THEN BEGIN 0
  SAY @3012 /* @3012 = ~No way, I don't believe you. My momma says there's no such thing as demons.~ */ 
  IF ~~ THEN EXTERN ~M#GIRL1~ 1
END

BEGIN ~M#MAXTG~
IF ~Global("M#AmberRescue","GLOBAL",1)
    NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3013 /* @3013 = ~Hey! Who are you? I bet you're not even supposed to be here, so just take a hike, will ya!~ */
  IF ~~ THEN REPLY @3014 /* @3014 = ~I want to talk to the prison keeper. Where can I find him?~ */ GOTO PrisonKeeper
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @3015 /* @3015 = ~Watch your tone, soldier! I'm from the Amnish Inquisition for Demonic and Unnatural Forces and I'm here for the demon you captured earlier.~ */ GOTO 1
  IF ~~ THEN REPLY @3016 /* @3016 = ~No need to shout, my good man. I just happened to hear that a captured demon was being held in this prison, and I wondered if you could tell me something about it.~ */ GOTO 2
  IF ~~ THEN REPLY @3017 /* @3017 = ~Give me the demon or I'll...~ */ GOTO 3
  IF ~~ THEN REPLY @3018 /* @3018 = ~I'm here to liberate the poor creature you hold here, as it is obvious that it cannot be a demon. If it was, it would have already escaped and killed you all.~ */ GOTO 4
  IF ~~ THEN REPLY @3019 /* @3019 = ~Alright, I'll go.~ */ EXIT
  IF ~!Dead("Jan")
      Global("JanFree","GLOBAL",0)
      Global("JanMove","GLOBAL",1)~ THEN REPLY @3020 /* @3020 = ~I'm here to see Jan Jansen.~ */ GOTO MaxJan
END

IF ~~ THEN BEGIN PrisonKeeper
  SAY @3021 /* @3021 = ~He ain't around right now. Come back later if you got business with 'im.~ */ 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MaxJan
  SAY @3022 /* @3022 = ~Eh, you mean the gnome? You've come to pay his fine then or what?~ */
  IF ~~ THEN REPLY @3023 /* @3023 = ~Yes, I would like to pay his fine.~ */ GOTO MaxJanA
  IF ~~ THEN REPLY @3024 /* @3024 = ~He would like to think so but I am not planning to pay his way out of jail.~ */ GOTO MaxJanB
END

IF ~~ THEN BEGIN MaxJanA
  SAY @3025 /* @3025 = ~All right, lemme think... That would be 800 gold then.~ */
  IF ~~ THEN REPLY @3026 /* @3026 = ~I'm afraid that I don't have enough gold right now.~ */ GOTO MaxJanC
  IF ~~ THEN REPLY @3027 /* @3027 = ~I've changed my mind. Enjoy your day!~ */ GOTO MaxJanB
  IF ~PartyGoldGT(799)~ THEN REPLY @3028 /* @3028 = ~Here is your gold.~ */ GOTO MaxJanE
END

IF ~~ THEN BEGIN MaxJanB
  SAY @3029 /* @3029 = ~Then stop waisting my time. The bloody gnome is getting on my nerves bad enough already, without ya adding to it. Now, get going, will ya.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MaxJanC
  SAY @3030 /* @3030 = ~That's too bad. The bloody gnome is getting on my nerves real quick. Now, get going, will ya.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MaxJanE
  SAY @3031 /* @3031 = ~Excellent! He is free so, please, take him and go.~ */
  IF ~~ THEN DO ~TakePartyGold(800)
		 SetGlobal("JanFree","GLOBAL",1)~ 
		 UNSOLVED_JOURNAL #19688 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3032 /* @3032 = ~Eh, never heard of such a thing, but what would I know. Whaddaya want... ummm... <SIRMAAM>?~ */
  IF ~~ THEN REPLY @3033 /* @3033 = ~If you could give me an accurate description of this supposed demon, for starters, it would be most helpful.~ */ GOTO 4
  IF ~~ THEN REPLY @3034 /* @3034 = ~I am here to retrieve the demon you have captured for further investigation and experimentation. I have direct orders from the Grand Inquisitor to escort the creature to our headquarters as quickly as possible.~ */ GOTO 11
  IF ~~ THEN REPLY @3035 /* @3035 = ~Where is this supposed demon you hold? I need to see it immediately.~ */ GOTO 11

END

IF ~~ THEN BEGIN 2
  SAY @3036 /* @3036 = ~Uh... I don't think I'm s'posed to discuss this with you, but I guess there'll be no harm in telling you.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @3037 /* @3037 = ~Or you'll what? Don't you try to scare ol' Max into lettin' you in.~ */
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @3038 /* @3038 = ~Now, now, you got me all wrong. I was just about to tell you that if you cannot be of help in this matter, then I shall have to go to your superiors.~ */ GOTO 12
  IF ~~ THEN REPLY @3039 /* @3039 = ~Oh, but you will be scared... Kill the fool.~ */ GOTO 14 
  IF ~~ THEN REPLY @3040 /* @3040 = ~I'm sorry sir, I didn't mean to... I'll just be going now.~ */ EXIT 
END

IF ~~ THEN BEGIN 4
  SAY @3041 /* @3041 = ~Well, it's the strangest little critter I've seen in my entire life. It's got red hair that looks like it's been blessed by Sune herself. And the little thing is HOT - it's always as if it has a fever or sumthing. And when I say little, I don't mean to tell you it wouldn't be strong, no sirree.~ */
  =
  @3042 /* @3042 = ~By the gods, it's sure got loads of strength and anger packed into that small frame. It's quick too, but that's not all. The most disturbing thing are its eyes - two amber orbs that'll burn right through ya. They're no human eyes, mark my words. I mean, not even the blacks of 'em are normal, not like yours or mine, but more like a cat's or something - I dunno.~ */
    =  
  @3043 /* @3043 = ~And besides, the creature can wield some really spooky magic; earlier it took just one look at my fella Nick and poof! We thought that he'd be blind for good. It did wear off eventually, but I'm not taking any chances with that one, that's for sure.~ */
  IF ~~ THEN REPLY @3044 /* @3044 = ~Could I see this creature for myself?~ */ GOTO 10
  IF ~~ THEN REPLY @3045 /* @3045 = ~Seems like a clear case of demonic contamination. Take me to the creature and I will deal with it accordingly.~ */ GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,50,LORE)~ THEN REPLY @3046 /* @3046 = ~ Judging from your description, this creature is no demon but actually a tiefling - a half-breed that has some demonic influence somewhere in its bloodline. They can be quite dangerous if they wish but most of the time they're nothing like true demons.~ */ GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @3047 /* @3047 = ~Nope, I like my head too much. Boss would flay me if he knew I'd taken bribes. Get the form and we'll talk again.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",2)~ UNSOLVED_JOURNAL @4
  EXIT
END

IF ~~ THEN BEGIN 6
  SAY @3048 /* @3048 = ~Umm, yeah. See you around.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",2)~ UNSOLVED_JOURNAL @4
  EXIT
END

IF ~~ THEN BEGIN 7
  SAY @3049 /* @3049 = ~Hey, you gain nothing by threatening me. Just get the form and we'll talk again.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",2)~ UNSOLVED_JOURNAL @4
  EXIT
END

IF ~~ THEN BEGIN 8
  SAY @3050 /* @3050 = ~Well, I don't really know what it is, for real, but I sure can't let you set it free. Not without proper authorisation, at least. And I doubt you'd be gettin' one, knowin' how the people at the council do their work.~ */
  IF ~~ THEN REPLY @3051 /* @3051 = ~Proper authorisation? What would I need if I wanted to take a look at this creature, then?~ */ GOTO 10
  IF ~~ THEN REPLY @3052 /* @3052 = ~I have plenty of authorisation right here in my hand, see. Better let me in to see the creature or you'll be taking a lot closer look at my 'authorisation'.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @3053 /* @3053 = ~Don't you try to scare ol' Max into lettin' you in. It ain't gonna work.~ */
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @3054 /* @3054 = ~Now, now, no need to get hostile. I was just pointing out that I am quite adequately equipped to face this creature you have in custody. ~ */ GOTO 10
  IF ~~ THEN REPLY @3039 /* @3039 = ~Oh, but you will be scared... Kill the fool.~ */ GOTO 14
  IF ~~ THEN REPLY @3040 /* @3040 = ~I'm sorry sir, I didn't mean to... I'll just be going now.~ */ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @3055 /* @3055 = ~Well, I s'pose if you had the right form, signed and stamped by the due authorities, I could do something for ya. Form 1567, if I remembers it right. Your best bet would probably be goin' to Chief Inspector Brega - you'll need his seal for the form anyway. If you had that, hell, I could even dump the critter on you and be rid of it myself. It's nothin' but a load of trouble, I'll tell ya.~ */
  IF ~~ THEN REPLY @3056 /* @3056 = ~I would not care to be thrown into the jaws of bureaucracy. Perhaps 100 gold pieces would make you reconsider?~ */ GOTO 5
  IF ~~ THEN REPLY @3057 /* @3057 = ~A form from Chief Inspector Brega you say? That does not sound too hard. I'll be back in a moment.~ */ GOTO 6
  IF ~~ THEN REPLY @3058 /* @3058 = ~Listen pal. You will release that creature to me now, or face the consequences.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11
  SAY @3059 /* @3059 = ~You got the papers, then? You must know that I can't let you in to see the critter unless you got the right form properly filled out.~ */
  IF ~~ THEN REPLY @3060 /* @3060 = ~And what form would that be?~ */ GOTO 13
  IF ~~ THEN REPLY @3061 /* @3061 = ~Look, I've got the strictest of orders and if you don't show me to the creature right away, I'll...~ */ GOTO 3
END

IF ~~ THEN BEGIN 12
  SAY @3062 /* @3062 = ~Now that's an idea. Why don't you just go and bother someone else and leave me alone. Chief Inspector Brega's the one who handles all the paperwork for these weirdos we have here. Just tell him you need Form 1567 signed and stamped to help me get rid of both you and the little redheaded bastard.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",2)~ UNSOLVED_JOURNAL @4
  EXIT
END

IF ~~ THEN BEGIN 13
  SAY @3063 /* @3063 = ~It'd be form number 1567, if I remembers it right. Your best bet would probably be goin' to Chief Inspector Brega. If you had that, hell, I could even dump the critter on you and be rid of it myself. It's just load of trouble, I'll tell ya.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",2)~ UNSOLVED_JOURNAL @4
  EXIT
END

IF ~~ THEN BEGIN 14
  SAY @3064 /* @3064 = ~You'll not get away with this! Raise the alarm!~ */
  IF ~~ THEN DO ~Enemy()~
  EXIT
END

IF ~Global("M#AmberRescue","GLOBAL",1)
    !NumberOfTimesTalkedTo(0)~ THEN BEGIN 15
  SAY @3065 /* @3065 = ~You again! Why do you keep bothering me?~ */
  IF ~~ THEN REPLY @3014 /* @3014 = ~I want to talk to the prison keeper. Where can I find him?~ */ GOTO PrisonKeeper
  IF ~~ THEN REPLY @3066 /* @3066 = ~I really need to see the demon you have here. Isn't there any way you could let me see it?~ */ GOTO 10
  IF ~~ THEN REPLY @3017 /* @3017 = ~Give me the demon or I'll...~ */ GOTO 3
  IF ~~ THEN REPLY @3018 /* @3018 = ~I'm here to liberate the poor creature you hold here, as it is obvious that it cannot be a demon. If it was, it would have already escaped and killed you all.~ */ GOTO 4
  IF ~~ THEN REPLY @3067 /* @3067 = ~Sorry, didn't mean to bother you. I'll just leave now, OK?~ */ EXIT
  IF ~!Dead("Jan")
      Global("JanFree","GLOBAL",0)
      Global("JanMove","GLOBAL",1)~ THEN REPLY @3020 /* @3020 = ~I'm here to see Jan Jansen.~ */ GOTO MaxJan  
END

IF ~OR(4)
      Global("M#AmberRescue","GLOBAL",2)
      Global("M#AmberRescue","GLOBAL",3)
      Global("M#AmberRescue","GLOBAL",4)
      Global("M#AmberRescue","GLOBAL",5)
    !PartyHasItem("M#FORM7")~ THEN BEGIN 16
  SAY @3068 /* @3068 = ~I told you, I can't help you unless you get the form from the Chief Inspector.~ */
  IF ~~ THEN REPLY @3069 /* @3069 = ~All right, I believe you.~ */  EXIT
  IF ~~ THEN REPLY @3014 /* @3014 = ~I want to talk to the prison keeper. Where can I find him?~ */ GOTO PrisonKeeper
  IF ~!Dead("Jan")
      Global("JanFree","GLOBAL",0)
      Global("JanMove","GLOBAL",1)~ THEN REPLY @3020 /* @3020 = ~I'm here to see Jan Jansen.~ */ GOTO MaxJan
END

IF ~Global("M#AmberRescue","GLOBAL",5)
    PartyHasItem("M#FORM7")~ THEN BEGIN 17
  SAY @3070 /* @3070 = ~Oh it's you again. Sooner than I expected.~ */
  IF ~~ THEN REPLY @3014 /* @3014 = ~I want to talk to the prison keeper. Where can I find him?~ */ GOTO PrisonKeeper
  IF ~~ THEN REPLY @3071 /* @3071 = ~Here are the papers. Everything should be in order now.~ */ 
             DO ~TakePartyItem("M#FORM7")~ GOTO 18
  IF ~~ THEN REPLY @3072 /* @3072 = ~Actually I still have some things to take care of. I'll be back in a moment.~ */ EXIT
  IF ~!Dead("Jan")
      Global("JanFree","GLOBAL",0)
      Global("JanMove","GLOBAL",1)~ THEN REPLY @3020 /* @3020 = ~I'm here to see Jan Jansen.~ */ GOTO MaxJan
END

IF ~~ THEN BEGIN 18
  SAY @3073 /* @3073 = ~Oh well, I wouldn't know. Can't read, you see. But these look official enough. I think I'd better give you the stuff the demon had with it when we captured it as well. I trust you got the form for that in them papers? Of course you do, it would have been silly of you not to get that one too. So-oo, here you go.~ */
  IF ~~ THEN DO ~GiveItemCreate("M#BUNDLE",LastTalkedToBy(Myself),1,0,0)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @3074 /* @3074 = ~I'll just open the door for you, now.~ */
  IF ~HasItem("M#CKEY1",Myself)~ THEN GOTO 21
  IF ~!HasItem("M#CKEY1",Myself)~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @3075 /* @3075 = ~Hey, where's my key? You've stolen it! Raise the alarm!~ */
  IF ~~ THEN DO ~Enemy()
                 CreateCreature("m#prisg1",[708.630],10)
                 CreateCreature("m#prisg1",[750.647],10)
                 CreateCreature("m#prisg1",[931.665],5)
                 CreateCreature("m#prisg1",[919.702],6)
  		Shout(99)~
  EXIT
END

IF ~~ THEN BEGIN 21
  SAY @3076 /* @3076 = ~Okay, you little creature, you can go with these people now.~ */
  IF ~~ THEN DO ~SetGlobal("M#AmberRescue","GLOBAL",6)~ EXIT
END

IF ~GlobalGT("M#AmberRescue","GLOBAL",5)~ THEN BEGIN MaxLast
  SAY @3337 /* @3337 = ~You got what you wanted, <SIRMAAM>. Move along.~ */
  IF ~~ THEN EXIT
END

BEGIN ~M#EDTG~
IF ~Global("M#TalkedToEd","AR1005",0)~ THEN BEGIN EdFirst
  SAY @3338 /* @3338 = ~You have no busness here! Get lost or you'll regret it.~ */
  IF ~~ THEN REPLY @3069 /* @3069 = ~All right, I believe you.~ */ EXIT
  IF ~~ THEN REPLY @3014 /* @3014 = ~I want to talk to the prison keeper. Where can I find him?~ */ GOTO PrisonKeeper
  IF ~!Dead("Jan")
      Global("JanFree","GLOBAL",0)
      Global("JanMove","GLOBAL",1)~ THEN REPLY @3020 /* @3020 = ~I'm here to see Jan Jansen.~ */ GOTO EdJan
END

IF ~~ THEN BEGIN 1
  SAY @3077 /* @3077 = ~Get lost, bitch. I don't know what you're talkin' about.~ */
  IF ~~ THEN EXTERN M#AMBERN 8
END

IF ~~ THEN BEGIN 2
  SAY @3078 /* @3078 = ~Why you little...~ */
  IF ~~ THEN REPLY @3079 /* @3079 = ~Amber! Try to behave, will you?~ */ GOTO 3
  IF ~~ THEN REPLY @3080 /* @3080 = ~I see where this is going. Would you let me do the talking, Amber?~ */ GOTO 3
  IF ~~ THEN REPLY @3081 /* @3081 = ~Amber, stop that! I'm sorry about that, sir. We'll just be on our way now.~ */ EXTERN M#AMBERN 9   
END

IF ~~ THEN BEGIN 3
  SAY @3082 /* @3082 = ~Huh? You're with this girl? (The guard eyes you and your gear suspiciously. Slowly he seems to come to the conclusion that it would be appropriate to switch to a more polite tone.) Hey, haven't I seen you somewhere, <PRO_SIRMAAM>?~ */
  IF ~~ THEN REPLY @3083 /* @3083 = ~I was here earlier and this woman was released under my surveillance. I got her gear but it seems that there was a bracelet missing.~ */ GOTO 4
  IF ~~ THEN REPLY @3084 /* @3084 = ~Just hand over the bracelet, so that we can get this over with.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @3085 /* @3085 = ~I wouldn't know nothing about no bracelet, anyhow. Nick's the one who's responsible for all of the prisoners' possessions, but he's off duty right now. Probably drinking 'imself under the table at the Sea's Bounty.~ */
  IF ~~ THEN EXTERN M#AMBERN 19
END

IF ~~ THEN BEGIN 5
  SAY @3086 /* @3086 = ~I wouldn't know anything about no bracelet, anyhow. Nick's the one who's responsible for all of the prisoners' possessions, but he's off duty right now. Probably drinking 'imself under the table at the Sea's Bounty.~ */
  IF ~~ THEN EXTERN M#AMBERP 19 // (Amber leaves and takes care of the thing herself.)
END

IF ~~ THEN BEGIN 6
  SAY @3086 /* @3086 = ~I wouldn't know anything about no bracelet, anyhow. Nick's the one who's responsible for all of the prisoners' possessions, but he's off duty right now. Probably drinking 'imself under the table at the Sea's Bounty.~ */
  IF ~~ THEN EXTERN M#AMBERP 20 // (Amber leaves for good.)
END

IF ~~ THEN BEGIN 7
  SAY @3087 /* @3087 = ~No ma'am, I'm tellin' you the truth. If anyone here knows anythin' about yer things, it'll be Nick.~ */
  IF ~~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ 
             UNSOLVED_JOURNAL @12 
  EXIT
END

IF ~Global("M#TalkedToEd","AR1005",1)~ THEN BEGIN 8
  SAY @3088 /* @3088 = ~I already told you; Nick's the one you'll have to ask. I know nothin' about no bracelet.~ */
  IF ~~ THEN REPLY @3069 /* @3069 = ~All right, I believe you.~ */ EXIT
  IF ~~ THEN REPLY @3014 /* @3014 = ~I want to talk to the prison keeper. Where can I find him?~ */ GOTO PrisonKeeper
  IF ~!Dead("Jan")
      Global("JanFree","GLOBAL",0)
      Global("JanMove","GLOBAL",1)~ THEN REPLY @3020 /* @3020 = ~I'm here to see Jan Jansen.~ */ GOTO EdJan
END

IF ~~ THEN BEGIN PrisonKeeper
  SAY @3089 /* @3089 = ~You can't. He's busy, and he left *me* in charge, so beat it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EdJan
  SAY @3090 /* @3090 = ~You're here for the gnome? Are you going to pay his fine then or what?~ */
  IF ~~ THEN REPLY @3023 /* @3023 = ~Yes, I would like to pay his fine.~ */ GOTO EdJanA
  IF ~~ THEN REPLY @3024 /* @3024 = ~He would like to think so but I am not planning to pay his way out of jail.~ */ GOTO EdJanB
END

IF ~~ THEN BEGIN EdJanA
  SAY @3091 /* @3091 = ~Good for you. That would be 900 gold then.~ */
  IF ~~ THEN REPLY @3026 /* @3026 = ~I'm afraid that I don't have enough gold right now.~ */ GOTO EdJanC
  IF ~~ THEN REPLY @3027 /* @3027 = ~I've changed my mind. Enjoy your day!~ */ GOTO EdJanB
  IF ~PartyGoldGT(899)~ THEN REPLY @3028 /* @3028 = ~Here is your gold.~ */ GOTO EdJanE
END

IF ~~ THEN BEGIN EdJanB
  SAY @3092 /* @3092 = ~Then stop waisting my time. The bloody gnome is getting on my nerves is bad enough already, without ya adding to it. Now, get going, will you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EdJanC
  SAY @3093 /* @3093 = ~That's too bad. The bloody gnome is getting on my nerves really quickly. Now, get going, will you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EdJanE
  SAY @3031 /* @3031 = ~Excellent! He is free so, please, take him and go.~ */
  IF ~~ THEN DO ~TakePartyGold(900)
		 SetGlobal("JanFree","GLOBAL",1)~ 
		 UNSOLVED_JOURNAL #19688 EXIT
END

BEGIN ~M#NICKTG~
IF ~Global("M#JillBracelet","GLOBAL",5)~ THEN BEGIN 0
  SAY @3094 /* @3094 = ~(Hic) Whaddaya want?~ */
  IF ~IsGabber("M#Amber")~ THEN REPLY @3095 /* @3095 = ~Your friend Ed told me that you are responsible for the prisoners' belongings. Seems that you 'forgot' to return something to me. A bracelet to be more specific.~ */ 
                              DO ~SetGlobal("M#NickAmber","Locals",1)~ GOTO 1
  IF ~!IsGabber("M#Amber")~ THEN REPLY @3096 /* @3096 = ~Your friend Ed told me that you are responsible for the prisoners' belongings. Seems that you have 'forgotten' to return something to this woman here. A bracelet, to be more specific.~ */ GOTO 1
  IF ~~ THEN REPLY @3097 /* @3097 = ~You have something that does not belong to you. Hand over the bracelet or suffer the consequences.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3098 /* @3098 = ~I've no idea what yer talking 'bout, mate. Ed's hardly me friend so he might jus' be pulling yer leg, if ya know what I mean.~ */
  IF ~Global("M#NickAmber","Locals",0)~ THEN REPLY @3099 /* @3099 = ~Oh, sorry about the disturbance then, I'll just go see him again.~ */
                                             DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO 2
  IF ~~ THEN REPLY @3100 /* @3100 = ~Don't try to feed lies to me, you scumbag. Hand over the bracelet. Now!~ */ 
                                             DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @3101 /* @3101 = ~Yeah... Off ya go then. Come back later and buy me a drink will ya?~ */
  IF ~~ THEN EXTERN M#AMBERN 20
END

IF ~~ THEN BEGIN 3
  SAY @3102 /* @3102 = ~Hey don't ya get so excited. I have no bracelet. I sold it to a fence at the thieves' guild. She's always interested in such pretty items.~ */
  IF ~Global("M#NickAmber","Locals",0)~ THEN REPLY @3103 /* @3103 = ~I should have you locked up for dealing in stolen goods, you know.~ */ GOTO 4 
  IF ~Global("M#NickAmber","Locals",1)~ THEN REPLY @3103 /* @3103 = ~I should have you locked up for dealing in stolen goods, you know.~ */ GOTO 5 
  IF ~~ THEN REPLY @3104 /* @3104 = ~Well, good bye then. I sure hope that our paths will not cross again.~ */ 
             DO ~SetGlobal("M#JillBracelet","GLOBAL",6)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ 
             UNSOLVED_JOURNAL @13
  EXIT
END

IF ~~ THEN BEGIN 4
  SAY @3105 /* @3105 = ~And I should have this little redhead of yours put away for being a deviant. As you well ought to know, illegal magic is frowned upon in this city.~ */
  IF ~~ THEN EXTERN M#AMBERN 21
END

IF ~~ THEN BEGIN 5
  SAY @3106 /* @3106 = ~And I should have you put away for good for being a deviant and irritating to boot. As you well ought to know, illegal magic is frowned upon in this city.~ */
  IF ~~ THEN REPLY @3107 /* @3107 = ~Somehow this lowlife doesn't seem to be as drunk or stupid as he pretends to be, <CHARNAME>...~ */
             DO ~SetGlobal("M#JillBracelet","GLOBAL",6)
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ UNSOLVED_JOURNAL @13 
  EXIT
END

IF ~!Global("M#JillBracelet","GLOBAL",5)~ THEN BEGIN 6
  SAY @3108 /* @3108 = ~I already told ya, I don't have the damn bracelet anymore. Sold it to the Guild I did. Now get lost and leave me to my drink before I arrest you.~ */
  IF ~~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
END

// Amber's kidnapping - quest. Dialogs for the Slaver, Corin, Lorraine, Guard captain, Bathing guard, Cook, Maid, Demon, Gabriel, Nyphs, Ymmyrt, Soul Machine and Lorraine's son. 

BEGIN ~M#KCUT~
IF ~True()~ THEN BEGIN Intro
  SAY @3109 /* @3109 = ~Ah, there you are, tiefling. I have been looking for you.~ */ 
  IF ~RandomNum(4,1)~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO Continuation1
  IF ~RandomNum(4,2)~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO Continuation2
  IF ~RandomNum(4,3)~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO Continuation3
  IF ~RandomNum(4,4)~ THEN DO ~ActionOverride("M#Amber",SetDialog("m#ambern"))~ GOTO Continuation4
END
  
IF ~~ THEN BEGIN Continuation1  
  SAY @3110 /* @3110 = ~My master has some very urgent business with you.~ */
  IF ~~ THEN EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("M#AerieKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Anomen")~ THEN DO ~SetGlobal("M#AnomenKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("M#EdwinKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1 
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN DO ~SetGlobal("M#HaerDalisKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("M#JaheiraKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("M#JanKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("M#KeldornKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("M#KorganKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Mazzy")~ THEN DO ~SetGlobal("M#MazzyKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1    
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("M#MinscKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Valygar")~ THEN DO ~SetGlobal("M#ValygarKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1    
  IF ~IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("M#ViconiaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("M#YoshimoKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
END

IF ~~ THEN BEGIN Continuation2  
  SAY @3110 /* @3110 = ~My master has some very urgent business with you.~ */
  IF ~~ THEN EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("M#YoshimoKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("M#ViconiaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Valygar")~ THEN DO ~SetGlobal("M#ValygarKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("M#MinscKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Mazzy")~ THEN DO ~SetGlobal("M#MazzyKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1    
  IF ~IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("M#KorganKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("M#KeldornKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("M#JanKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1    
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("M#JaheiraKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN DO ~SetGlobal("M#HaerDalisKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("M#EdwinKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1 
  IF ~IsValidForPartyDialog("Anomen")~ THEN DO ~SetGlobal("M#AnomenKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1     
  IF ~IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("M#AerieKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
END

IF ~~ THEN BEGIN Continuation3  
  SAY @3110 /* @3110 = ~My master has some very urgent business with you.~ */
  IF ~~ THEN EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("M#KorganKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("M#KeldornKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Mazzy")~ THEN DO ~SetGlobal("M#MazzyKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("M#JanKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("M#MinscKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("M#JaheiraKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN DO ~SetGlobal("M#HaerDalisKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Valygar")~ THEN DO ~SetGlobal("M#ValygarKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1   
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("M#EdwinKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1   
  IF ~IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("M#ViconiaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Anomen")~ THEN DO ~SetGlobal("M#AnomenKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1 
  IF ~IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("M#YoshimoKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("M#AerieKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
END

IF ~~ THEN BEGIN Continuation4  
  SAY @3110 /* @3110 = ~My master has some very urgent business with you.~ */
  IF ~~ THEN EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("M#AerieKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("M#YoshimoKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1 
  IF ~IsValidForPartyDialog("Anomen")~ THEN DO ~SetGlobal("M#AnomenKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1 
  IF ~IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("M#ViconiaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("M#EdwinKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1    
  IF ~IsValidForPartyDialog("Valygar")~ THEN DO ~SetGlobal("M#ValygarKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN DO ~SetGlobal("M#HaerDalisKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("M#NaliaKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1 
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("M#JaheiraKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("M#MinscKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("M#JanKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1  
  IF ~IsValidForPartyDialog("Mazzy")~ THEN DO ~SetGlobal("M#MazzyKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1      
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("M#KeldornKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1
  IF ~IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("M#KorganKidnapResponse","GLOBAL",1)~ EXTERN M#AMBERN Kidnap1 
END

IF ~~ THEN BEGIN Response
  SAY @3111 /* @3111 = ~That is inconsequential. You will meet him soon enough.~ */
  IF ~~ THEN UNSOLVED_JOURNAL @23
             DO ~StartCutscene("m#kcut02")
                 ActionOverride("M#Amber",SetDialog("m#amberj"))~ EXIT
END

BEGIN ~M#CORIN~
IF ~NumTimesTalkedTo(0)
    See([PC])~ THEN BEGIN Intro
  SAY @3112 /* @3112 = ~You! Although I must thank you for destroying my predecessor Haegan, I am afraid I will not take very kindly to you barging in here. When will you learn to leave our business alone?~ */
  IF ~~ THEN REPLY @3113 /* @3113 = ~Never! I will destroy every single one of you despicable scum. There shall be no slave trading in Athkatla as long as I'm here to stop it! Now draw steel, you cur!~ */ GOTO Attacked
  IF ~~ THEN REPLY @3114 /* @3114 = ~You brought this upon yourself. The fate of your predecessor should have been warning enough. You just sealed your fate by kidnapping our friend.~ */ GOTO Warning
  IF ~~ THEN REPLY @3115 /* @3115 = ~As soon as you tell me where have you taken Amber. We are not interested in your other activities, but kidnapping our friend was a mistake on your part.~ */ GOTO Question
END

IF ~~ THEN BEGIN Attacked
  SAY @3116 /* @3116 = ~Hah! So you're out to save the world, are you? Your pathetic little quest for good shall end here! You will see that in the end, my kind will always prevail. Destroy them!~ */
  IF ~~ THEN DO ~Shout(151)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN Warning
  SAY @3117 /* @3117 = ~We shall see about that. I am not afraid of your kind. Kill them!~ */
  IF ~~ THEN UNSOLVED_JOURNAL @50
             DO ~Shout(151)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN Question
  SAY @3118 /* @3118 = ~Your friend is no longer here. She is of no personal interest to me, merely a way to make some extra gold. She has already been delivered to her new owner, whose identity is of no consequence to you, as you will not be leaving here alive. Kill 'em, men!~ */
  IF ~~ THEN UNSOLVED_JOURNAL @50
             DO ~Shout(151)
                 Enemy()~ EXIT
END

BEGIN ~M#LORRAI~
IF ~See([PC])
    Range([PC],20)
    Global("M#Lorraine","GLOBAL",0)~ THEN BEGIN OUTSIDE1
  SAY @3119 /* @3119 = ~This is private property, dear stranger - I suggest that you leave immediately.~ */ 
  IF ~~ THEN REPLY @3120 /* @3120 = ~Please, just a moment of your time, lady. I'm looking for the home of a sorcerer called Ymmyrt.~ */ GOTO OUTSIDE2
  IF ~~ THEN REPLY @3121 /* @3121 = ~Don't you get pushy with me missy. I demand to know who owns this house.~ */ GOTO OUTSIDE3 
  IF ~~ THEN REPLY @3122 /* @3122 = ~Out of my way, bitch. This must be the place I'm looking for, and even if it's not, I might just as well take a look inside.~ */ GOTO OUTSIDE3
  IF ~~ THEN REPLY @3123 /* @3123 = ~Fine. I'll leave, if you insist.~ */ 
             DO ~SetGlobalTimer("M#LorraineMad","Locals",15)
                 SetGlobal("M#Lorraine","GLOBAL",1)~ EXIT  
END

IF ~~ THEN BEGIN OUTSIDE2
  SAY @3124 /* @3124 = ~What? How do you know that name?~ */ 
        =
      @3125 /* @3125 = ~No matter. I'm not going to repeat my warning: leave NOW, for your own sake.~ */ 
    IF ~~ THEN REPLY @3126 /* @3126 = ~No. I'm not going anywhere before you tell me if Ymmyrt lives here or not.~ */ GOTO OUTSIDE5
    IF ~~ THEN REPLY @3127 /* @3127 = ~Perhaps I should teach you a thing or two about courtesy - the hard way.~ */ GOTO OUTSIDE5
    IF ~~ THEN REPLY @3128 /* @3128 = ~No need to get agitated; perhaps we could sit down and talk about this?~ */ GOTO OUTSIDE5
    IF ~~ THEN REPLY @3129 /* @3129 = ~Alright, I'll heed your warning. See? I'm already leaving.~ */                
               DO ~SetGlobalTimer("M#LorraineMad","Locals",15)
                   SetGlobal("M#Lorraine","GLOBAL",2)~ EXIT
END

IF ~Global("M#Lorraine","GLOBAL",1)
    GlobalTimerExpired("M#LorraineMad","Locals")~ THEN BEGIN OUTSIDE3
  SAY @3130 /* @3130 = ~I'm not going to repeat this warning: leave NOW, for your own sake.~ */ 
    IF ~~ THEN REPLY @3126 /* @3126 = ~No. I'm not going anywhere before you tell me if Ymmyrt lives here or not.~ */ GOTO OUTSIDE5
    IF ~~ THEN REPLY @3127 /* @3127 = ~Perhaps I should teach you a thing or two about courtesy - the hard way.~ */ GOTO OUTSIDE5
    IF ~~ THEN REPLY @3128 /* @3128 = ~No need to get agitated; perhaps we could sit down and talk about this?~ */ GOTO OUTSIDE5
    IF ~~ THEN REPLY @3129 /* @3129 = ~Alright, I'll heed your warning. See? I'm already leaving.~ */ 
               DO ~SetGlobal("M#Lorraine","GLOBAL",2)
               SetGlobalTimer("M#LorraineMad","Locals",15)~ EXIT
END

IF ~~ THEN BEGIN OUTSIDE5
  SAY @3131 /* @3131 = ~I warned you, stranger, but you leave me no choice but to slay you. Men, attack them! Go for the strongest first, perhaps the others will flee.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#Lorraine","GLOBAL",3)
                 Shout(99)
                 EquipMostDamagingMelee()
                 Enemy()
                 ForceSpell(Myself,CLERIC_DEFENSIVE_HARMONY)~ EXIT
END

IF ~Global("M#Lorraine","GLOBAL",2)
    GlobalTimerExpired("M#LorraineMad","Locals")~ THEN BEGIN OUTSIDE6
  SAY @3131 /* @3131 = ~I warned you, stranger, but you leave me no choice but to slay you. Men, attack them! Go for the strongest first, perhaps the others will flee.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#Lorraine","GLOBAL",3)
                 Shout(99)
                 EquipMostDamagingMelee()
                 Enemy()
                 ForceSpell(Myself,CLERIC_DEFENSIVE_HARMONY)~ EXIT
END

IF ~GlobalLT("M#Lorraine","GLOBAL",4)
    Global("M#ReviveLorraine","GLOBAL",1)
    !StateCheck(Myself,STATE_HELPLESS)
    !StateCheck(Myself,STATE_STUNNED)
    !StateCheck(Myself,STATE_SLEEPING)
    !StateCheck(Myself,STATE_SILENCED)
    !StateCheck(Myself,STATE_PANIC)
    !StateCheck(Myself,STATE_BERSERK)
    !StateCheck(Myself,STATE_CHARMED)
    !StateCheck(Myself,STATE_CONFUSED)~ THEN BEGIN OUTSIDE7
  SAY @3132 /* @3132 = ~No! Stranger, please hear my plea before you end my misery!~ */ 
  IF ~~ THEN REPLY @3133 /* @3133 = ~Very well, I will listen - but make it quick.~ */ GOTO OUTSIDE8
  IF ~~ THEN REPLY @3134 /* @3134 = ~You dare to beg for your life after you just attacked me, woman?~ */ GOTO OUTSIDE15
  IF ~!InParty("Mazzy") 
      !InParty("Keldorn")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ 
                                DO ~SetGlobal("M#Lorraine","GLOBAL",4)
                                    DestroyItem("minhp20")
                                    SetSequence("SEQ_AWAKE")
                                    Enemy()~
                                EXIT 
  IF ~IsValidForPartyDialog("Mazzy")
      IsValidForPartyDialog("Keldorn")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ EXTERN KELDORJ M#Lorraine1
  IF ~IsValidForPartyDialog("Mazzy")
      !IsValidForPartyDialog("Keldorn")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ EXTERN MAZZYJ M#Lorraine1
  IF ~IsValidForPartyDialog("Keldorn")
      !IsValidForPartyDialog("Mazzy")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ EXTERN KELDORJ M#Lorraine1
END

IF ~~ THEN BEGIN OUTSIDE15
  SAY @3136 /* @3136 = ~Yes, I beg for my life, good stranger. And not only that but for a life of another. Will you hear me out?~ */ 
  IF ~~ THEN REPLY @3133 /* @3133 = ~Very well, I will listen - but make it quick.~ */ GOTO OUTSIDE8
  IF ~!InParty("Mazzy") 
      !InParty("Keldorn")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ 
                                DO ~SetGlobal("M#Lorraine","GLOBAL",4)
                                    DestroyItem("minhp20")
                                    SetSequence("SEQ_AWAKE")
                                    Enemy()~
                                EXIT 
  IF ~IsValidForPartyDialog("Mazzy")
      IsValidForPartyDialog("Keldorn")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ EXTERN KELDORJ M#Lorraine1
  IF ~IsValidForPartyDialog("Mazzy")
      !IsValidForPartyDialog("Keldorn")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ EXTERN MAZZYJ M#Lorraine1
  IF ~IsValidForPartyDialog("Keldorn")
      !IsValidForPartyDialog("Mazzy")~ THEN REPLY @3135 /* @3135 = ~No, I will not hear any of your pitiful pleas.~ */ EXTERN KELDORJ M#Lorraine1
END


IF ~~ THEN BEGIN OUTSIDE8
  SAY @3137 /* @3137 = ~This is indeed the home of Ymmyrt the sorcerer, and I, Lorraine - cleric and ranger of Mielikki - am a slave of that vile man. He... that snake ...holds hostage the soul of my son and blackmails me into obedience.~ */ 
  IF ~~ THEN REPLY @3138 /* @3138 = ~I suppose you wish me to free his soul so that you may both be at peace?~ */ GOTO OUTSIDE9
  IF ~~ THEN REPLY @3139 /* @3139 = ~Let me guess: you want me to set both mommy and son free? Cute. What would be in it for me?~ */ GOTO OUTSIDE9
  IF ~~ THEN REPLY @3140 /* @3140 = ~A touching story - but I believe none of it. Prepare to meet your death!~ */ 
             DO ~SetGlobal("M#Lorraine","GLOBAL",4)
                 DestroyItem("minhp20")
                 SetSequence("SEQ_AWAKE")
                 Enemy()~
             EXIT
END

IF ~~ THEN BEGIN OUTSIDE9
  SAY @3141 /* @3141 = ~My son, he... he is already dead, but as long as Ymmyrt holds his soul, he cannot truly pass beyond this world and join his forefathers. I cannot allow that - I beg you to free him. I can give you little but a wardstone to allow you entrance to his apartment and some advice as to what you should expect to find once inside.~ */ 
  =
  @3142 /* @3142 = ~However, Ymmyrt has collected many treasures and you have the look of a seasoned adventurer, or at least you fight like one. Perhaps you may find some of his items useful. Of course, it can all be yours even if you slay me here. But I care not - as long as you set my son free.~ */
  IF ~!IsValidForPartyDialog("Mazzy")
      !IsValidForPartyDialog("Keldorn")~ THEN REPLY @3143 /* @3143 = ~Very well, I will help you, but I'm curious: have you not tried to free your son by yourself?~ */ GOTO OUTSIDE11
  IF ~!IsValidForPartyDialog("Mazzy")
      !IsValidForPartyDialog("Keldorn")~ THEN REPLY @3144 /* @3144 = ~I will see if I can find your son's soul, but I can't promise anything.~ */ GOTO OUTSIDE11
  IF ~!IsValidForPartyDialog("Mazzy")
      !IsValidForPartyDialog("Keldorn")~ THEN REPLY @3145 /* @3145 = ~I do not trust you, but if I find this gem you speak of, it will perhaps verify your tale.~ */ GOTO OUTSIDE11
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN KELDORJ M#Lorraine2
  IF ~IsValidForPartyDialog("Mazzy")~ THEN EXTERN MAZZYJ M#Lorraine2
  IF ~IsValidForPartyDialog("Mazzy")
      IsValidForPartyDialog("Keldorn")~ THEN EXTERN MAZZYJ M#Lorraine2
  IF ~IsValidForPartyDialog("Mazzy")
      IsValidForPartyDialog("Keldorn")
      RandomNum(2,1)~ THEN EXTERN KELDORJ M#Lorraine2

END

IF ~~ THEN BEGIN OUTSIDE10
  SAY @3146 /* @3146 = ~Thank you gentle knight, you are most kind.~ */
  IF ~~ THEN REPLY @3143 /* @3143 = ~Very well, I will help you, but I'm curious: have you not tried to free your son by yourself?~ */ GOTO OUTSIDE11
  IF ~~ THEN REPLY @3144 /* @3144 = ~I will see if I can find your son's soul, but I can't promise anything.~ */ GOTO OUTSIDE11
  IF ~~ THEN REPLY @3145 /* @3145 = ~I do not trust you, but if I find this gem you speak of, it will perhaps verify your tale.~ */ GOTO OUTSIDE11
END

IF ~~ THEN BEGIN OUTSIDE11
  SAY @3147 /* @3147 = ~I truly thank you, stranger. I will forever be in your debt. I have tried to get the gem that holds my poor child's soul from the sorcerer's private sleeping quarters, but they are guarded by a demon that I have not been able to defeat.~ */ 
  =
  @3148 /* @3148 = ~Every time I have tried, the demon has left me bloody and battered - barely alive. Every time it has mocked me while I lay there in my misery, dying, until Ymmyrt has come and restored my life force so that I can once more try to vanquish his demon while he laughs at my feeble attempts.~ */ 
    =
  @3149 /* @3149 = ~I must warn you stranger; it is a terrible beast from the infernal realms. You will come to see this when you face him. Will you now in turn answer a question for me? Why do you seek Ymmyrt the sorcerer in the first place? Certainly it was not by accident that you wandered here. Perhaps I can help you to find what you're looking for; I know his household well.~ */ 
  IF ~~ THEN REPLY @3150 /* @3150 = ~Some slavers captured a friend of mine and I learned that they sold her to Ymmyrt. She is a tiefling who goes by the name of Amber.~ */ DO ~SetGlobal("M#LorraineKnowAmber","Locals",1)~ GOTO OUTSIDE12
  IF ~~ THEN REPLY @3151 /* @3151 = ~My business with Ymmyrt is none of your concern.~ */ GOTO OUTSIDE13
END

IF ~~ THEN BEGIN OUTSIDE12
  SAY @3152 /* @3152 = ~Oh, her. Quite a feisty one, isn't she? It took three of Ymmyrt's henchmen to hold her down - she has a true warrior's spirit. Ymmyrt holds her in a room above his laboratory, but you need a key from his bedchamber to get to the laboratory.~ */
  IF ~~ THEN GOTO OUTSIDE14
END

IF ~~ THEN BEGIN OUTSIDE13
  SAY @3153 /* @3153 = ~As you wish, stranger. Your business with Ymmyrt is truly between the two of you, but I'm guessing that it won't be a friendly meeting. You are likely to find him in his laboratory - you will need a key from his bedchamber to get there.~ */
  IF ~~ THEN GOTO OUTSIDE14
END

IF ~~ THEN BEGIN OUTSIDE14
  SAY @3154 /* @3154 = ~But you won't get even to his private quarters without a wardstone to unlock the magic protecting the stairs. Here, you can have this one.~ */
    =
  @3155 /* @3155 = ~I have a way to access his laboratory by other means. I will meet you there and help you defeat him if you bring my son's soul gem with you. Good luck!~ */ 
  IF ~~ THEN DO ~GiveItemCreate("m#yward",Player1,1,0,0)
                 SetGlobal("M#Lorraine","GLOBAL",5) 
                 DestroyItem("m#ywardl")~
             UNSOLVED_JOURNAL @52
             EXIT
END

IF ~Global("M#LorraineHealed","Locals",1)
    Global("M#Lorraine","GLOBAL",5)~ THEN BEGIN ThankYou
  SAY @3156 /* @3156 = ~Thank you, good stranger. I am most grateful for your kindness. When you have the key and the gem, I will meet you in Ymmyrt's basement. Farewell until then.~ */
  IF ~~ THEN DO ~SetGlobal("M#LorraineHealed","Locals",2)~ EXIT
END

IF ~See([PC])
    Range([PC],12)
    AreaCheck("m#ar04")
    !PartyHasItem("m#lsgem")~ THEN BEGIN INSIDE15
  SAY @3157 /* @3157 = ~You do not have the gem, stranger! You would not help a grieving mother? Very well, so be it. I shall retrieve the gem myself.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#Lorraine","GLOBAL",8)
                 MoveToPointNoInterrupt([1097.436])
                 EscapeArea()~ EXIT
END

IF ~See([PC])
    Range([PC],12)
    AreaCheck("m#ar04")
    PartyHasItem("m#lsgem")~ THEN BEGIN INSIDE16
  SAY @3158 /* @3158 = ~You have the gem! Mielikki be blessed! Thank you, truly! Now, come, we must rid this world of Ymmyrt's evil, so that he can never again torture another soul.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#Lorraine","GLOBAL",7)
                 TakePartyItem("m#lsgem")~ GOTO INSIDE17
END

IF ~~ THEN BEGIN INSIDE17
  SAY @3159 /* @3159 = ~But I would ask your name first, good stranger. If I am to fight alongside you, it would be good to know what you are called.~ */ 
  IF ~~ THEN REPLY @3160 /* @3160 = ~My name is <CHARNAME>, and I am pleased to make your acquaintance, Lorraine.~ */ GOTO INSIDE18
  IF ~~ THEN REPLY @3161 /* @3161 = ~I'm called <CHARNAME>, but I'm not sure if I want to drag you to the battle with me - you might get hurt.~ */ GOTO INSIDE19
END

IF ~~ THEN BEGIN INSIDE18
  SAY @3162 /* @3162 = ~Thank you, <CHARNAME>. But enough of this, the battle awaits! There is a device in the sorcerer's laboratory that I need to use to release my son's soul from the gem.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorraineMoved","GLOBAL",1)
  		 CreateItem("m#clearf",1,0,0)
                 FillSlot(0)
                 ChangeAIScript("m#lorall",CLASS)
                 ChangeEnemyAlly(Myself,GOODBUTBLUE)
                 MoveToPointNoInterrupt([350.543])
                 OpenDoor("ExitDoor")
                 EscapeAreaMove("m#ar06",1243,895,3)~ EXIT
END

IF ~~ THEN BEGIN INSIDE19
  SAY @3163 /* @3163 = ~I fear neither death nor pain, <CHARNAME>, and I will have to battle Ymmyrt with you whether you like it or not. There is a device in the sorcerer's laboratory that I need to use to release my son's soul from the gem. But enough of this, the battle awaits!~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorraineMoved","GLOBAL",1)
  		 CreateItem("m#clearf",1,0,0)
                 FillSlot(0)
                 ChangeAIScript("m#lorall",CLASS)
                 ChangeEnemyAlly(Myself,GOODBUTBLUE)
                 MoveToPointNoInterrupt([350.543])
                 OpenDoor("ExitDoor")
                 EscapeAreaMove("m#ar06",1243,895,3)~ EXIT
END

IF ~~ THEN BEGIN GreetingYmmyrt
  SAY @3164 /* @3164 = ~You hold power over me no more, Ymmyrt. <CHARNAME> has in <PRO_HISHER> kindness retrieved the soul gem. Your demon is dead, and you too will fall today, sorcerer!~ */ 
  IF ~~ THEN EXTERN M#YMMYRT FoolishWoman
END

IF ~~ THEN BEGIN GreetingSon
  SAY @3165 /* @3165 = ~Dear child, I'm so happy that you're finally free. But without the help of <CHARNAME> that might have never happened.~ */ 
  IF ~~ THEN EXTERN M#LORSON AllRight
END

IF ~Global("M#LorSonGone","M#AR06",1)
    AreaCheck("m#ar06")~ THEN BEGIN EndSlavery
  SAY @3166 /* @3166 = ~It... it has been so long... I have been a slave for so long. Horrible things have happened since, and without you, <CHARNAME>, they still would. May Mielikki bless you as she once blessed me. I will content myself with praying that some day she might look kindly upon me once again.~ */  
  =
  @3167 /* @3167 = ~It will be a long road for me to set my life right again and correct the wrongs I have caused, but you have helped me to take the first steps on that path. I will be in your debt for the rest of my life.~ */
  =
  @3168 /* @3168 = ~I know naught but your name, but the kindness you have shown me tells more than a thousand words. I have been truly blessed in meeting you, <CHARNAME> - do not think me ungrateful even if I can never repay you.~ */ 
  IF ~Global("M#LorraineKnowAmber","Locals",1)~ THEN SOLVED_JOURNAL @53
                                                     DO ~EraseJournalEntry(@52)
                                                         AddExperienceParty(2000)~ 
                                                     GOTO PointToAmber
  IF ~Global("M#LorraineKnowAmber","Locals",0)~ THEN SOLVED_JOURNAL @53
                                                     DO ~EraseJournalEntry(@52)
                                                         AddExperienceParty(2000)~
                                                     GOTO PointToBusiness
END

IF ~~ THEN BEGIN PointToAmber
  SAY @3169 /* @3169 = ~I will take my leave now, but you will most probably find your friend the tiefling in a room at the end of that flight of stairs. Walk in peace, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("M#Lorraine","GLOBAL",9)
                 EscapeArea()~ EXIT 
END

IF ~~ THEN BEGIN PointToBusiness
  SAY @3170 /* @3170 = ~I will now take my leave and let you take care of whatever business you had here. Walk in peace, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("M#Lorraine","GLOBAL",9)
                 EscapeArea()~ EXIT 
END

IF ~Global("M#LorraineSeeYmmyrtDead","Locals",1)~ THEN BEGIN YmmyrtDead
  SAY @3171 /* @3171 = ~So, another lesson in vanity and foolishness has come to an end. Only one last task remains to be done before I can leave this place forever.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorraineSeeYmmyrtDead","Locals",2)~ EXIT
END

BEGIN ~M#YCMCM1~
IF ~See([PC])
    NumTimesTalkedTo(0)~ THEN BEGIN Greeting
  SAY @3172 /* @3172 = ~So, you must be the troublemakers Ymmyrt mentioned. We have been expecting you. I don't know why you have come and I don't really care. I am here just to make sure you don't go any further.~ */
  IF ~~ THEN REPLY @3173 /* @3173 = ~Um, maybe I'll just be on my way then. Sorry for the inconvenience.~ */ GOTO Attack1
  IF ~~ THEN REPLY @3174 /* @3174 = ~Take me to your master and I might let you live.~ */ GOTO Attack2
  IF ~~ THEN REPLY @3175 /* @3175 = ~That is unfortunate for you, because I will not let you stand in my way. Surrender or die!~ */ GOTO Attack3
  IF ~~ THEN REPLY @3176 /* @3176 = ~You and your evil master shall fall by my hand!~ */ GOTO Attack4
END

IF ~~ THEN BEGIN Attack1
  SAY @3177 /* @3177 = ~I'm afraid it is rather too late for that. Kill them, men!~ */
  IF ~~ THEN DO ~Shout(99)
                 UseItem("potn11",Myself)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN Attack2
  SAY @3178 /* @3178 = ~Unfortunately, that is not to be. Your quest for the mighty Ymmyrt will end here.~ */
  IF ~~ THEN DO ~Shout(99)
                 UseItem("potn11",Myself)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN Attack3
  SAY @3179 /* @3179 = ~Hah, we will never surrender! Attack them!~ */
  IF ~~ THEN DO ~Shout(99)
                 UseItem("potn11",Myself)
                 Enemy()~ EXIT
END

IF ~~ THEN BEGIN Attack4
  SAY @3180 /* @3180 = ~We shall see about that! Attack!~ */
  IF ~~ THEN DO ~Shout(99)
                 UseItem("potn11",Myself)
                 Enemy()~ EXIT
END

BEGIN ~M#YGUNA1~
IF ~See([PC])
    NumTimesTalkedTo(0)~ THEN BEGIN Surprised
  SAY @3181 /* @3181 = ~What's all that racket? Can't a man enjoy his bath in peace? Wha...Hey, you're not supposed to be here!~ */
  IF ~~ THEN REPLY @3182 /* @3182 = ~I have no quarrel with you, man. I am here for your employer, the sorcerer named Ymmyrt. Tell me where he is and I will spare your life.~ */ GOTO Ymmyrt
  IF ~~ THEN REPLY @3183 /* @3183 = ~Where is Ymmyrt, you lout? Take me to him now!~ */ GOTO Ymmyrt
  IF ~~ THEN REPLY @3184 /* @3184 = ~And what is a man in his underwear going to do about that?~ */ GOTO Underwear
  IF ~~ THEN REPLY @3185 /* @3185 = ~I go where I please - and now I'm here to kill you.~ */ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN Ymmyrt
  SAY @3186 /* @3186 = ~His quarters are upstairs, but you can go there no more than I can. It is warded and you'll only get your head split if you try to go there.~ */
  IF ~!PartyHasItem("m#yward")~ THEN REPLY @3187 /* @3187 = ~I should have known you'd be of no use to me. I will find a way to him nevertheless. Now cover yourself and get out of my sight.~ */ DO ~SetGlobal("M#RunAway","Locals",1)~ EXIT
  IF ~!PartyHasItem("m#yward")~ THEN REPLY @3188 /* @3188 = ~I should have known you'd be of no use to me. I will find a way to him nevertheless. However, I cannot let you go, so prepare to meet your death.~ */ DO ~Enemy()~ EXIT
  IF ~PartyHasItem("m#yward")~ THEN REPLY @3189 /* @3189 = ~Such wards will not hold me. Now cover yourself and get out of my sight.~ */ 
                                    DO ~SetGlobal("M#RunAway","Locals",1)~ EXIT
  IF ~PartyHasItem("m#yward")~ THEN REPLY @3190 /* @3190 = ~Such wards will not hold me, you pathetic fool. Now prepare for the end of your puny existence.~ */ DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @3191 /* @3191 = ~You know nothing of what I can or cannot do. Begone or I will be forced to kill you.~ */ DO ~SetGlobal("M#RunAway","Locals",1)~ EXIT
END

IF ~~ THEN BEGIN Underwear
  SAY @3192 /* @3192 = ~You wouldn't take advantage of a man's vulnerable situation, now would you? Surely you will let an unarmed man go. What threat could I possibly pose to you?~ */
  IF ~~ THEN REPLY @3193 /* @3193 = ~Absolutely none. You are right about that. Now begone before my amusement wears off and I reconsider my decision.~ */ DO ~SetGlobal("M#RunAway","Locals",1)~ EXIT
  IF ~~ THEN REPLY @3194 /* @3194 = ~Absolutely none. Unfortunately for you, I cannot have you tipping off your master, so prepare to meet your end.~ */ DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @3195 /* @3195 = ~You never know. I'd better kill you just to be sure.~ */ DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @3196 /* @3196 = ~I might let you go if you answer a few questions for me. Where can I find your master, the sorcerer known as Ymmyrt?~ */ GOTO Ymmyrt
END

BEGIN ~M#YGCOOK~
IF ~NumTimesTalkedTo(0)
    CombatCounter(0)~ THEN BEGIN Begging
  SAY @3197 /* @3197 = ~Y-you wouldn't hurt a poor chef w-would you? I-it's bad luck, yes? Would you care for some sweets, <SIRMAAM>?~ */
  IF ~~ THEN REPLY @3198 /* @3198 = ~Do not worry, my good man. I'm not here to hurt you.~ */ GOTO LetGo
  IF ~~ THEN REPLY @3199 /* @3199 = ~You'll have to serve me better than that in order to save your hide. I have some questions that need answering.~ */ GOTO Interrogate
  IF ~~ THEN REPLY @3200 /* @3200 = ~I'm willing to take the risk! You won't be cleaving meat for that sorcerer anymore!~ */ DO ~Panic()~ EXIT
END

IF ~~ THEN BEGIN LetGo
  SAY @3201 /* @3201 = ~Thank you, <SIRMAAM>. The very moment I saw you, I knew you were the honourable type. Now if you'll excuse me, I'll just take my leave and bother you no longer.~ */
  IF ~~ THEN REPLY @3202 /* @3202 = ~Hold on for a moment. I have a few questions that I would like you to answer.~ */ GOTO Interrogate
  IF ~~ THEN REPLY @3203 /* @3203 = ~Yes, get of my sight. And be quick with it, before I change my mind.~ */ DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
  IF ~~ THEN REPLY @3204 /* @3204 = ~You're not going anywhere. In fact, I think I'd better make sure that you're not going anywhere. Ever.~ */ 
             DO ~Panic()~ EXIT
END

IF ~~ THEN BEGIN Interrogate
  SAY @3205 /* @3205 = ~Huh? And what would those questions be? I'm just the chef! I do my work and that's it. I doubt that I'd know anything that would be of use to a mighty adventurer such as yourself.~ */
  IF ~~ THEN REPLY @3206 /* @3206 = ~I will be judge of that. I would like you to tell me about Ymmyrt.~ */ GOTO Ymmyrt
  IF ~~ THEN REPLY @3207 /* @3207 = ~Stop playing games. Spit out everything you know about Ymmyrt.~ */ GOTO Ymmyrt
  IF ~~ THEN REPLY @3208 /* @3208 = ~Perhaps you're right. Now get out of here.~ */ DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
END

IF ~~ THEN BEGIN Ymmyrt
  SAY @3209 /* @3209 = ~The master? Well, he eats mostly fresh fruits and white bread accompanied by red wine - honestly, I don't know how a man can live on such a diet. He has a passion for Calimshite sweets, too. Luckily the ingredients are rather easy to find and I-~ */
  IF ~~ THEN REPLY @3210 /* @3210 = ~How do you deliver his meals?~ */ GOTO Dinner
  IF ~~ THEN REPLY @3211 /* @3211 = ~I see. You don't know anything about him besides his culinary preferences?~ */ GOTO Chef
  IF ~~ THEN REPLY @3212 /* @3212 = ~I'm not interested in his diet, you idiotic lout. Now tell me something useful.~ */ GOTO Chef
  IF ~~ THEN REPLY @3213 /* @3213 = ~You were right. Now get out of here before I lose my temper.~ */ DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
END

IF ~~ THEN BEGIN Chef
  SAY @3214 /* @3214 = ~Now, look <SIRMAAM>, as I said, I'm a chef and I only concentrate on taking good care of my tasks here in the kitchen. It's not my business to stick my nose into his affairs.~ */
  IF ~~ THEN REPLY @3215 /* @3215 = ~All right, I believe you. Now you should probably leave.~ */ DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
  IF ~~ THEN REPLY @3216 /* @3216 = ~No, I don't believe you and since you're not being co-operative, I'll just have to make sure that you don't run to tell tales to your master. Draw steel chef!~ */ DO ~Panic()~ EXIT
END

IF ~~ THEN BEGIN Dinner
  SAY @3217 /* @3217 = ~He eats real regular, real clockwork-like, so I just leave the prepared tray on that table there just before six in the morning, just before noon and just before five in the evening. That's when he eats his meals, you know. An imp always appears bang on time to pick up the tray and take it to him. How he gets to Ymmyrt's apartment, I have no idea. I only know that I can't go up the stairs in the hall.~ */
  IF ~~ THEN REPLY @3218 /* @3218 = ~Hmm... No help there. Thank you in any case, my good man. You are free to go.~ */ GOTO LetGo
  IF ~~ THEN REPLY @3219 /* @3219 = ~Hmph, not much help there. Get out of my sight, you useless maggot.~ */ DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
  IF ~~ THEN REPLY @3220 /* @3220 = ~Thank you for that useless information. Now I'll just have to make sure you'll not run off warning your master.~ */ 
             DO ~Panic()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Again
  SAY @3221 /* @3221 = ~I'm going, I'm going! Please don't hurt me!~ */
  IF ~~ THEN EXIT
END

BEGIN ~M#YGSWEN~
IF ~NumTimesTalkedTo(0)
    CombatCounter(0)~ THEN BEGIN Begging
  SAY @3222 /* @3222 = ~Please <SIRMAAM>, have mercy! I'm just a simple serving girl!~ */
  IF ~~ THEN REPLY @3223 /* @3223 = ~Don't worry girl, I'm not here to hurt you.~ */ GOTO Leaving
  IF ~~ THEN REPLY @3224 /* @3224 = ~Stop that screaming, wench, or I might lose my temper!~ */ GOTO Fear
  IF ~~ THEN REPLY @3225 /* @3225 = ~You will not get any pity from me! Prepare to die, you maggot of Ymmyrt!~ */ DO ~Panic()~ EXIT
END

IF ~~ THEN BEGIN Leaving
  SAY @3226 /* @3226 = ~C-Can I go then? Please <SIRMAAM>, let me go!~ */
  IF ~~ THEN REPLY @3227 /* @3227 = ~Yes, run along, girl. There is nothing further I wish from you.~ */ DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT  
  IF ~~ THEN REPLY @3228 /* @3228 = ~You may go, but I need you to answer a few questions first.~ */ GOTO Questions
  IF ~~ THEN REPLY @3229 /* @3229 = ~No, think I have changed my mind. Prepare to die, you maggot of Ymmyrt!~ */ DO ~Panic()~ EXIT
END

IF ~~ THEN BEGIN Questions
  SAY @3230 /* @3230 = ~But I know nothing! I... I was recruited just last week, by the chef. Please <SIRMAAM>, I just try to earn money to support my baby boy. I have done nothing wrong. Please let me go!~ */
  IF ~~ THEN REPLY @3231 /* @3231 = ~All right, perhaps there is not much point in questioning you. Just run along now.~ */ 
             DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
  IF ~PartyGoldGT(9)~ THEN REPLY @3232 /* @3232 = ~All right, perhaps there is not much point in questioning you. Here, take these coins and run along.~ */ DO ~TakePartyGold(10)~ GOTO Thanks
  IF ~~ THEN REPLY @3233 /* @3233 = ~No, I think I have changed my mind. Prepare to die, you maggot of Ymmyrt!~ */ DO ~Panic()~ EXIT
END

IF ~~ THEN BEGIN Thanks
  SAY @3234 /* @3234 = ~Thank you! Thank you, <SIRMAAM>!~ */
  IF ~~ THEN DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
END

IF ~~ THEN BEGIN Fear
  SAY @3235 /* @3235 = ~(The girl just stares at you, her green eyes wide and full of terror.)~ */
  IF ~~ THEN REPLY @3236 /* @3236 = ~That's better. Now if you could answer few questions for me.~ */ GOTO Questions
  IF ~~ THEN REPLY @3237 /* @3237 = ~I'm sorry. It was not my intention to scare you, girl. You are free to go now.~ */ 
             DO ~SetGlobal("M#RunAway","Locals",3)~ EXIT
END

BEGIN ~M#YDEMON~
IF ~See([PC])~ THEN BEGIN Greeting
  SAY @3238 /* @3238 = ~Ah, Lorraine, our game begins again... Wait! You're not her! No matter, you're not the master either and I have no obligation to spare your life. What a refreshing change.~ */ 
  IF ~~ THEN DO ~Enemy()~ EXIT
END

BEGIN ~M#YIMP~
IF ~See([PC])~ THEN BEGIN Atchoo
  SAY @3239 /* @3239 = ~Atchooo...!~ */ 
        =
      @3240 /* @3240 = ~(Coughs) Hrm... And who might you be stomping here with your muddy boots and dusty cloaks? Master won't be happy if you spoil his collection with all that dirt. Nooo, he sure won't.~ */ 
        =
      @3241 /* @3241 = ~(The imp hops closer and begins to dust your cloak with a feather duster.)~ */
  IF ~~ THEN REPLY @3242 /* @3242 = ~I'm looking for the sorcerer Ymmyrt. I take you mean him when refer to the 'master'.~ */ GOTO Master
  IF ~~ THEN REPLY @3243 /* @3243 = ~That's none of your business, imp. And get away from me with that duster.~ */ GOTO MoveAway
  IF ~~ THEN REPLY @3244 /* @3244 = ~Another simple beast? That duster wont serve you long in battle!~ */ GOTO MoveAway
END

IF ~~ THEN BEGIN MoveAway
  SAY @3245 /* @3245 = ~(The imp moves away from you and continues his task of arranging and dusting the books of the library. He seems to have completely forgotten your presence.)~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy(Myself),150)~ EXIT
END

IF ~~ THEN BEGIN Master
  SAY @3246 /* @3246 = ~Yes, Master, he is very wise, he is. He knows loads of stuff about everything, about imps and men and demons; many things, yes. (The imp continues to clean your gear.) Many wonderful thing he has collected, pretty and even prettier.~ */ 
        =
      @3247 /* @3247 = ~But I don't know about that unicorn thing - horsies are kinda smelly... and hair, yes, have lotsa hair they do, too... would mess this place up something awful, they would.~ */ 
  IF ~~ THEN REPLY @3248 /* @3248 = ~(Let the imp continue it's babbling.)~ */ GOTO Horsies
  IF ~~ THEN REPLY @3249 /* @3249 = ~Whatever... Where can I find this master of yours?~ */ GOTO Question
  IF ~~ THEN REPLY @3250 /* @3250 = ~I've had enough of your babbling, imp! Prepare to die!~ */ GOTO MoveAway
END

IF ~~ THEN BEGIN Horsies
  SAY @3251 /* @3251 = ~And they leave droppings everywhere, too - not very nice. But if a unicorn is what the Master wants, a unicorn he must have. Does he ask poor me if it will be too much work? (The Imp ceases it's work and crosses its tiny arms, huffing indignantly.) No! No he does not. But Master knows best, yes. (The imp pulls a cleaning rag out of nowhere and begins to polish your boots.) It does not matter, no sir, never does.~ */
  = @3252 /* @3252 = ~That's why he got that woman, that pointy eared dark hair...~ */
  IF ~~ THEN REPLY @3248 /* @3248 = ~(Let the imp continue it's babbling.)~ */ GOTO DarkHair
  IF ~~ THEN REPLY @3249 /* @3249 = ~Whatever... Where can I find this master of yours?~ */ GOTO Question
  IF ~~ THEN REPLY @3250 /* @3250 = ~I've had enough of your babbling, imp! Prepare to die!~ */ GOTO MoveAway
END

IF ~~ THEN BEGIN DarkHair
  SAY @3253 /* @3253 = ~Master is wise and knows that dark hair's goddess is Lady of the Forest. And unicorns and forests go together, since horsies eat green things. But the dark hair is stubborn and wont give master a horsie. No she won't. Silly girl. There was loads of yelling and throwing of things - books too. Grrrr.... bad to throw books - books get all dirty and ragged. (The imp begins to scrub your boots more furiously.)~ */ 
  = @3254 /* @3254 = ~But Master knows how to punish book throwers, oooooh yes, he does.~ */ 
  IF ~~ THEN REPLY @3248 /* @3248 = ~(Let the imp continue it's babbling.)~ */ GOTO Laughter
  IF ~~ THEN REPLY @3249 /* @3249 = ~Whatever... Where can I find this master of yours?~ */ GOTO Question
  IF ~~ THEN REPLY @3250 /* @3250 = ~I've had enough of your babbling, imp! Prepare to die!~ */ GOTO MoveAway
END

IF ~~ THEN BEGIN Laughter
  SAY @3255 /* @3255 = ~Master makes the silly dark hair do things, horrible things, to nice, goody-two-shoe people. Hah-hih-hih... (The imp stops cleaning your boots, which are already shining anyway, and begins to giggle mischievously, rubbing its little hands together evilly.)~ */ 
  IF ~~ THEN REPLY @3256 /* @3256 = ~All right, this is all very interesting, but where can I find this master of yours?~ */ GOTO Question
  IF ~~ THEN REPLY @3249 /* @3249 = ~Whatever... Where can I find this master of yours?~ */ GOTO Question
  IF ~~ THEN REPLY @3250 /* @3250 = ~I've had enough of your babbling, imp! Prepare to die!~ */ GOTO MoveAway
END

IF ~~ THEN BEGIN Question
  SAY @3257 /* @3257 = ~The Master would be working at this hour, down in his fancy laboratory. But I doubt that he would have anything to do with the likes of you. He is very wise and important you know. And busy. Yes, busy and wise.~ */ 
  IF ~~ THEN REPLY @3258 /* @3258 = ~We'll see about that. Now, you should get back to cleaning the library.~ */ GOTO MoveAway
  IF ~~ THEN REPLY @3259 /* @3259 = ~He'll have everything to do with me should I wish so. Now get lost, imp.~ */ GOTO MoveAway
  IF ~~ THEN REPLY @3250 /* @3250 = ~I've had enough of your babbling, imp! Prepare to die!~ */ GOTO MoveAway
END

BEGIN ~M#YNYMP1~
IF ~See([PC])~ THEN BEGIN Greeting
  SAY @3260 /* @3260 = ~Master, is that you? No? Well, perhaps you will stay with us until the master comes back to satisfy our needs.~ */
  IF ~~ THEN DO ~CreateCreature("m#reveal",[1407.412],0)
                 ActionOverride("m#reveal",DestroySelf())
                 Enemy()~
             EXTERN M#YNYMP2 Continued1
END

BEGIN ~M#YNYMP2~
IF ~~ THEN BEGIN Continued1
  SAY @3261 /* @3261 = ~Yessss, please stay. We need you, pretty one.~ */
  IF ~~ THEN DO ~Enemy()~ EXTERN M#YNYMP3 Continued2
END

BEGIN ~M#YNYMP3~
IF ~~ THEN BEGIN Continued2
  SAY @3262 /* @3262 = ~We're so lonely here. Would you not comfort us?~ */
  IF ~~ THEN DO ~Enemy()~ EXIT
END

BEGIN ~M#YMMYRT~
IF ~NumTimesTalkedTo(0)
    See([PC])
    InActiveArea("M#Lorraine")~ THEN BEGIN GreetingLorraine
  SAY @3263 /* @3263 = ~Ah Lorraine, you return. Have you completed the task I set you to? What? Who are these strangers? Is this one of your silly attempts to rebel? I warn you woman! Think of your little brat. You would not want anything bad to happen to him, would you?~ */ 
  IF ~~ THEN EXTERN M#LORRAI GreetingYmmyrt
END

IF ~~ THEN BEGIN FoolishWoman
  SAY @3264 /* @3264 = ~You foolish woman! Do you really believe that you or this rabble can harm me? The mightiest of sorcerers and master of arcane secrets? You are mad to think so!~ */ 
  IF ~~ THEN DO ~Enemy()
                 ReallyForceSpell("M#Lorraine",WIZARD_POLYMORPH_OTHER)~ EXIT
END

IF ~NumTimesTalkedTo(0)
    See([PC])
    !InActiveArea("M#Lorraine")~ THEN BEGIN Greeting
  SAY @3265 /* @3265 = ~What? Who are you? What do you think you are doing storming into my laboratory like this, you insolent lout? I'll have that woman whipped for letting you slip past her.~ */ 
  IF ~~ THEN REPLY @3266 /* @3266 = ~I came for my friend that you have unjustly taken captive. Return Amber to me and you may live!~ */ GOTO FoolishPC
  IF ~~ THEN REPLY @3267 /* @3267 = ~Your servants cannot stop me, and neither can you. Prepare to die, wizard!~ */ GOTO FoolishPC
  IF ~Dead("M#Lorraine")~ THEN REPLY @3268 /* @3268 = ~You won't have to whip her; I already disposed of your little servant. And you will be next.~ */ GOTO FoolishPC
END

IF ~~ THEN BEGIN FoolishPC
  SAY @3269 /* @3269 = ~You fool! Do you really believe that you could harm me? The mightiest of sorcerers and master of arcane secrets? You are mad to think so!~ */ 
  IF ~~ THEN DO ~Enemy()
                 ReallyForceSpell(LastTalkedToBy(Myself),WIZARD_POLYMORPH_OTHER)~ EXIT
END

BEGIN ~M#LORSON~
IF ~!Dead("m#lorraine")
    InActiveArea("m#lorraine")~ THEN BEGIN GreetsLorraine
  SAY @3270 /* @3270 = ~Mother, Mother you did it! You saved me from that evil man.~ */ 
  IF ~~ THEN EXTERN M#LORRAI GreetingSon
END

IF ~~ THEN BEGIN AllRight
  SAY @3271 /* @3271 = ~Oh Mother, don't cry. Everything is all right now. I'm not afraid, not any more.~ */ 
           =
      @3272 /* @3272 = ~G-Good bye Mother. I'll say hi to Grandpa for you. We will be waiting for you, but you must promise me to try and live a happy life first.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorSonGone","M#AR06",1)
                 ApplySpellRES("m#heaven",Myself)
                 Wait(1)
                 DestroySelf()~ EXIT
END

IF ~!Dead("m#lorraine")
    !InActiveArea("m#lorraine")~ THEN BEGIN LorraineNotHere
  SAY @3273 /* @3273 = ~Who... Who are you? Where is Mother? I thought for sure that she would save me.~ */ 
  IF ~~ THEN DO ~FaceObject(Player1)~ GOTO FindLorraine
END

IF ~~ THEN BEGIN FindLorraine
  SAY @3274 /* @3274 = ~Nevertheless, thank you for freeing me, whoever you are. Now I'll be able to find my mother and tell her I am finally free.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorSonGone","M#AR06",1)
                 ApplySpellRES("m#heaven",Myself)
                 Wait(1)
                 DestroySelf()~ EXIT
END

IF ~Dead("m#lorraine")~ THEN BEGIN LorraineNotHere
  SAY @3273 /* @3273 = ~Who... Who are you? Where is Mother? I thought for sure that she would save me.~ */ 
  =
  @3275 /* @3275 = ~She has gone before me, hasn't she?~ */ 
  IF ~Global("M#KilledLorraine","GLOBAL",0)~ THEN DO ~MoveToObject("m#lorraine")~ GOTO Lament
  IF ~Gender(player1,MALE)
      Global("M#KilledLorraine","GLOBAL",1)~ THEN DO ~FaceObject(Player1)~ GOTO KilledLorraineA
  IF ~Gender(player1,FEMALE)
      Global("M#KilledLorraine","GLOBAL",1)~ THEN DO ~FaceObject(Player1)~ GOTO KilledLorraineB
END

IF ~~ THEN BEGIN Lament
  SAY @3276 /* @3276 = ~You will be waiting for me, Mother, won't you? I'm so glad that we can be together again, though you should have deserved a happier life. A long happy life - that is what I would give you if I was granted a wish.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorSonGone","M#AR06",1)
                 ApplySpellRES("m#heaven",Myself)
                 Wait(1)
                 DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN KilledLorraineA
  SAY @3277 /* @3277 = ~And you murdered her? You vile man! Vile and evil! I hope that you will fall in the hands of your own friends!~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorSonGone","M#AR06",1)
                 ApplySpellRES("m#heaven",Myself)
                 Wait(1)
                 DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN KilledLorraineB
  SAY @3278 /* @3278 = ~And you murdered her? You vile woman! Vile and evil! I hope that you will fall in the hands of your own friends!~ */ 
  IF ~~ THEN DO ~SetGlobal("M#LorSonGone","M#AR06",1)
                 ApplySpellRES("m#heaven",Myself)
                 Wait(1)
                 DestroySelf()~ EXIT
END

// Other NPCs. Dialog file for Rashryn the Tailor

BEGIN ~M#RASHRY~
IF ~Global("M#TalkedToRashryn","Locals",1)
    OR(2) 
      Global("M#RashrynMakingCloak","Locals",1)
      Global("M#RashrynMakingRobe","Locals",1)~ THEN BEGIN RashrynWorking
  SAY @3279 /* @3279 = ~I'm sorry, <SIRMAAM>. I'm still working on your previous order and I'm afraid I cannot take new ones before it has been finished.~ */
  =
  @3280 /* @3280 = ~Come back at the time we agreed upon and I'll have your item ready for you.~ */
  IF ~~ THEN EXIT
END

IF ~Global("M#TalkedToRashryn","Locals",1)
    OR(2)  
      Global("M#RashrynMakingCloak","Locals",2)
      Global("M#RashrynMakingRobe","Locals",2)~ THEN BEGIN RashrynFinished
  SAY @3281 /* @3281 = ~There you are, good <SIRMAAM>, welcome back. I've got your finished order right here - I trust you will find it more than satisfactory.~ */
  IF ~Global("M#RashrynMakingCloak","Locals",2)~ THEN DO ~SetGlobal("M#RashrynMakingCloak","Locals",3)
   GiveItem("m#bcclk",LastTalkedToBy())~ EXIT
  IF ~Global("M#RashrynMakingRobe","Locals",2)
      !Global("M#RashrynMakingJeweledRobe","Locals",1)~ THEN DO ~SetGlobal("M#RashrynMakingRobe","Locals",3)
   GiveItem("m#wrobe1",LastTalkedToBy())~ EXIT
    IF ~Global("M#RashrynMakingRobe","Locals",2)
    	Global("M#RashrynMakingJeweledRobe","Locals",1)~ THEN DO ~SetGlobal("M#RashrynMakingRobe","Locals",3)
   GiveItem("m#wrobe2",LastTalkedToBy())~ EXIT 
END

IF ~Global("M#TalkedToRashryn","Locals",0)~ THEN BEGIN RashrynBeginA
  SAY @3282 /* @3282 = ~A good day to you, <LADYLORD>! My name is Rashryn, at your service. Would you be interested in some of the fine fabrics I have on sale? Or perhaps my quality furs and leathers would suit your needs better? Made to suit you both in cut and style, of course.~ */
  IF ~~ THEN REPLY @3283 /* @3283 = ~No, I am not interested in your wares. Perhaps later.~ */ DO ~SetGlobal("M#TalkedToRashryn","Locals",1)~ GOTO RashrynA
  IF ~PartyHasItem("m#bchide")
      Global("M#RashrynSeenCatHide","Locals",0)~ THEN REPLY @3284 /* @3284 = ~Well, I do have this nice hide that came off an exotic cat of some kind. Perhaps you could turn it into something useful for me.~ */ DO ~SetGlobal("M#RashrynSeenCatHide","Locals",1) 
       SetGlobal("M#TalkedToRashryn","Locals",1)~ GOTO RashrynB
  IF ~PartyHasItem("m#bchide")
      Global("M#RashrynSeenCatHide","Locals",1)~ THEN REPLY @3284 /* @3284 = ~Well, I do have this nice hide that came off an exotic cat of some kind. Perhaps you could turn it into something useful for me.~ */ DO ~SetGlobal("M#TalkedToRashryn","Locals",1)~ GOTO RashrynB1
  IF ~PartyHasItem("m#wskin")
      Global("M#RashrynSeenWyvernHide","Locals",0)~ THEN REPLY @3285 /* @3285 = ~I came across this piece of strong leather that I believe used to be the hide of a wyvern. I was wondering if you could make something useful out of it?~ */ DO ~SetGlobal("M#RashrynSeenWyvernHide","Locals",1)
      				       SetGlobal("M#TalkedToRashryn","Locals",1)~ GOTO RashrynE
  IF ~PartyHasItem("m#wskin")
      Global("M#RashrynSeenWyvernHide","Locals",1)~ THEN REPLY @3285 /* @3285 = ~I came across this piece of strong leather that I believe used to be the hide of a wyvern. I was wondering if you could make something useful out of it?~ */ DO ~SetGlobal("M#TalkedToRashryn","Locals",1)~ GOTO RashrynE1
END

IF ~Global("M#TalkedToRashryn","Locals",1)~ THEN BEGIN RashrynBeginB
  SAY @3286 /* @3286 = ~Another good day to you, my <LADYLORD>! A pleasure to see you again. Would you be interested in some of the fine fabrics I have on sale? Or perhaps my quality furs and leathers would suit your needs better? Made to suit you both in cut and style, of course.~ */
  IF ~~ THEN REPLY @3283 /* @3283 = ~No, I am not interested in your wares. Perhaps later.~ */ GOTO RashrynA
  IF ~PartyHasItem("m#bchide")
      Global("M#RashrynSeenCatHide","Locals",0)~ THEN REPLY @3284 /* @3284 = ~Well, I do have this nice hide that came off an exotic cat of some kind. Perhaps you could turn it into something useful for me.~ */ DO ~SetGlobal("M#RashrynSeenCatHide","Locals",1)~ GOTO RashrynB
  IF ~PartyHasItem("m#bchide")
      Global("M#RashrynSeenCatHide","Locals",1)~ THEN REPLY @3284 /* @3284 = ~Well, I do have this nice hide that came off an exotic cat of some kind. Perhaps you could turn it into something useful for me.~ */ GOTO RashrynB1
  IF ~PartyHasItem("m#wskin")
      Global("M#RashrynSeenWyvernHide","Locals",0)~ THEN REPLY @3285 /* @3285 = ~I came across this piece of strong leather that I believe used to be the hide of a wyvern. I was wondering if you could make something useful out of it?~ */ DO ~SetGlobal("M#RashrynSeenWyvernHide","Locals",1)~ GOTO RashrynE
  IF ~PartyHasItem("m#wskin")
      Global("M#RashrynSeenWyvernHide","Locals",1)~ THEN REPLY @3285 /* @3285 = ~I came across this piece of strong leather that I believe used to be the hide of a wyvern. I was wondering if you could make something useful out of it?~ */ GOTO RashrynE1
END

IF ~~ THEN BEGIN RashrynA
  SAY @3287 /* @3287 = ~In that case I will look forward to seeing you later, good <SIRMAAM>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RashrynB
  SAY @3288 /* @3288 = ~I rarely agree to work with anything that isn't produced by my own tanners. Most of the time the quality just doesn't meet the standards my customers are used to. But I can certainly take a look at that hide of yours.~ */
  =
  @3289 /* @3289 = ~Oh my...~ */
  =
  @3290 /* @3290 = ~I... I don't think that I've ever seen the work of a tanner that skilled. This fur must have come from somewhere far away. Not only is the animal itself exotic, but there is no tanner in Amn who can make the skin this soft while keeping the fur so thick and luxurious.~ */
  =
  @3291 /* @3291 = ~I'm glad that you have come to my shop with this piece of beauty, <SIRMAAM>. I shudder to think what would have happened had such an exquisite piece of material ended up in the hands of someone less skilled. I rarely pick up the needle and thread myself anymore, but I'm afraid this would be too precious a piece even for my skilled apprentices. I can assure you that you have just contracted the best tailor in the whole of Athkatla to work on your hide.~ */
  =
  @3292 /* @3292 = ~If you allow me to make a suggestion, good <SIRMAAM>, I would propose to make this magnificent hide into an equally magnificent cloak. It would be a shame to mar such a fur with excessive cuts and seams. For a mere 1000 gold pieces you would have a cloak suitable for any king or queen.~ */
  IF ~~ THEN REPLY @3293 /* @3293 = ~No, I'm not interested. Perhaps some other time?~ */ GOTO RashrynA
  IF ~~ THEN REPLY @3294 /* @3294 = ~I don't think I can afford that much gold. Perhaps we can negotiate on the price?~ */ GOTO RashrynC
  IF ~PartyGoldGT(999)~ THEN REPLY @3295 /* @3295 = ~Sounds promising. I'll take your offer.~ */ GOTO RashrynD
END

IF ~~ THEN BEGIN RashrynC
  SAY @3296 /* @3296 = ~I'm afraid that won't be possible. This piece of fur deserves nothing but the best, and such skill does have its fair price.~ */
  IF ~~ THEN REPLY @3297 /* @3297 = ~Well, in that case I'm not interested. Perhaps some other time?~ */ GOTO RashrynA 
  IF ~PartyGoldGT(999)~ THEN REPLY @3298 /* @3298 = ~All right, then. I'll take your offer.~ */ GOTO RashrynD
END

IF ~~ THEN BEGIN RashrynD
  SAY @3299 /* @3299 = ~An excellent decision, <SIRMAAM>. I'll have the cloak ready for you this same time tomorrow.~ */
  IF ~~ THEN DO ~TakePartyItem("m#bchide")
  		 TakePartyGold(1000)
  		 SetGlobal("M#RashrynMakingCloak","Locals",1)
  		 SetGlobalTimer("M#RashrynMakingCloakTime","Locals",3700)~ EXIT
END

IF ~~ THEN BEGIN RashrynB1
  SAY @3300 /* @3300 = ~Yes, how could I forget? You do not see quality like that every day. My offer still stands: for a 1000 gold pieces I will make you a cloak so fine that you will never want to wear another.~ */
  IF ~~ THEN REPLY @3293 /* @3293 = ~No, I'm not interested. Perhaps some other time?~ */ GOTO RashrynA
  IF ~~ THEN REPLY @3294 /* @3294 = ~I don't think I can afford that much gold. Perhaps we can negotiate on the price?~ */ GOTO RashrynC
  IF ~PartyGoldGT(999)~ THEN REPLY @3295 /* @3295 = ~Sounds promising. I'll take your offer.~ */ GOTO RashrynD
END

IF ~~ THEN BEGIN RashrynE
  SAY @3301 /* @3301 = ~The hide of a wyvern, you say? I'm afraid that's not really my speciality, but I'm certainly willing to take on the challenge. At least I can safely assure you that there is no-one in Athkatla that would be more qualified for the task than I am.~ */
  =
  @3302 /* @3302 = ~Let me take a look at that... Yes, there certainly would be enough to make an exquisite robe for you. The work will be somewhat dangerous, though, wyverns being such poisonous creatures. I will have to charge a little extra for that.~ */
  =
  @3303 /* @3303 = ~But because I like you my friend, I'll throw in a little enchantment for you. For no extra charge, of course. You have an adventurous look about you <SIRMAAM>, and I'm sure you'll find my spell most useful in a tight spot.~ */
  =
  @3304 /* @3304 = ~Give me two full days and 3000 gold pieces, and you'll have yourself a robe of wyvern leather. Add a couple, say ten, emeralds to that, and I can make the enchantment even more potent.~ */
  IF ~~ THEN REPLY @3293 /* @3293 = ~No, I'm not interested. Perhaps some other time?~ */ GOTO RashrynA
  IF ~~ THEN REPLY @3294 /* @3294 = ~I don't think I can afford that much gold. Perhaps we can negotiate on the price?~ */ GOTO RashrynF
  IF ~PartyGoldGT(2999)
      NumItemsPartyGT("misc43",9)~ THEN REPLY @3305 /* @3305 = ~Sounds promising. I'll take your offer. Leave out the emeralds, though.~ */ GOTO RashrynG
  IF ~PartyGoldGT(2999)
      NumItemsPartyLT("misc43",10)~ THEN REPLY @3306 /* @3306 = ~I have the money but not the stones. I guess I'll just have to do without that extra enchantment.~ */ GOTO RashrynG
  IF ~PartyGoldGT(2999)
      NumItemsPartyGT("misc43",9)~ THEN REPLY @3307 /* @3307 = ~Sounds good. I have the money and the emeralds right here.~ */ GOTO RashrynH
  IF ~NumItemsPartyLT("misc43",10)~ THEN REPLY @3308 /* @3308 = ~I don't carry that many jewels on my person. I will be back later.~ */ GOTO RashrynA
END

IF ~~ THEN BEGIN RashrynF
  SAY @3309 /* @3309 = ~I'm afraid that won't be possible. As I said, the work does have its hazards and I'm not willing to take chances with my health. Proper precautions do take their time and require some rather expensive equipment, you see.~ */
  IF ~~ THEN REPLY @3293 /* @3293 = ~No, I'm not interested. Perhaps some other time?~ */ GOTO RashrynA
  IF ~PartyGoldGT(2999)
      NumItemsPartyGT("misc43",9)~ THEN REPLY @3305 /* @3305 = ~Sounds promising. I'll take your offer. Leave out the emeralds, though.~ */ GOTO RashrynG
  IF ~PartyGoldGT(2999)
      NumItemsPartyLT("misc43",10)~ THEN REPLY @3306 /* @3306 = ~I have the money but not the stones. I guess I'll just have to do without that extra enchantment.~ */ GOTO RashrynG
  IF ~PartyGoldGT(2999)
      NumItemsPartyGT("misc43",9)~ THEN REPLY @3307 /* @3307 = ~Sounds good. I have the money and the emeralds right here.~ */ GOTO RashrynH
  IF ~NumItemsPartyLT("misc43",10)~ THEN REPLY @3308 /* @3308 = ~I don't carry that many jewels on my person. I will be back later.~ */ GOTO RashrynA
END

IF ~~ THEN BEGIN RashrynG
  SAY @3310 /* @3310 = ~As you wish, <SIRMAAM>. Like I promised, I'll have the robe ready for you in two days.~ */
  IF ~~ THEN DO ~TakePartyItem("m#wskin")
  		 TakePartyGold(3000)
  		 SetGlobal("M#RashrynMakingRobe","Locals",1)
  		 SetGlobalTimer("M#RashrynMakingRobeTime","Locals",7400)~ EXIT
END

IF ~~ THEN BEGIN RashrynH
  SAY @3311 /* @3311 = ~Excellent choice, <SIRMAAM>. Like I promised, I'll have the robe ready for you in two days.~ */
  IF ~~ THEN DO ~TakePartyItem("m#wskin")
  		 TakePartyItemNum("misc43",10)
  		 TakePartyGold(3000)
  		 SetGlobal("M#RashrynMakingRobe","Locals",1)
  		 SetGlobal("M#RashrynMakingJeweledRobe","Locals",1)
  		 SetGlobalTimer("M#RashrynMakingRobeTime","Locals",7400)~ EXIT
END

IF ~~ THEN BEGIN RashrynE1
  SAY @3312 /* @3312 = ~Yes, I so remember you, <SIRMAAM>. Have you thought about my offer? You will not find another tailor capable or willing to work with wyvern hide for 3000 gold pieces in Athkatla.~ */
  =
  @3313 /* @3313 = ~My offer for the ten emeralds is still on. They would ensure a measure of extra protection, very useful for an adventurous type like you, <SIRMAAM>.~ */
  IF ~~ THEN REPLY @3293 /* @3293 = ~No, I'm not interested. Perhaps some other time?~ */ GOTO RashrynA
  IF ~~ THEN REPLY @3294 /* @3294 = ~I don't think I can afford that much gold. Perhaps we can negotiate on the price?~ */ GOTO RashrynF
  IF ~PartyGoldGT(2999)
      NumItemsPartyGT("misc43",9)~ THEN REPLY @3305 /* @3305 = ~Sounds promising. I'll take your offer. Leave out the emeralds, though.~ */ GOTO RashrynG
  IF ~PartyGoldGT(2999)
      NumItemsPartyLT("misc43",10)~ THEN REPLY @3306 /* @3306 = ~I have the money but not the stones. I guess I'll just have to do without that extra enchantment.~ */ GOTO RashrynG
  IF ~PartyGoldGT(2999)
      NumItemsPartyGT("misc43",9)~ THEN REPLY @3307 /* @3307 = ~Sounds good. I have the money and the emeralds right here.~ */ GOTO RashrynH
  IF ~NumItemsPartyLT("misc43",10)~ THEN REPLY @3308 /* @3308 = ~I don't carry that many jewels on my person. I will be back later.~ */ GOTO RashrynA
END

// Items & objects: Key Ring, Book of Rings, Ymmyrt's map, Soul Machine, Window

BEGIN ~M#KRING~
IF ~True()~ THEN BEGIN 1
  SAY @3314 /* @3314 = ~You slip open the key ring, careful not to make a sound...~ */
  IF ~~ THEN DO ~StartStore("m#kring",LastTalkedToBy())~
  EXIT
END

BEGIN ~M#RINGB~
IF ~True()~ THEN BEGIN 1
  SAY @3315 /* @3315 = ~You silently unclasp the strap of the Book of Rings and open it...~ */
  IF ~~ THEN DO ~StartStore("m#ringb",LastTalkedToBy())~
  EXIT
END

BEGIN ~M#YMMAP~
IF ~!PartyHasItemIdentified("m#ymmap")~ THEN BEGIN NotIdentified
  SAY @3316 /* @3316 = ~No matter how hard you look at the map, you have no idea where the winding route indicated by it starts from. You will need to identify a familiar place on the map in order to use it.~ */
  IF ~~ THEN REPLY @3317 /* @3317 = ~(Leave the map alone for now.)~ */ EXIT
END

IF ~PartyHasItemIdentified("m#ymmap")
    AreaCheck("AR0400")~ THEN BEGIN Slums
  SAY @3318 /* @3318 = ~As you examine the map, you find the alley from which the winding route seems to start.~ */
  IF ~~ THEN REPLY @3319 /* @3319 = ~(Follow the route.)~ */ DO ~StartCutSceneMode()
                                             StartCutScene("m#ymcut")~ 
                                         EXIT
  IF ~~ THEN REPLY @3317 /* @3317 = ~(Leave the map alone for now.)~ */ EXIT
END

IF ~PartyHasItemIdentified("m#ymmap")
    !AreaCheck("AR0400")~ THEN BEGIN Elsewhere
  SAY @3320 /* @3320 = ~As you examine the map, it seems that the alley from which the winding route starts is located in the slums of Athkatla.~ */
  IF ~~ THEN REPLY @3317 /* @3317 = ~(Leave the map alone for now.)~ */ EXIT
END

BEGIN ~M#YMACRE~
IF ~True()~ THEN BEGIN Start
  SAY @3321 /* @3321 = ~(The main part of the strange-looking machine seems to be a large tank filled with some kind of dark green substance. The tank is connected by several thick tubes and wires to a pedestal, on which there is a socket of some kind, apparently made for holding a roughly spherical item the size of a large egg. There are also several dials and gauges on the pedestal, as well as a large switch.)~ */
  IF ~PartyHasItem("m#lsgem")
      !PartyHasItemIdentified("m#lsgem")~ THEN REPLY @3322 /* @3322 = ~(Place the green gem into the socket and flick the switch.)~ */ GOTO Green
  IF ~PartyHasItemIdentified("m#lsgem")~ THEN REPLY @3323 /* @3323 = ~(Place the soul gem of Lorraine's son into the socket and flick the switch.)~ */ GOTO Green
  IF ~PartyHasItem("m#rsgem")
    !PartyHasItemIdentified("m#rsgem")~ THEN REPLY @3324 /* @3324 = ~(Place the red gem into the socket and flick the switch.~ */ GOTO Red
  IF ~PartyHasItemIdentified("m#rsgem")~ THEN REPLY @3325 /* @3325 = ~(Place the red soul gem into the socket and flick the switch.)~ */ GOTO Red
  IF ~PartyHasItem("m#bsgem")
    !PartyHasItemIdentified("m#bsgem")~ THEN REPLY @3326 /* @3326 = ~(Place the black gem into the socket and flick the switch.)~ */ GOTO Black
  IF ~PartyHasItemIdentified("m#bsgem")~ THEN REPLY @3327 /* @3327 = ~(Place the black soul gem into the socket and flick the switch.)~ */ GOTO Black
  IF ~PartyHasItem("m#wsgem")
    !PartyHasItemIdentified("m#wsgem")~ THEN REPLY @3328 /* @3328 = ~(Place the white gem into the socket and flick the switch.)~ */ GOTO White
  IF ~PartyHasItemIdentified("m#wsgem")~ THEN REPLY @3329 /* @3329 = ~(Place the white soul into the socket and flick the switch.)~ */ GOTO White
  IF ~~ THEN REPLY @3330 /* @3330 = ~(Leave the machine alone for now.)~ */ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN Green
  SAY @3331 /* @3331 = ~(The machine begins to tremble and emit a low, vibrating hum as the green tank seems to come to life.)~ */
  IF ~~ THEN DO ~TakePartyItem("m#lsgem")
                 DestroyItem("m#lsgem")
                 SetGlobal("M#GreenGem","M#AR06",1)
                 AddExperienceParty(1000)
                 DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN Red
  SAY @3331 /* @3331 = ~(The machine begins to tremble and emit a low, vibrating hum as the green tank seems to come to life.)~ */
  IF ~~ THEN DO ~TakePartyItem("m#rsgem")
                 DestroyItem("m#rsgem")
                 SetGlobal("M#RedGem","M#AR06",1)
                 AddExperienceParty(1000)
                 DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN Black
  SAY @3331 /* @3331 = ~(The machine begins to tremble and emit a low, vibrating hum as the green tank seems to come to life.)~ */
  IF ~~ THEN DO ~TakePartyItem("m#bsgem")
                 DestroyItem("m#bsgem")
                 SetGlobal("M#BlackGem","M#AR06",1)
                 AddExperienceParty(1000)
                 DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN White
  SAY @3331 /* @3331 = ~(The machine begins to tremble and emit a low, vibrating hum as the green tank seems to come to life.)~ */
  IF ~~ THEN DO ~TakePartyItem("m#wsgem")
                 DestroyItem("m#wsgem")
                 SetGlobal("M#WhiteGem","M#AR06",1)
                 AddExperienceParty(1000)
                 DestroySelf()~ EXIT
END

BEGIN ~M#CLIMB2~
IF ~GlobalGT("M#AmberKidnap","GLOBAL",6)~ THEN BEGIN Climb
  SAY @3332 /* @3332 = ~(One of the second story windows overlooking the alley has been broken and a rope fashioned from bedsheets hangs down from it. If you wish, you could climb up to the window.)~ */
  IF ~CheckStatGT(LastTrigger(),13,DEX)
      CheckStatGT(LastTrigger(),13,STR)~ THEN REPLY @3333 /* @3333 = ~(Climb up to the window.)~ */ GOTO Succeed
  IF ~OR(2)
        CheckStatLT(LastTrigger(),14,DEX)
        CheckStatLT(LastTrigger(),14,STR)~ THEN REPLY @3333 /* @3333 = ~(Climb up to the window.)~ */ GOTO Fail
  IF ~~ THEN REPLY @3334 /* @3334 = ~Leave the rope alone.~ */ EXIT
END

IF ~~ THEN BEGIN Succeed
  SAY @3335 /* @3335 = ~(You deftly climb up the rope and help your comrades do the same.)~ */
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("m#ar05","",[362.303],14))
                 ActionOverride(Player2,LeaveAreaLUA("m#ar05","",[332.300],14))
                 ActionOverride(Player3,LeaveAreaLUA("m#ar05","",[365.283],14))
                 ActionOverride(Player4,LeaveAreaLUA("m#ar05","",[299.294],14))
                 ActionOverride(Player5,LeaveAreaLUA("m#ar05","",[321.280],14))
                 ActionOverride(Player6,LeaveAreaLUA("m#ar05","",[345.265],14))~
             EXIT
END

IF ~~ THEN BEGIN Fail
  SAY @3336 /* @3336 = ~(You try to climb up the rope, but when you are almost at the window, you slip and fall to the street.)~ */
  IF ~~ THEN DO ~ApplySpellRES("jwfall",LastTrigger())~
             EXIT
END