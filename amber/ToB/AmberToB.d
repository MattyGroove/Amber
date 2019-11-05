BEGIN M#AMB25J
BEGIN M#Jill
BEGIN BM#Amb25

// ________Kicked out in ToB___________
BEGIN M#AMB25P

IF WEIGHT #-7~Global("M#AmberJoined","GLOBAL",1) Global("InTob","GLOBAL",1) ~ THEN BEGIN T0
  SAY @5061 /* @5061 = ~What now? Are we going or not?~ */ 
IF ~~ THEN REPLY @5062 /* @5062 = ~I'm sorry Amber, but you have to leave.~ */ GOTO T1
IF ~~ THEN REPLY @5063 /* @5063 = ~Oh, never mind Amber. Let's get going.~ */ 
 DO ~ChangeAIScript("M#AmbeAI",CLASS)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN T1
SAY ~You want me to leave? Are you certain of this? This is unexpected after all we've been through together.~ 
IF ~~ THEN REPLY @5065 /* @5065 = ~I'm afraid so. Just wait here and I'll be back when I need you.~ */ GOTO T2
IF ~!AreaCheck("ar4500")~ THEN REPLY ~Yes, you have to leave for now. I will send you to wait at the pocket plane.~  GOTO T3
  IF ~~ THEN REPLY @5067 /* @5067 = ~What was I thinking? Of course I don't want you to leave.~ */ GOTO T4
END

IF ~~ THEN BEGIN T2
SAY ~I don't like this, you have no right to treat me like this, not after all I've done for you. If you ever came back here, I probably won't be here any more.~ 
IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN T3
SAY ~You send me to THAT place. Ha, you really think that's where I belong. You're so stupid...just like I was to ever believe in you.~ 
IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN T4
SAY @5070 /* @5070 = ~I thought so too.~ */
IF ~~ THEN DO ~ChangeAIScript("M#AmbeAI",CLASS)JoinParty()~ EXIT
END

// ______End for Kicked out in ToB________

// New ToB Player Dialogues

CHAIN
IF ~Global("M#Amb4500","ar4500",1)~THEN M#AMB25J newhome1
~I really thank you for bringing us to this...place. What is this?~
END
++~Well, I thought at least YOU feel at home in this environment.~ + newhome2
++~Bhaal wasn't really known for his interior design skills. We must come closer to him.~+ newhome2

CHAIN
IF ~~THEN M#AMB25J newhome2
~Oh, shut up, this joke is so far below your ususal low standards already (grins).~
=~Honestly, this place is made somehow from your subconsciousness. Whatever some may guess, it's nothing like anything I feel inside of ME.~
END
++~That's one thing we have in common. I don't like it here either. ~+ newhome3
++~I'm glad to hear that this place annoys you...I mean, eh, that your dream home is different from this.~+ newhome3
++~It's just a temporary thing, Amber, I promise we won't make this our permanent residence.~+ newhome3

CHAIN
IF ~~THEN M#AMB25J newhome3
~Then let's do what must be done to get over with all of this fast.~DO~SetGlobal("M#Amb4500","ar4500",2)~EXIT

//ToB Interjections

I_C_T botsmith 1 M#AmberCesp
==M#AMB25J IF~InParty("M#Amber")~THEN~Why do you look at me this way, creature?~
==botsmith IF~InParty("M#Amber")~THEN~Cespenar make good butler, what you do for great one?~
==M#AMB25J IF~InParty("M#Amber")~THEN~Great one, you mean <CHARNAME>? Butler? I'm surely not <PRO_HISHER> chambermaid!~
==botsmith IF~InParty("M#Amber")~THEN~Too bad, could need one around here. Much to clean up lately.~
END


//Her Mother

CHAIN
IF WEIGHT #-3~NumberOfTimesTalkedTo(0) InParty("M#Amber") Global("M#Ambparent","Global",0)~THEN Gorsuc01 Ambmo1
~Ahhh, look here, dear ladies. Yet another hapless wanderer drifting through these endless portals. Is it lost, do you think? Shall we ask it?~
DO~SetGlobal("M#Ambparent","Global",1)~
== IF_FILE_EXISTS C#Aja25J IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("C#AjantisGORSUC01_0","GLOBAL",0)~ THEN~Succubi! Tread with care, <CHARNAME>, as these evil creatures do not have good intentions, ever!~ DO~SetGlobal("C#AjantisGORSUC01_0","GLOBAL",1)~
== GORSUC01 IF ~!GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("B!KeldornRA","GLOBAL",1) GlobalGT("B!KelLT","GLOBAL",70)~ THEN ~And has it brought us a present? Why, yes! Such a fine, strong male, and so pure! Ha! If you knew how his heart burns for you... and his loins! You would not think him so pure then, would you, little mortal?~ 
== IF_FILE_EXISTS KELDO25J IF ~!GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("B!KeldornRA","GLOBAL",1) GlobalGT("B!KelLT","GLOBAL",70)~ THEN ~No! Do not listen, my friend! It is a demon of the Abyss! It lies!~
== GORSUC01 IF ~!GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("B!KeldornRA","GLOBAL",1) GlobalGT("B!KelLT","GLOBAL",70)~ THEN ~Tsk, tsk, you know your heart, paladin. But no matter. It is your leader who interests us.~ 
== GORSUC01 ~But wait..isn't that...familiar blood?~
== M#AMB25J ~What the hell...?~
== GORSUC01 ~Ha, who would have guessed I'd ever see you again, little one. Those dwellers of the Prime couldn't kill you, it seems. The blood of our kin is too strong.~
== M#AMB25J ~Creature - do you want to imply that I'm one of your kin?~
== GORSUC01 ~Your silly father would have called you *daughter*. You have my smell and his stink.~
== M#AMB25J ~You?...You are my mother?~
== GORSUC01 ~Pathetic half-breed, that's a word your father might have used, but not me. Proof me your worth, bastard, show us today which side of the Blood War you're on.~
== M#AMB25J ~I - I have no part in YOUR Blood War!~
== M#AMB25J IF~Global("M#AmberRomanceActive","GLOBAL",2)~THEN~We have no part in YOUR Blood War! (Her hand finds yours and her fingers entwine with yours.)~
== GORSUC01 ~Why does that not surprise me? Cadderly's blood was too weak. His arrogance to believe he could master and tame every hellish creature...laughable.~
=~Time to erase that proof of our errors. Ah! It is time for us to make sport, my alu-sisters! Come, let us dance!~DO~Enemy()~EXIT

//Her Father

CHAIN
IF ~Global("M#Ambparent","Global",2)~THEN M#AMB25J Caddy1
~So my father was a human called Cadderly.~
DO~SetGlobal("M#Ambparent","Global",3) RealSetGlobalTimer("M#ParentDel","LOCALS",1200)~
=~I somehow don't have the feeling that this changes anything for me. Strange, isn't it?~
END
++~I know who that is, Cadderly, I met him once at Candlekeep, a priest of Deneir.~ + Caddy2
++~There is a priest of Deneir by that name who built Spirit Soaring.~+ Caddy2
++~Maybe that's just how I'll feel once I find out about my mother.~EXIT

CHAIN
IF~~THEN M#AMB25J Caddy2
~His hunger for knowledge must have driven him a bit too far. Studying demons is one thing, but breeding with a succubus goes overboard. A fool the one, a killing beast the other -and here I am.~
END
++~You are neither the one nor the other. I am glad you ain't.~+ Caddy3
++~Heritage is a strange thing, believe me. Yours is surely not apparent.~+ Caddy3

CHAIN
IF~~THEN M#AMB25J Caddy3
~I don't think I have an urgent need to see my *father*. And my mother was a now dead succubus. I just can't get myself to feel sorry for her. Or maybe I should?~
=~Maybe, because she never had any choice to be different.~
END
++~But you have, Amber. Your blood does not rule you.~+ Caddy4
++~Do you have the strength to be different, Amber? Or is the fiendish heritage to win in the end?~+ Caddy4

CHAIN
IF~~THEN M#AMB25J Caddy4
~Ask yourself, <CHARNAME>. What will win the upper hand in you in the end?~EXIT

//Wraith

INTERJECT HGWRA01 18 M#AmbJill
== HGWRA01 IF ~InParty("M#Amber")~ THEN~You already walk in the hellish company that reflects your murderous blood! (His fingers darts out at Amber.)~
== M#AMB25J IF ~InParty("M#Amber")~ THEN~You are more a fiend than I am, whatever your true nature may be.~
== HGWRA01 IF ~InParty("M#Amber")~ THEN~And she will betray you, <CHARNAME>, like she always betrays those who trust her.~DO~ClearAllActions() StartCutSceneMode() StartCutScene("M#Jill")~EXIT

CHAIN
IF~NumberOfTimesTalkedTo(0)~THEN M#Jill WraJillTlk
~How could I ever have called you my friend, Amber?~
== M#AMB25J ~What do you mean, Jill? You are dead, long dead - you died some time after we were separated.~
== M#Jill ~Is that the lie you tell yourself, Amber? Is that the lie you tell <PRO_HIMHER>? I died because you left me dying.~
== M#AMB25J ~<CHARNAME>, that is a lie! This is a game of whoever your *Gorion* really is. Tristan told me all about her end. It was a disease that killed  many in Luskan at that time. Her death has nothing to do with me.~
== M#Jill ~It was your curse that brought the disease, it was your wrath and lust for revenge.~DO~DestroySelf()~
== M#AMB25J ~I don't even have such powers and you would know that if you were really Jill or her ghost. Begone, apparition!~EXTERN HGWRA01 18

CHAIN
IF~Global("M#AmbJill","GLOBAL",2)~THEN M#AMB25J AmbJill2
~That false Gorion was right, <CHARNAME>.~
DO~SetGlobal("M#AmbJill","GLOBAL",3)~
=~I always felt my guilt when it comes to Jill's death.~
END
++~What do you mean?~+ AmbJill3
++~What? You mean about killing your former best friend?~+ AmbJill3
++~This is morbid pondering, Amber, stop it already.~EXIT

CHAIN
IF~~THEN M#AMB25J AmbJill3
~The ghost knew about Jill's death and the disease. Yes, she died and many died with her. He must have sensed my feelings about those events. I did not even have a chance to mourn for her and I learned about her fate only much later from Tristan.~
END
++ ~(Nod and let her go on.)~+ AmbJill4
++ ~You were not there to care for her, you must have had your reason.~+ AmbJill4

CHAIN
IF~~THEN M#AMB25J AmbJill4
~I was not by her side. Not that I'm a healer or could have done more than to accompany her last hours. I wish I could have. I was running for my life instead.~
=~You're learning it now, being hunted because you are bhaalspawn. I learned it then. The angry mob needed a scapegoat when the disease took its toll. Helplessness creates anger. Red haired witches, creatures of omnious origin, you know well whom they blame for disaster.~
END
++~You have again chosen the wrong company for a quiet life, it seems.~ + AmbJill5

CHAIN
IF~~THEN M#AMB25J AmbJill5
~I have chosesn exactly the right company, <CHARNAME>. We both understand what it means never to belong to *them*. That's why we belong together.~EXIT

//Volo

EXTEND_TOP SARVOLO 9
+ ~InParty("M#Amber") InMyArea("M#Amber") !StateCheck("M#Amber",CD_STATE_NOTVALID) ~ + ~What news do you have about a tiefling named Amber?~ + M#AmberVoloBio
END

CHAIN 
IF~~THEN SARVOLO M#AmberVoloBio
~You mean the red haired beauty with the shining eyes standing right next to you?~
== M#AMB25J IF ~InParty("M#Amber") InMyArea("M#Amber") !StateCheck("M#Amber",CD_STATE_NOTVALID)~ THEN ~We never met, bard, how do you know it's me?~
== Sarvolo IF ~InParty("M#Amber") InMyArea("M#Amber") !StateCheck("M#Amber",CD_STATE_NOTVALID)~ THEN ~A creature of such interesting heritage and equally interesting destiny cannot escape the chronicler, and the description given can hardly be mistaken when one faces the original. Just like our bhaalspawn here, you left your origin far behind you, much farther than you think. And your future will bear no stain of it.~
== M#AMB25J IF ~InParty("M#Amber") InMyArea("M#Amber") !StateCheck("M#Amber",CD_STATE_NOTVALID)~ THEN ~If that is true, I'm content and need not hear more. I'd rather live my life than to follow some already written story.~EXTERN SARVOLO 9


