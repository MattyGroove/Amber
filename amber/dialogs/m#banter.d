//Amber's banters with NPCs go here
// CONTENTS:
// Underdark:  Viconia, Imoen, Haer'Dalis, Keldorn, Cernd, Jan, Anomen, Aerie, Edwin, Minsc, Nalia, Korgan
// 0 Scripted banter: Imoen, HD & Vic
// 1 Yoshimo, Aerie, Anomen, Cernd, Edwin, Haer'Dalis, Imoen, Jaheira, Jan, Keldorn, Korgan, Mazzy, Minsc, Nalia, Valygar, Viconia
// 2 Yoshimo, Aerie, Anomen, Cernd, Edwin, Haer'Dalis, Imoen, Jaheira, Jan, Keldorn, Korgan, Mazzy, Minsc, Nalia, Valygar, Viconia
// 3 Aerie, Cernd, Mazzy, Valygar

CHAIN
IF ~InParty("Viconia")
    See("Viconia")
    !StateCheck("Viconia",STATE_SLEEPING)
    !StateCheck("Viconia",STATE_HELPLESS)
    !StateCheck("Viconia",STATE_STUNNED)
    !StateCheck("Viconia",STATE_SILENCED)
    Global("M#AmberDrowTalkMorningAfter","Locals",1)~ THEN BM#AMBER DrowTalkMorningAfter
@1000 /* @1000 = ~What's it with the grin, Viconia?~ */
DO ~SetGlobal("M#AmberDrowTalkMorningAfter","Locals",2)~
== BVICONI
@1001 /* @1001 = ~Amber dear, you truly surprise me. One could *almost* have taken you for a real drow. In order to be truly convincing, however, you would have needed the sound of a whip to accentuate those moans coming from your bedchamber.~ */
=
@1002 /* @1002 = ~Or perhaps I should teach you how to perform the 'spider's kiss' on your favourite male.~ */
== BM#AMBER
@1003 /* @1003 = ~The spider's kiss, eh? I don't think I even want to know what that means.~ */
=
@1004 /* @1004 = ~You can sweet talk all you want, Viconia, but I can see that you are up to no good, as usual. I cannot wait to get rid of this wretched form. It gives me quiet pleasure to know that you, on the other hand, will be stuck with it for the rest of your sorry life.~ */
== BVICONI
@1005 /* @1005 = ~The pleasure is entirely mine, for I can't wait for you to cease demeaning the language of my people with your insolent babbling.~ */
EXIT 

BEGIN ~BM#AMBER~

// Underdark:  Viconia, Imoen, Haer'Dalis, Keldorn, Cernd, Jan, Anomen, Aerie, Edwin, Minsc, Nalia, Korgan

IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
!StateCheck("Viconia",STATE_HELPLESS)
!StateCheck("Viconia",STATE_STUNNED)
!StateCheck("Viconia",STATE_SILENCED)
Global("M#AmberViconiaBanterUD","Locals",1)~ THEN BEGIN AmberViconiaBanterUD
  SAY @1006 /* @1006 = ~So, now we are on your territory, drow. You must be enjoying this like nothing else - I bet you were already feeling homesick.~ */ 
  IF ~~ THEN DO ~SetGlobal("M#AmberViconiaBanterUD","Locals",2)
   		 SetGlobal("M#AmberUnderdarkBanter","Locals",2)~ EXTERN BVICONI M#AmberViconiaBanterUD1
END

IF ~~ THEN BEGIN AmberViconiaBanterUD2
  SAY @1007 /* @1007 = ~But how could you not miss this place? Dark, damp and disgusting... There's no place like home, is there? And don't forget the endless possibilities for a gruesome death that lurk behind every rock and corner.~ */
  IF ~~ THEN EXTERN BVICONI M#AmberViconiaBanterUD3
END

IF ~~ THEN BEGIN AmberViconiaBanterUD4
  SAY @1008 /* @1008 = ~You think you're so clever, but I bet tha-~ */
  IF ~~ THEN REPLY @1009 /* @1009 = ~Hsssh! Both of you. This is not the place for that. Now be quiet or we'll all end up dead.~ */ EXTERN BVICONI M#AmberViconiaBanterUD5
  IF ~~ THEN REPLY @1010 /* @1010 = ~Could you guys shout just a little louder? I think there might still be something lurking at the other end of this cavern that couldn't quite hear what you were saying.~ */ EXTERN BVICONI M#AmberViconiaBanterUD5
END

IF ~~ THEN BEGIN AmberViconiaBanterUD6
  SAY @1011 /* @1011 = ~Well, your *presence* certainly doesn't help.~ */
  IF ~~ THEN EXTERN BVICONI M#AmberViconiaBanterUD7
  IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN EXTERN BVICONI M#AmberViconiaBanterUD7b
END

IF ~~ THEN BEGIN AmberViconiaBanterUD8
  SAY @1012 /* @1012 = ~I couldn't care less what your people think about us, Viconia. Besides, I've seen much worse.~ */
  IF ~~ THEN EXTERN BVICONI M#AmberViconiaBanterUD9
  IF ~Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN EXTERN BVICONI M#AmberViconiaBanterUD9b
END

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!StateCheck("Imoen2",STATE_HELPLESS)
!StateCheck("Imoen2",STATE_STUNNED)
!StateCheck("Imoen2",STATE_SILENCED)
Global("M#AmberImoenBanterUD","Locals",1)~ THEN BM#AMBER AmberImoenBanterUD
@1013 /* @1013 = ~Is there something wrong, Imoen? You look pale.~ */
DO ~SetGlobal("M#AmberImoenBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== IMOEN2J
@1014 /* @1014 = ~This place gives me creeps. It seems that there is always something moving just out of the corner of your eye, if you get my meaning.~ */
== BM#AMBER
@1015 /* @1015 = ~I know what you mean. I hope that <CHARNAME> will lead us away from here as soon as possible.~ */
EXIT

CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
!StateCheck("HaerDalis",STATE_HELPLESS)
!StateCheck("HaerDalis",STATE_STUNNED)
!StateCheck("HaerDalis",STATE_SILENCED)
Global("M#AmberHaerDalisBanterUD","Locals",1)~ THEN BM#AMBER AmberHaerDalisBanterUD
@1016 /* @1016 = ~(Amber sighs heavyly.)~ */
DO ~SetGlobal("M#AmberHaerDalisBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BHAERDA
@1017 /* @1017 = ~Do not worry my angel - I will keep a sharp eye for anything that might seek to harm you in this fell pit of darkness.~ */
== BM#AMBER
@1018 /* @1018 = ~Hey! Keep that arm off my shoulders! I am not some silly child who is afraid of the dark.~ */
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
!StateCheck("Keldorn",STATE_HELPLESS)
!StateCheck("Keldorn",STATE_STUNNED)
!StateCheck("Keldorn",STATE_SILENCED)
Global("M#AmberKeldornBanterUD","Locals",1)~ THEN BM#AMBER AmberKeldornBanterUD
@1019 /* @1019 = ~Well, this must be one of the few places where I'm glad to have you around me, old tinhead.~ */
DO ~SetGlobal("M#AmberKeldornBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BKELDOR
@1020 /* @1020 = ~As little as I appreciate you calling me a tinhead, I suppose it was as much of a compliment as I can ever expect from you, Amber.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
!StateCheck("Cernd",STATE_HELPLESS)
!StateCheck("Cernd",STATE_STUNNED)
!StateCheck("Cernd",STATE_SILENCED)
Global("M#AmberCerndBanterUD","Locals",1)~ THEN BM#AMBER AmberCerndBanterUD
@1021 /* @1021 = ~I'm afraid your woodsman's skills are of little use here, Cernd.~ */
DO ~SetGlobal("M#AmberCerndBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BCERND
@1022 /* @1022 = ~Despair not, little sister. Darkness may weigh heavily on our shoulders, but let it not darken our hearts.~ */
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
!StateCheck("Jan",STATE_HELPLESS)
!StateCheck("Jan",STATE_STUNNED)
!StateCheck("Jan",STATE_SILENCED)
Global("M#AmberJanBanterUD","Locals",1)~ THEN BM#AMBER AmberJanBanterUD
@1023 /* @1023 = ~Why such a long face, Jan?~ */
DO ~SetGlobal("M#AmberJanBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BJAN
@1024 /* @1024 = ~I certainly did not expect to end my days in such company, Amber.~ */
== BM#AMBER
@1025 /* @1025 = ~End your days? You are certain that we will perish, then?~ */
== BJAN
@1026 /* @1026 = ~Oh? Quite certain, actually. And I am almost certain that it will be the most vile, gruesome, agonising death you can imagine, too.~ */
== BM#AMBER
@1027 /* @1027 = ~You are joking again, Jan... Right?~ */
== BJAN
@1028 /* @1028 = ~No, no, no. I am dead serious. I always am.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
!StateCheck("Anomen",STATE_HELPLESS)
!StateCheck("Anomen",STATE_STUNNED)
!StateCheck("Anomen",STATE_SILENCED)
Global("M#AmberAnomenBanterUD","Locals",1)~ THEN BM#AMBER AmberAnomenBanterUD
@1029 /* @1029 = ~Not feeling so brave now, Anomen?~ */
DO ~SetGlobal("M#AmberAnomenBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BANOMEN
@1030 /* @1030 = ~Bah! Only a child would be afraid of the dark. This is definitely not the first dungeon I have been in, nor shall it be the last.~ */
== BM#AMBER
@1031 /* @1031 = ~Only a true fool would not be concerned about venturing into the Underdark. It's not just some common orc hole, you know.~ */
== BANOMEN
@1032 /* @1032 = ~I can smell your fear, tiefling. Fall back and let the more capable lead on.~ */
== BM#AMBER
@1033 /* @1033 = ~As long as I'm not downwind from you, it's fine by me.~ */
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
!StateCheck("Aerie",STATE_HELPLESS)
!StateCheck("Aerie",STATE_STUNNED)
!StateCheck("Aerie",STATE_SILENCED)
Global("M#AmberAerieBanterUD","Locals",1)~ THEN BM#AMBER AmberAerieBanterUD
@1034 /* @1034 = ~Hey! Watch it, Aerie! You shouldn't be bumping into me like that, at least not when I'm carrying a sharp blade.~ */
DO ~SetGlobal("M#AmberAerieBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BAERIE
@1035 /* @1035 = ~I-I think I saw something moving in the shadows!~ */
== BM#AMBER
@1036 /* @1036 = ~It was probably just a flicker of torchlight.~ */
=
@1037 /* @1037 = ~At least I hope so.~ */
== BAERIE
@1038 /* @1038 = ~I-I don't know how much longer I can t-take this. I know I should be brave, but i-it's just so creepy here and... And I'm scared!~ */
== BM#AMBER
@1039 /* @1039 = ~Here, take hold of my hand if it makes you feel better, but do keep a spell ready - there *will* be trouble in a place like this.~ */
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
!StateCheck("Edwin",STATE_HELPLESS)
!StateCheck("Edwin",STATE_STUNNED)
!StateCheck("Edwin",STATE_SILENCED)
Global("M#AmberEdwinBanterUD","Locals",1)~ THEN BM#AMBER AmberEdwinBanterUD
@1040 /* @1040 = ~So... Um... Edwin. Would you not think that now would be a good time to cast an illuminating spell?~ */
DO ~SetGlobal("M#AmberEdwinBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BEDWIN
@1041 /* @1041 = ~Hmph. (And now the fiendling wishes me to light a candle to ward away her fear of the dark. Edwin, do this. Edwin, do that. Nauseating.) Such minor tasks are far beneath my talents. Now scurry along, little beast, and leave me be.~ */
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
!StateCheck("Minsc",STATE_HELPLESS)
!StateCheck("Minsc",STATE_STUNNED)
!StateCheck("Minsc",STATE_SILENCED)
Global("M#AmberMinscBanterUD","Locals",1)~ THEN BM#AMBER AmberMinscBanterUD
@1042 /* @1042 = ~Your fearlessness must truly be boundless, Minsc. You don't seem the slightest bit worried.~ */
DO ~SetGlobal("M#AmberMinscBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BMINSC
@1043 /* @1043 = ~Fear you not! Minsc and Boo will see that no harm comes to Amber or our other little friends!~ */
=
@1044 /* @1044 = ~Yes! Minsc and Boo will surely smite evil. And smite it hard, too! RRRRAAAAAAGH!~ */
== BM#AMBER
@1045 /* @1045 = ~Uh... Perhaps you would still want to keep it down a bit, Minsc. We'd rather smite all the evils that lurks here one by one, not all at once, don't you think?~ */
== BMINSC
@1046 /* @1046 = ~Oh? One by one? Minsc does not quite see the fun in that, but if pretty Amber insists.~ */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
!StateCheck("Nalia",STATE_HELPLESS)
!StateCheck("Nalia",STATE_STUNNED)
!StateCheck("Nalia",STATE_SILENCED)
Global("M#AmberNaliaBanterUD","Locals",1)~ THEN BM#AMBER AmberNaliaBanterUD
@1047 /* @1047 = ~I think we just became the unfortunate that you so avidly seek to help, Nalia.~ */
DO ~SetGlobal("M#AmberNaliaBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BNALIA
@1048 /* @1048 = ~You just might be right, Amber. This must be the most wicked pit of darkness there ever was.~ */
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
!StateCheck("Korgan",STATE_HELPLESS)
!StateCheck("Korgan",STATE_STUNNED)
!StateCheck("Korgan",STATE_SILENCED)
Global("M#AmberKorganBanterUD","Locals",1)~ THEN BM#AMBER AmberKorganBanterUD
@1049 /* @1049 = ~What are you staring at, dwarf?~ */
DO ~SetGlobal("M#AmberKorganBanterUD","Locals",2)
    SetGlobal("M#AmberUnderdarkBanter","Locals",2)~
== BKORGAN
@1050 /* @1050 = ~Just enjoyin' the sight of yer smartass mouth being shut for once. Not feelin' so chatty now, huh kitten? Feel ya the darkness just a little bit too 'eavy for yer tastes?~ */
== BM#AMBER
@1051 /* @1051 = ~You are *really* enjoying all of this, aren't you?~ */
EXIT

//0 Scripted banter: Imoen, HD & Vic

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberImoenTalk","GLOBAL",1)~ THEN IMOEN2J AmberImoenTalk1
@1052 /* @1052 = ~So, Amber, what is it that you see with those weird eyes of yours?~ */
DO ~SetGlobal("M#AmberImoenTalk","GLOBAL",2)
RealSetGlobalTimer("M#AmberImoenTalkTime","GLOBAL",2000)~
== BM#AMBER
@1053 /* @1053 = ~Well, what do you think, girl? Right now the only thing I see is frogs jumping out of your mouth.~ */
== IMOEN2J
@1054 /* @1054 = ~Hey, no need to get so agitated. I didn't mean it in a bad way.~ */
== BM#AMBER
@1055 /* @1055 = ~Well, you sure managed to make it sound like you did.~ */
== IMOEN2J
@1056 /* @1056 = ~A bit touchy are we? But anyway, what I really meant to ask was whether you could perhaps see real well in the dark or something - like cats do. Just because, you know, you do move really cat-like and it would sort of fit in the picture. And that was meant as a compliment, by the way.~ */
== BM#AMBER
@1057 /* @1057 = ~Yes, you could say that I can find my way around even after sunset. I'm sorry that I snapped at you... I'm just not used to people asking such questions out of sincere curiosity.~ */
== IMOEN2J
@1058 /* @1058 = ~No harm done, don't you worry. And the next time some moron fires a stupid question at you - like what's with the odd hair colour - just answer them with an equally stupid answer.~ */
== BM#AMBER
@1059 /* @1059 = ~So, what *is* it with that hair of yours, anyway?~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberImoenTalk","GLOBAL",3)~ THEN IMOEN2J AmberImoenTalk2
@1060 /* @1060 = ~Amber, you said that you were in a circus once - Amazing Fabrizio's something? Somewhere up north? Why did you leave? Were they treating you badly?~ */
DO ~SetGlobal("M#AmberImoenTalk","GLOBAL",4)
RealSetGlobalTimer("M#AmberImoenTalkTime","GLOBAL",2000)~
== BM#AMBER
@1061 /* @1061 = ~No, I actually liked it there - Amazing Fabrizio's Circus of Miraculous Oddities was the closest thing to a real home I've ever had. When I was flying trough the air from trapeze to trapeze or walking the tightrope, I felt so free and...~ */
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN
@1062 /* @1062 = ~It-it has nothing to do with flying - being a trapeze artist. You couldn't... There is no way that you could have any idea of the feeling of freedom flying can give you.~ */
== BM#AMBER IF ~IsValidForPartyDialog("Aerie")~ THEN
@1063 /* @1063 = ~Aerie, it is not my fault that you lost your wings. It was not even the same circus.~ */
== IMOEN2J IF ~IsValidForPartyDialog("Aerie")~ THEN
@1064 /* @1064 = ~Hey, Aerie, perhaps you should try it sometime if you haven't yet. It's not like you're afraid of heights or anything. Anyway, Amber, you were telling me about flying through the air.~ */
== BM#AMBER IF ~!IsValidForPartyDialog("Aerie")~ THEN
@1065 /* @1065 = ~...I just cannot describe it in a way that would do it any justice. ~ */
== BM#AMBER
@1066 /* @1066 = ~The owner and ringmaster of the circus, Old Fabrizio, was a kind man... but he... he died. His nephew, Bruno, was very different from his uncle; he thought that being the owner granted him all sorts of liberties. For some reason he fancied me and when I turned him down, he kicked me out.~ */
== IMOEN2J
@1067 /* @1067 = ~That's awful. I hope you broke his nose!~ */
== BM#AMBER
@1068 /* @1068 = ~No, but I gave him a sting he would never forget. Ever. My trapeze partner, Sasha... he offered to come with me but I told him not to.~ */
= @1069 /* @1069 = ~A few years later I heard that he had fallen. His new partner's grip had slipped, and we never used a net... I miss him, but I don't think that he would've been happy away from the circus, so maybe it was for the best. He knew the dangers, after all, and he died doing what he loved most.~ */
== IMOEN2J
@1070 /* @1070 = ~But could you not have taken him to another circus with you?~ */
== BM#AMBER
@1071 /* @1071 = ~No, that part of my life was over. And besides, circuses are like families - or at least the ones worth belonging to are. You can't just march into one.~ */
DO ~SetGlobal("M#CircusTalk","Locals",1)
    IncrementGlobal("M#SashaTalk","Locals",1)~
EXIT

CHAIN
IF ~InParty("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!StateCheck("Imoen2",STATE_HELPLESS)
!StateCheck("Imoen2",STATE_STUNNED)
!StateCheck("Imoen2",STATE_SILENCED)
Global("M#AmberImoenTalk","GLOBAL",5)~ THEN BM#AMBER AmberImoenTalk3
@1072 /* @1072 = ~Imoen?~ */
DO ~SetGlobal("M#AmberImoenTalk","GLOBAL",6)
RealSetGlobalTimer("M#AmberImoenTalkTime","GLOBAL",2000)~
== IMOEN2J
@1073 /* @1073 = ~Heya! What's up Amber?~ */
== BM#AMBER
@1074 /* @1074 = ~What was it that happened in Irenicus' dungeon? Or in Spellhold? You never talk about it, but every time someone mentions Irenicus or Bodhi you get that look in your eyes...~ */
== IMOEN2J
@1075 /* @1075 = ~Well, I just hate being locked up... I bet you can understand that, Amber. I don't really feel like digging into those memories right now. It's rather dull and uninteresting anyway. Let's figure out something else to do, instead.~ */
== BM#AMBER
@1076 /* @1076 = ~As you wish.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberImoenTalk","GLOBAL",7)~ THEN IMOEN2J AmberImoenTalk4
@1077 /* @1077 = ~Hey! I thought I just saw one of your tattoos move!~ */
DO ~SetGlobal("M#AmberImoenTalk","GLOBAL",8)
RealSetGlobalTimer("M#AmberImoenTalkTime","GLOBAL",2000)~
== BM#AMBER
@1078 /* @1078 = ~(Amber smiles.) They're not really tattoos, Imoen, but yes, they do tend to move from time to time. They are a 'gift' from my ancestors, no doubt.~ */
== IMOEN2J
@1079 /* @1079 = ~Wow! I wish I was a fortune teller or a mystic so that I could predict some wonderful future for you by exploring your skin!~ */
== BM#AMBER
@1080 /* @1080 = ~You wish to explore my skin? My, my, what a tempting thought...~ */
== IMOEN2J
@1081 /* @1081 = ~You *do* know that you're horribly wicked, don't you, Amber?~ */
== BM#AMBER
@1082 /* @1082 = ~I know, my friend, I know. And I'm enjoying every moment of it.~ */
== IMOEN2J
@1083 /* @1083 = ~Well, if you're not careful enough I just might do it!~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberImoenTalk","GLOBAL",9)~ THEN IMOEN2J AmberImoenTalk5
@1084 /* @1084 = ~Hey, Amber what do you want to be when you grow up?~ */
DO ~SetGlobal("M#AmberImoenTalk","GLOBAL",10)
RealSetGlobalTimer("M#AmberImoenTalkTime","GLOBAL",2000)~
== BM#AMBER
@1085 /* @1085 = ~Are you subtly insinuating that there is something lacking in my stature?~ */
== IMOEN2J
@1086 /* @1086 = ~Well, let's just say that there is no hope for you being known as the tallest bearded woman in Amn, if you're that skimpy.~ */
== BM#AMBER
@1087 /* @1087 = ~Imoen, aren't you forgetting something?~ */
== IMOEN2J
@1088 /* @1088 = ~Me? Forgetting? Be gone with such false accusations!~ */
== BM#AMBER
@1089 /* @1089 = ~I think you are overlooking the fact that being known as the tallest bearded woman in Amn would require me to actually be able to grow a beard.~ */
== IMOEN2J
@1090 /* @1090 = ~Well, then it's about time for you to start considering other career options. You have already been an adventurer in the world's second coolest adventuring party, a circus star, a potential witch - at least a few times - and now you're in the greatest and coolest adventuring party ever. What's next?~ */
== BM#AMBER
@1091 /* @1091 = ~Hah-ha! It sure does seem that there is no way to go but down. But...~ */
= @1092 /* @1092 = ~After this ends... I-I...~ */
== IMOEN2J
@1093 /* @1093 = ~W-What? Did I say something funny - or something not funny? Why are you all pale and quiet suddenly?~ */
== BM#AMBER
@1094 /* @1094 = ~Hush, Imoen - it's nothing. Come on, we should get going.~ */
EXIT

CHAIN
IF ~Global("M#AmberImoenBanter","GLOBAL",1)
InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)~ THEN IMOEN2J AmberImoenBanter
@1095 /* @1095 = ~So, you're now together with my brother, eh?~ */
DO ~SetGlobal("M#AmberImoenBanter","GLOBAL",2)~
== BM#AMBER
@1096 /* @1096 = ~If you mean that we're sleeping together, then yeah, we're together.~ */
== IMOEN2J
@1097 /* @1097 = ~You're saying that it's just sex and nothing more?~ */
== BM#AMBER
@1098 /* @1098 = ~No, Imoen for my part it isn't. I... I love <CHARNAME>, but I'm not certain how he feels.~ */
== IMOEN2J
@1099 /* @1099 = ~I'm sure he loves you too. He can just be such a jackass sometimes. He might not realise that he should actually get around to saying it. Come on girl, I'll give you a hug to feel better.~ */
= @1100 /* @1100 = ~Wow, you're hot!~ */
== BM#AMBER
@1101 /* @1101 = ~(Amber giggles mischievously.) So, you think I'm hot? Well, you're not so bad yourself, either.~ */
== IMOEN2J
@1102 /* @1102 = ~Well thank you! But what *is* the matter with you? You're not sick, are you?~ */
== BM#AMBER
@1103 /* @1103 = ~No, I'm perfectly fine. It's just the little demon inside me that causes me to run slightly hotter than you 'normal' people.~ */
== IMOEN2J
@1104 /* @1104 = ~Well, you can hardly consider anyone in this party 'normal', if you get my meaning.~ */
== BM#AMBER
@1105 /* @1105 = ~But we should probably get our pretty asses going - I think <CHARNAME> is getting impatient. He's tapping his foot again.~ */
EXIT

CHAIN
IF WEIGHT #12 ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberHaerDalisTalk","GLOBAL",1)~ THEN BHAERDA AmberHaerDalisTalk1
@1106 /* @1106 = ~Ah, my fiery angel. This sparrow apologises that he has not yet introduced himself properly. My name is Haer'Dalis - bard, blade and planewalker - and it is a sweet pleasure to meet you.~ */
DO ~SetGlobal("M#AmberHaerDalisTalk","GLOBAL",2) 
    RealSetGlobalTimer("M#AmberHaerDalisTalkTime","GLOBAL",3000)~
== BM#AMBER
@1107 /* @1107 = ~My name is Amber, no silly epithets, and I am not sure if I am equally pleased... I am hardly an angel, and you should know better than to mock me so.~ */
== BHAERDA
@1108 /* @1108 = ~I sense anger in you, my hummingbird. May this humble bard inquire the reason for your sudden irascibility?~ */
== BM#AMBER
@1109 /* @1109 = ~No, you may not.~ */
EXIT

CHAIN
IF WEIGHT #12 ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberHaerDalisTalk","GLOBAL",3)~ THEN BHAERDA AmberHaerDalisTalk2
@1110 /* @1110 = ~Our kin rarely cross paths while walking among primes - certainly there must be some greater meaning in ours thus entwining, my sweet hummingbird. The very moment this bard laid eyes upon you, he knew that you would have a major role in the play that makes up the life of this sparrow.~ */
DO ~SetGlobal("M#AmberHaerDalisTalk","GLOBAL",4) 
    RealSetGlobalTimer("M#AmberHaerDalisTalkTime","GLOBAL",3000)~
== BM#AMBER
@1111 /* @1111 = ~Not a big believer in coincidence, are you? Tell me, Haer'Dalis, is there a point to all this chatter?~ */
== BHAERDA
@1112 /* @1112 = ~Ah, I see that you are one who wishes to jump straight to the final page of the book, my impatient angel. That is not the way stories are told. Nay, the second act can never come afore the first.~ */
EXIT

CHAIN
IF WEIGHT #12 ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberHaerDalisTalk","GLOBAL",5)~ THEN BHAERDA AmberHaerDalisTalk3
@1113 /* @1113 = ~You look disheartened, my dashing hummingbird. Perhaps a poem by this sparrow would lighten your spirits?~ */
= @1114 /* @1114 = ~"Now therefore, while the youthful hue
Sits on thy skin like morning dew,
And while thy willing soul transpires
At every pore with instant fires,
Now let us sport us while we may,
And now, like amorous birds of prey,
Rather at once our time devour
Than languish in his slow-chapped power."~ */
= @1115 /* @1115 = ~"Let us roll all our strength and all
Our sweetness up into one ball,
And tear our pleasures with rough strife
Thorough the iron gates of life:
Thus, though we cannot make our sun
Stand still, yet we will make him run."~ */
DO ~SetGlobal("M#AmberHaerDalisTalk","GLOBAL",6) 
    RealSetGlobalTimer("M#AmberHaerDalisTalkTime","GLOBAL",3000)~
== BM#AMBER
@1116 /* @1116 = ~(Amber sighs, rubbing at her temples as if to ward off this sudden flow of gallantry.)~ */
== BHAERDA
@1117 /* @1117 = ~It saddens this poet's heart that you are not talking to me, my lovely hummingbird. Would you not bare your soul to me and tell me what ails you?~ */
== BM#AMBER 
@1118 /* @1118 = ~Look, Haer'Dalis or sparrow or whatever... First of all, I do have a proper name and I would like you to use it instead of those silly pet names you are making up.~ */
=
@1119 /* @1119 = ~Secondly, your words and poems are pretty, but that is all they are: pretty words without meaning. Were you to put your heart and soul into them, I might listen, but as long as they remain as empty as they are, I will not.~ */
== BM#AMBER
IF ~Global("HarDalisRomanceActive","GLOBAL",1)
    InParty("Aerie")~ THEN 
@1120 /* @1120 = ~Maybe your rhymings can impress young Aerie here, but they hardly manage to dazzle me. Besides, the lack of any moral backbone you display by coming here and sweet talking to me, while a moment ago it was all about your mourning dove, just makes me sick.~ */
== BM#AMBER
@1121 /* @1121 = ~Please leave me alone, I do not care for your idle words.~ */
== BHAERDA
@1122 /* @1122 = ~My fiery hummingbird - I will do as you ask and leave you for now. But know that you are wrong: the heart and soul of this poet is ever embedded within his words. Never are my words empty or bereft of meaning.~ */
EXIT

CHAIN
IF ~InParty("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
!StateCheck("HaerDalis",STATE_HELPLESS)
!StateCheck("HaerDalis",STATE_STUNNED)
!StateCheck("HaerDalis",STATE_SILENCED)
Global("M#AmberHaerDalisTalk","GLOBAL",7)~ THEN BM#AMBER AmberHaerDalisTalk4
@1123 /* @1123 = ~Haer'Dalis, I wish to apologise for my earlier behaviour - I might have been a little too harsh on you. You must understand, however, that I do not want to hear any mush or sweet talk from you.~ */
= @1124 /* @1124 = ~No poems, pet names or any nonsense like that, and if you manage to keep your hands to yourself, I might even consider some day calling you my friend in addition to this apology.~ */
= @1125 /* @1125 = ~Am I making myself clear here?~ */
DO ~SetGlobal("M#AmberHaerDalisTalk","GLOBAL",8)
    IncrementGlobal("M#HaerTalk","Locals",1)~
== BHAERDA
@1126 /* @1126 = ~Ah... Coming from your tender lips, that apology is most welcome, my...eh...Amber. Nothing would make this sparrow more joyous than having the privilege to call you a friend, my hummingbird.~ */
== BM#AMBER
@1127 /* @1127 = ~I guess that you are just incurable. I will let it slide this time, but don't push it.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberViconiaTalk","GLOBAL",1)~ THEN VICONIJ AmberViconiaTalk1
@1128 /* @1128 = ~I have been watching you during the time we have spent in this group together, and I must admit that you are nimbler and more cunning than I gave you credit for, little redhead.~ */
=
@1129 /* @1129 = ~But there is one thing I cannot help wondering. Why are you always so frightened, little vixen?~ */
DO ~SetGlobal("M#AmberViconiaTalk","GLOBAL",2) 
    RealSetGlobalTimer("M#AmberViconiaTalkTime","GLOBAL",3500)~
== M#AMBERN
@1130 /* @1130 = ~I have no idea what you're talking about, drow.~ */
DO ~SetDialog("m#amberj")~
== VICONIJ
@1131 /* @1131 = ~Yes you do. You pretend to be so bold and fearless, but I can see right through your pretty little act.~ */
EXIT

CHAIN
IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
!StateCheck("Viconia",STATE_HELPLESS)
!StateCheck("Viconia",STATE_STUNNED)
!StateCheck("Viconia",STATE_SILENCED)
Global("M#AmberViconiaTalk","GLOBAL",3)~ THEN M#AMBERN AmberViconiaTalk2
@1132 /* @1132 = ~How come you live on the surface, Viconia? I thought your kin preferred the darkness of their underground holes. I have certainly heard of renegade drow who have forsaken the evil ways of their culture, but I can't really see you in that category.~ */
DO ~SetGlobal("M#AmberViconiaTalk","GLOBAL",4)
    RealSetGlobalTimer("M#AmberViconiaTalkTime","GLOBAL",3500)~
== VICONIJ
@1133 /* @1133 = ~Don't pretend to be wiser than you are, fool. Dos orn lor saph biu mal'ai.~ */
== M#AMBERN
@1134 /* @1134 = ~I think you just proved my point.~ */
== VICONIJ
@1135 /* @1135 = ~I don't have to prove anything to you, maggot. Now, leave me alone.~ */
== M#AMBERN
@1136 /* @1136 = ~Well, you obviously don't feel the need to answer my question, do you? Or are you just trying to avoid it?~ */
DO ~SetDialog("m#amberj")~
== VICONIJ
@1137 /* @1137 = ~I have little patience for your prattle, lotha nuij. But you should know this: many of those who flee the caverns below are but hapless fools and weaklings - but it would be a dangerous mistake for you to take me for one of them.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberViconiaTalk","GLOBAL",5)~ THEN VICONIJ AmberViconiaTalk3
@1138 /* @1138 = ~So, lotha nuij, I understand that you have spent a great deal of time with the wayward auflaqui that you surfacers know as gypsies?~ */
DO ~SetGlobal("M#AmberViconiaTalk","GLOBAL",6)
    RealSetGlobalTimer("M#AmberViconiaTalkTime","GLOBAL",3500)~
== M#AMBERN
@1139 /* @1139 = ~I will not hear you insult those who were once like a family to me.~ */
DO ~SetDialog("m#amberj")~
== VICONIJ
@1140 /* @1140 = ~You can turn your back to me, but it does not change the fact that you are weak, fiendling. And foolish, when you waste your affection on those who live at the mercy of peasants - their whole existence contingent on the whims of the idiotic crowd, whom they seek to amuse with their petty tricks. Even beggars have more dignity than those clowns.~ */
EXIT

CHAIN
IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
!StateCheck("Viconia",STATE_HELPLESS)
!StateCheck("Viconia",STATE_STUNNED)
!StateCheck("Viconia",STATE_SILENCED)
Global("M#AmberViconiaTalk","GLOBAL",7)~ THEN M#AMBERN AmberViconiaTalk4
@1141 /* @1141 = ~Viconia, would you please stop doing that?~ */
DO ~SetGlobal("M#AmberViconiaTalk","GLOBAL",8)
    RealSetGlobalTimer("M#AmberViconiaTalkTime","GLOBAL",3500)~
== VICONIJ
@1142 /* @1142 = ~Doing what, surfacer?~ */
== M#AMBERN
@1143 /* @1143 = ~Living up to every preconception anyone has ever had about your kin. Somehow you manage to fulfil every stereotype of the drow there is. I would like to believe that one cannot judge anyone by their race or profession, but you're shaking that belief up really good. You're probably the most disagreeable person I've ever met, and that's saying a lot.~ */
DO ~SetDialog("m#amberj")~
== VICONIJ
@1144 /* @1144 = ~You're a witless fool, lotha nuij. If you think I'm disagreeable, you'd better look into the mirror. Oh, but I forget; that must be terribly difficult for you since they keep breaking every time you try to do that.~ */
=
@1145 /* @1145 = ~Dos zhal'la shar dosst ehmtu chaon.~ */
EXIT

// 1 Yoshimo, Aerie, Anomen, Cernd, Edwin, Imoen, Jaheira, Jan, Keldorn, Korgan, Mazzy, Minsc, Nalia, Valygar, Viconia

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberYoshimoBanter","GLOBAL",0)~ THEN BYOSHIM AmberYoshimoBanter1
@1146 /* @1146 = ~Ah, my fellow rogue... I think that I could teach you a trick or two of our common trade.~ */
DO ~SetGlobal("M#AmberYoshimoBanter","GLOBAL",1)~
== BM#AMBER
@1147 /* @1147 = ~And *I* think that you think too much of yourself, Yoshimo.~ */
== BYOSHIM
@1148 /* @1148 = ~Perhaps, but if I myself don't trust my abilities, who does?~ */
== BM#AMBER
@1149 /* @1149 = ~Who cares?~ */
== BYOSHIM
@1150 /* @1150 = ~Now, no need to be rude, young one. I graciously offered my skills for your benefit, but if you are not interested, I shall withdraw my proposal.~ */
== BM#AMBER
@1151 /* @1151 = ~I suppose it's my loss then. What a shame.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberAerieBanter","GLOBAL",0)~ THEN BAERIE AmberAerieBanter1
@1152 /* @1152 = ~A-Amber, can I ask you something?~ */
DO ~SetGlobal("M#AmberAerieBanter","GLOBAL",1)~
== BM#AMBER
@1153 /* @1153 = ~What is it, Aerie?~ */
== BAERIE
@1154 /* @1154 = ~Have you ever been captured into a circus. I-I mean, looking as you do... One could see someone wanting to l-lock you up for display.~ */
== BM#AMBER
@1155 /* @1155 = ~Well, I have worked in a circus, but I joined it of my own free will and was never displayed in a cage like a beast. I worked as a trapeze artist in Amazing Fabrizio's Circus of Miraculous Oddities years and years ago.~ */
== BAERIE
@1156 /* @1156 = ~Th-that sounds like fun, I guess. I would have liked to be a real performer instead of a... a caged b-beast, as you said.~ */
== BM#AMBER
@1157 /* @1157 = ~Well, if you would learn to stand up for yourself instead of whining all the time... Maybe you could actually become something.~ */
== BAERIE
@1158 /* @1158 = ~H-how can you be so cruel? I have... I have done nothing to hurt you and yet...~ */
== BM#AMBER
@1159 /* @1159 = ~I do not mean to be cruel, Aerie. I'm just telling you what I think is true - it's about time you learned to face the truth. Life is a tough game: you cannot count on someone else standing up for you. You have to be prepared to do it yourself.~ */
== BAERIE
@1160 /* @1160 = ~I-I will try, but I'm not so sure if I want to see the world like you do. I don't believe life is as harsh as you would want me to think.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberAnomenBanter","GLOBAL",0)~ THEN BANOMEN AmberAnomenBanter1
@1161 /* @1161 = ~I honestly cannot fathom why <CHARNAME> tolerates your presence. You draw unnecessary amounts of negative attention to this party.~ */
DO ~SetGlobal("M#AmberAnomenBanter","GLOBAL",1)~
== BM#AMBER
@1162 /* @1162 = ~'Negative attention?' If that is the opposite of what people like you draw to themselves, thank the gods for negative attention.~ */
== BANOMEN
@1163 /* @1163 = ~Hold your tongue. Someone of my prestige should not suffer the insults of the witless. Once I rise in ranks of the Order, I shall make it my mission to rid Amn of the taint of your twisted kin.~ */
== BM#AMBER
@1164 /* @1164 = ~You will indeed make a fine addition to the pompous brats of the Order. Judge, execute and ask questions later, if ever, eh? You are a prime example of a single-minded fool, Anomen.~ */
== BANOMEN
@1165 /* @1165 = ~If anybody is a fool here, it is you. A lying fool you are, tiefling. There is nothing that you can say to make me think otherwise. Keep your treacherous tongue in check, or suffer the consequences.~ */
== BM#AMBER
@1166 /* @1166 = ~I have nothing to say to you anyway.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
!StateCheck("Cernd",STATE_HELPLESS)
!StateCheck("Cernd",STATE_STUNNED)
!StateCheck("Cernd",STATE_SILENCED)
Global("M#AmberCerndBanter","GLOBAL",0)
Global("M#CheckCerndBaby","GLOBAL",1)~ THEN BM#AMBER AmberCerndBanter1
@1167 /* @1167 = ~You really are a strange man, Cernd.~ */
DO ~SetGlobal("M#AmberCerndBanter","GLOBAL",1)~
== BCERND
@1168 /* @1168 = ~I for my part find it curious that you should think so, as I am the most ordinary of men. Although, if you wish me to elaborate on my ordinary nature, you will have to provide me with information on your reasons to believe me so strange.~ */
== BM#AMBER
@1169 /* @1169 = ~Well, you can turn yourself into a beast at will, you have lost your wife and abandoned your child for what you think is a greater cause, and you are always calm and emotionless even if there is a battle raging around you. How do you manage that? Where is that rush of blood and passion people usually feel when faced with such things?~ */
== BCERND
@1170 /* @1170 = ~When one is at peace with oneself, one is at peace with one's surroundings. But you are mistaken if you think me emotionless. I *do* care what happens around me, and I feel that I can play my own part in maintaining the Balance.  That is what gives me my peace of mind.~ */
== BM#AMBER
@1171 /* @1171 = ~I see. But what if the surroundings are not at peace with you?~ */
== BCERND
@1172 /* @1172 = ~When you cease to see yourself as separate from your surroundings, that question will be of no relevance.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberEdwinBanter","GLOBAL",0)~ THEN BEDWIN AmberEdwinBanter1
@1173 /* @1173 = ~You are a pretty creature, yes? (That's right, flatter her, that works with women.) How is it that you have such radiant hair?~ */
DO ~SetGlobal("M#AmberEdwinBanter","GLOBAL",1)~
== BM#AMBER
@1174 /* @1174 = ~What is it that you want, wizard?~ */
== BEDWIN
@1175 /* @1175 = ~Oh, it's a small thing really... (Yes, make it sound insignificant, the foolish girl won't be able to refuse.) Hardly worth even mentioning.~ */
== BM#AMBER
@1176 /* @1176 = ~Then don't mention it.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberHaerDalisBanter1","GLOBAL",0)
Global("M#AmberRomanceActive","GLOBAL",2)
GlobalGT("M#AmberHaerDalisTalk","GLOBAL",1)
GlobalGT("M#RiddleFlirtChosen","GLOBAL",3)~ THEN BHAERDA AmberHaerDalisBanter1
@1177 /* @1177 = ~Amber, I have noticed that you are no stranger to the art of riddles. Perhaps this bard could persuade you to enter into a competition of sorts?~ */
DO ~SetGlobal("M#AmberHaerDalisBanter1","GLOBAL",1)~
== BM#AMBER
@1178 /* @1178 = ~No, I don't think so. I'm not foolish enough to be lured into a riddling competition with a word twister like you. Been there, done that, and ended up losing every time.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",1)
    	       Class(Player1,BARD_ALL)~
@1179 /* @1179 = ~Yet you subject yourself to defeat over and over again with our raven here; after all, he is a bard of sorts as well. Why so cruelly exclude this poet from a friendly game of wits?~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",1)
    		Class(Player1,BARD_ALL)~
@1180 /* @1180 = ~Well, with him I do not mind fulfilling his wish, should I lose the game.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",1)
    	       !Class(Player1,BARD_ALL)~ 
@1181 /* @1181 = ~Yet you subject yourself to defeat over and over again with our raven here. Even though he is no fool, he is no wordsmith either. Thus the game with him must be a rather boring experience, don't you agree, my hummingbird? Why so cruelly exclude this poet from a friendly game of wits? Come now, let us set our wits to work against each other. ~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",1)
 		!Class(Player1,BARD_ALL)~
@1182 /* @1182 = ~No, I don't think so.~ */

== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
 	       Class(Player2,BARD)~ 
@1183 /* @1183 = ~Yet you subject yourself to defeat over and over again with our mockingbird here; after all, he is a bard of sorts as well. Why so cruelly exclude this poet from a friendly game of wits?~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",3)
    Class(Player2,BARD)~
@1180 /* @1180 = ~Well, with him I do not mind fulfilling his wish, should I lose the game.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
   	       Class(Player2,THIEF)~
@1184 /* @1184 = ~Yet you subject yourself to defeat over and over again with our mockingbird here. Even though <PLAYER2> is no fool, he is no wordsmith either. Thus the game with him must be a rather boring experience, don't you agree, my hummingbird? Why so cruelly exclude this poet from a friendly game of wits? Come now, let us set our wits to work against each other. ~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",3)
    		Class(Player2,THIEF)~
@1182 /* @1182 = ~No, I don't think so.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
   	       OR(3)
    		  Class(Player2,CLERIC)
    		  Class(Player2,DRUID)
    		  Class(Player2,RANGER)~
@1185 /* @1185 = ~Yet you subject yourself to defeat over and over again with our owl here. Even though <PLAYER2> is no fool, he is no wordsmith either. Thus the game with him must be a rather boring experience, don't you agree, my hummingbird? Why so cruelly exclude this poet from a friendly game of wits? Come now, let us set our wits to work against each other. ~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",3)
    		OR(3)
    		  Class(Player2,CLERIC)
    		  Class(Player2,DRUID)
    		  Class(Player2,RANGER)~
@1182 /* @1182 = ~No, I don't think so.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
   	       OR(4)
    		  Class(Player2,FIGHTER)
    		  Class(Player2,PALADIN)
    		  Class(Player2,MONK)
    		  Kit(Player2,BARBARIAN)~
@1186 /* @1186 = ~Yet you subject yourself to defeat over and over again with our hawk here. Even though <PLAYER2> is no fool, he is no wordsmith either. Thus the game with him must be a rather boring experience, don't you agree, my hummingbird? Why so cruelly exclude this poet from a friendly game of wits? Come now, let us set our wits to work against each other. ~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",3)
    		OR(4)
    		  Class(Player2,FIGHTER)
    		  Class(Player2,PALADIN)
    		  Class(Player2,MONK)
    		  Kit(Player2,BARBARIAN)~
@1182 /* @1182 = ~No, I don't think so.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
   	       OR(2)
    		  Class(Player2,MAGE)
    		  Class(Player2,SORCERER)~
@1187 /* @1187 = ~Yet you subject yourself to defeat over and over again with our ibis here. Even though <PLAYER2> is no fool, he is no wordsmith either. Thus the game with him must be a rather boring experience, don't you agree, my hummingbird? Why so cruelly exclude this poet from a friendly game of wits? Come now, let us set our wits to work against each other. ~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",3)
    		OR(2)
    		  Class(Player2,MAGE)
    		  Class(Player2,SORCERER)~
@1182 /* @1182 = ~No, I don't think so.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
   	       OR(10)
    		  Class(Player2,FIGHTER_MAGE)
    		  Class(Player2,FIGHTER_CLERIC)
    		  Class(Player2,FIGHTER_THIEF)
    		  Class(Player2,FIGHTER_MAGE_THIEF)
    		  Class(Player2,MAGE_THIEF)
    		  Class(Player2,CLERIC_MAGE)
    		  Class(Player2,CLERIC_THIEF)
    		  Class(Player2,FIGHTER_DRUID)
    		  Class(Player2,FIGHTER_MAGE_CLERIC)
    		  Class(Player2,CLERIC_RANGER)~
@1188 /* @1188 = ~Yet you subject yourself to defeat over and over again with our hound here. Even though <PLAYER2> is no fool, he is no wordsmith either. Thus the game with him must be a rather boring experience, don't you agree, my hummingbird? Why so cruelly exclude this poet from a friendly game of wits? Come now, let us set our wits to work against each other. ~ */
== BM#AMBER IF ~Global("M#AmberMatch","GLOBAL",3)
    		OR(10)
		  Class(Player2,FIGHTER_MAGE)
		  Class(Player2,FIGHTER_CLERIC)
		  Class(Player2,FIGHTER_THIEF)
		  Class(Player2,FIGHTER_MAGE_THIEF)
		  Class(Player2,MAGE_THIEF)
		  Class(Player2,CLERIC_MAGE)
		  Class(Player2,CLERIC_THIEF)
		  Class(Player2,FIGHTER_DRUID)
		  Class(Player2,FIGHTER_MAGE_CLERIC)
    		  Class(Player2,CLERIC_RANGER)~
@1182 /* @1182 = ~No, I don't think so.~ */
== BHAERDA
@1189 /* @1189 = ~But who is it then, my hummingbird, that taught you not to engage in a game of wits with one of my calling? This bard would be honoured to hear of another master of words.~ */
== BM#AMBER
@1190 /* @1190 = ~Well, you are a tad late for that.~ */
== BHAERDA
@1191 /* @1191 = ~Another songbird penned to the dead book? What a shame, but that is the way of the planes, after all: we are born, live to unfold our potential entropy, and finally become one with it as the sweet oblivion claims us.~ */
=
@1192 /* @1192 = ~But tell me, my angel, was not this bard of yours dear to you? A first love perhaps?  The first pilgrim to pass those sweet lips of yours?~ */
== BM#AMBER
@1193 /* @1193 = ~A dear friend, yes, but the rest is merely *your* fantasy, Haer'Dalis. Not all dear friends can be counted as lovers, but then again, the whole concept of 'just friends' must to be rather alien to you.~ */
== BHAERDA
@1194 /* @1194 = ~Ah, but can you blame this merry sparrow for his desires when surrounded with friends such as yourself?~ */
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
!StateCheck("Jaheira",STATE_HELPLESS)
!StateCheck("Jaheira",STATE_STUNNED)
!StateCheck("Jaheira",STATE_SILENCED)
Global("M#AmberJaheiraBanter","GLOBAL",0)~ THEN BM#AMBER AmberJaheiraBanter1
@1195 /* @1195 = ~Can I ask you something, Jaheira?~ */
DO ~SetGlobal("M#AmberJaheiraBanter","GLOBAL",1)~
== BJAHEIR
@1196 /* @1196 = ~Yes?~ */
== BM#AMBER
@1197 /* @1197 = ~I was just wondering, is there anything in this world you wouldn't have an opinion or advice on? You always seem to know better, regardless of whether something is your business or not.~ */
== BJAHEIR
@1198 /* @1198 = ~And that irritates you? The way I see it, we have precious little time to waste on nonsense, and there are times when I must offer my guidance to those that would otherwise be in the dark.~ */
=
@1199 /* @1199 = ~Where I come from, it is considered only wise to share whatever wisdom could help solve a problem.~ */
== BM#AMBER
@1200 /* @1200 = ~Well, where I come from, it is mostly considered impolite to meddle with the affairs of others.~ */
== BJAHEIR
@1201 /* @1201 = ~We obviously come from very different places, then.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberJanBanter","GLOBAL",0)~ THEN BJAN AmberJanBanter1
@1202 /* @1202 = ~Now Amber, I've been noticing that you've got the same problem as my second cousin's wife Nana. I may have spoken of her before. She was...~ */ 
DO ~SetGlobal("M#AmberJanBanter","GLOBAL",1)~
== BM#AMBER
@1203 /* @1203 = ~And what problem would that be, Jan?~ */
== BJAN
@1204 /* @1204 = ~With her eyes. You see, she had the most hideous, tiny, bloodshot pig eyes that you can imagine.~ */
== BM#AMBER
@1205 /* @1205 = ~I'm not sure I wish to know where this is going...~ */
== BJAN
@1206 /* @1206 = ~Anyway, she had these glasses made to her to hide her eyes from people... I was thinking of fixing you up with a similar pair - maybe with few nifty accessories to spice them up a bit, like...~ */
== BM#AMBER
@1207 /* @1207 = ~Thank you, but I think I'll pass.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberKeldornBanter1","GLOBAL",0)~ THEN BKELDOR AmberKeldornBanter1
@1208 /* @1208 = ~Amber, I have been watching you and I must say that your manners could use some improvement. When you talk to someone, especially someone older than yourself, you should be more polite instead of sarcastic and rude.~ */
DO ~SetGlobal("M#AmberKeldornBanter1","GLOBAL",1)~
== BM#AMBER
@1209 /* @1209 = ~Don't talk to me like I was a child, knight. I have seen more winters than you. And besides, what would you know about raising children anyway? From what I have heard, you were not exactly available when your own kids needed your guidance.~ */
== BKELDOR
@1210 /* @1210 = ~That is exactly what I am talking about, Amber. I agree that attack is often the best defence, but I also think that you should take more control over your defensive instincts, lest your defence be perceived as offence.~ */
= @1211 /* @1211 = ~And as to your accusations, do not think that I am not aware of my own shortcomings - being a member of the Order does not make me perfect, but you must understand that my duties to the Order are supreme and sometimes require sacrifices on other walks of life.~ */
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN
@1212 /* @1212 = ~Sir Keldorn is right, Amber. You do not strike me as an evil person, and thus I do not believe it is your intention to deliberately hurt other people's feelings.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberKorganBanter","GLOBAL",0)~ THEN BKORGAN AmberKorganBanter1
@1213 /* @1213 = ~Why, did yer mother hump a tomcat or something? That be the freakiest pair o' eyes I ever laid mine on.~ */
DO ~SetGlobal("M#AmberKorganBanter","GLOBAL",1)~
== BM#AMBER
@1214 /* @1214 = ~Get lost, dwarf. I have very little patience for the likes of you.~ */
== BKORGAN
@1215 /* @1215 = ~Ye be sure to watch that tongue of yers, kitten. I hear a demon tongue'll fetch a decent price on the market these days. Yers should be worth at least some of that.~ */
EXIT

CHAIN
IF ~InParty("Mazzy")
InParty("Anomen")   
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
!StateCheck("Mazzy",STATE_HELPLESS)
!StateCheck("Mazzy",STATE_STUNNED)
!StateCheck("Mazzy",STATE_SILENCED)
Global("M#AmberMazzyBanter1","GLOBAL",0)
Global("M#AnomenInsultedMazzy","GLOBAL",1)~ THEN BM#AMBER AmberMazzyBanter1 
@1216 /* @1216 = ~You really are full of surprises, my friend. Although I should not be surprised by you showing such strength of character - after all, it seems to be second nature to you.~ */
DO ~SetGlobal("M#AmberMazzyBanter1","GLOBAL",1)~
== BMAZZY
@1217 /* @1217 = ~I thank you for your praise, but at the same time I cannot help but wonder whether it is warranted. I would not want to be glorified without merit.~ */
== BM#AMBER
@1218 /* @1218 = ~I just couldn't help noticing how calmly you handled that twat of a would-be knight. I know that I certainly would have lost my temper with his insolence.~ */
== BMAZZY
@1219 /* @1219 = ~Anomen is still quite young and desperately in need of guidance. Patience and tolerance are the virtues he most desperately needs to learn.~ */
== BM#AMBER
@1220 /* @1220 = ~And the only way to teach him is by example, right? Your efforts may well prove worthwhile, but I wouldn't bet my money on your success, Mazzy.~ */
== BMAZZY
@1221 /* @1221 = ~Gambling is not something that a knight should indulge in anyway, so I would advise you not to put your money on Anomen failing, either.~ */
== BM#AMBER
@1222 /* @1222 = ~Well, we will just have to see about that, won't we.~ */
EXIT

CHAIN
IF WEIGHT #14 ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberMinscBanter1","GLOBAL",0)~ THEN BMINSC AmberMinscBanter1
@1223 /* @1223 = ~Oh! Minsc did not see you there! Amber should not sneak around like that, or she will be severely squashed by accident.~ */
DO ~SetGlobal("M#AmberMinscBanter1","GLOBAL",1)~
== BM#AMBER
@1224 /* @1224 = ~I'll be careful, fear not. But I wanted to ask you something, if you don't mind, Minsc.~ */
== BMINSC
@1225 /* @1225 = ~Minsc will be happy to answer.~ */
== BM#AMBER
@1226 /* @1226 = ~I have heard you mention someone named Dynaheir. Who's that?~ */
== BMINSC
@1227 /* @1227 = ~Dynaheir was Minsc's witch, part of his dejemma. Thinking of her makes Boo sad. We failed her. Now I will never be a man in the eyes of my tribe's elders. Dynaheir was wise and beautiful, but now she is gone.~ */
== BM#AMBER
@1228 /* @1228 = ~I am truly sad to hear that your friend has passed away, but why do you care so much what others think? You're powerful and brave in battle, and I'm sure you did everything you could for her. You are no less of a man just because she didn't make it.~ */
== BMINSC
@1229 /* @1229 = ~You are very kind to say so, but Boo thinks that you do not quite understand the true meaning of dejemma.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberNaliaBanter1","GLOBAL",0)
OR(3)
 AreaCheck("AR0400")
 AreaCheck("AR1000")
 AreaCheck("AR0900")~ THEN BNALIA AmberNaliaBanter1
@1230 /* @1230 = ~I understand that you have travelled quite a bit, Amber. Tell me: are cities the same all over Faerûn?~ */
DO ~SetGlobal("M#AmberNaliaBanter1","GLOBAL",1)~
== BM#AMBER
@1231 /* @1231 = ~You mean whether there are opulent mansions with noblemen idly wandering around in their private gardens next to filthy slums, where disease spreads like a wildfire?~ */
== BNALIA
@1232 /* @1232 = ~Yes, that's exactly what I meant. Though I doubt that I could have described it as vividly.~ */
== BM#AMBER
@1233 /* @1233 = ~I suppose it's because I have seen both. But to answer your question: yes, it does not really matter where your travel. Large cities are much the same when it comes to the distribution of wealth.~ */
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
!StateCheck("Valygar",STATE_HELPLESS)
!StateCheck("Valygar",STATE_STUNNED)
!StateCheck("Valygar",STATE_SILENCED)
Global("M#AmberValygarBanter","GLOBAL",0)~ THEN BM#AMBER AmberValygarBanter1
@1234 /* @1234 = ~You sure don't talk much, do you?~ */
DO ~SetGlobal("M#AmberValygarBanter","GLOBAL",1)~
== BVALYGA
@1235 /* @1235 = ~I do not wish to waste my breath on idle chatter, Amber.~ */
== BM#AMBER
@1236 /* @1236 = ~Oh, and I thought you were one of those people who believes in not saying anything at all if they have nothing nice to say.~ */
== BVALYGA
@1237 /* @1237 = ~What do you mean to imply by that? That I do not have anything nice to say to people?~ */
== BM#AMBER
@1238 /* @1238 = ~Well, do you?~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberViconiaBanter1","GLOBAL",0)
Global("M#AmberRomanceActive","GLOBAL",2)~ THEN BVICONI AmberViconiaBanter1
@1239 /* @1239 = ~So, little vixen...~ */
DO ~SetGlobal("M#AmberViconiaBanter1","GLOBAL",1)~
== BVICONI IF ~Global("M#AmberMatch","GLOBAL",1)~ 
@1240 /* @1240 = ~I understand that you are rather intimate with <CHARNAME> nowadays, are you not?~ */
== BVICONI IF ~Global("M#AmberMatch","GLOBAL",3)~ 
@1241 /* @1241 = ~I understand that you are rather intimate with <PLAYER2> nowadays, are you not?~ */
== BM#AMBER
@1242 /* @1242 = ~Intimate? What an odd choice of words for you. I would have expected something much more banal from you, drow.~ */
== BVICONI
@1243 /* @1243 = ~Watch your tongue, fiendling. It's getting much too sharp for your own good. I merely wished to inform you that attaching yourself to the jaluk will make you weak.~ */
EXIT

// 2

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
!StateCheck("Yoshimo",STATE_HELPLESS)
!StateCheck("Yoshimo",STATE_STUNNED)
!StateCheck("Yoshimo",STATE_SILENCED)
Global("M#AmberYoshimoBanter","GLOBAL",1)~ THEN BM#AMBER AmberYoshimoBanter2
@1244 /* @1244 = ~So, Yoshimo, you've certainly come a long way from home. What brings you to the Sword Coast?~ */
DO ~SetGlobal("M#AmberYoshimoBanter","GLOBAL",2)~
== BYOSHIM
@1245 /* @1245 = ~I could say the same of you, red one. I don't know whether you have fallen from the heavens or risen from the hells, but your home is not here.~ */
== BM#AMBER
@1246 /* @1246 = ~Always wanted to be a poet, have you? I was trying to make amends for my earlier behaviour, but if you have nothing more constructive to say, you might as well forget it.~ */
== BYOSHIM
@1247 /* @1247 = ~Forgive me, but I do not see the reason for your annoyance.~ */
== BM#AMBER
@1248 /* @1248 = ~Like I said: forget it.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberAerieBanter","GLOBAL",1)~ THEN BAERIE AmberAerieBanter2
@1249 /* @1249 = ~Does... does it ever bother you, Amber? Th-That people stare at you?~ */
DO ~SetGlobal("M#AmberAerieBanter","GLOBAL",2)~
== BM#AMBER
@1250 /* @1250 = ~It's not the staring that bothers me; I would most likely stare at someone like me, should I be one of them. What gets to me is that they are always so ready to pass judgement on me without knowing the first thing about me.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
!StateCheck("Anomen",STATE_HELPLESS)
!StateCheck("Anomen",STATE_STUNNED)
!StateCheck("Anomen",STATE_SILENCED)
Global("M#AmberAnomenBanter","GLOBAL",1)~ THEN BM#AMBER AmberAnomenBanter2
@1251 /* @1251 = ~Okay, knightling. It's pretty obvious that you don't like me, and to tell you the truth, I don't care much about you either.  So you can stop giving me those self-righteous, disapproving glares. Somebody might think that you're actually checking out my figure and that is something you wouldn't want, would you?~ */
DO ~SetGlobal("M#AmberAnomenBanter","GLOBAL",2)~
== BANOMEN
@1252 /* @1252 = ~Hah, I shall not waste my breath on your insults, tiefling.~ */
== BM#AMBER
@1253 /* @1253 = ~Afraid that you might lose to this witless, lying fool? Or have you simply run out of insults?~ */
== BANOMEN
@1254 /* @1254 = ~You won't be able provoke me this time.~ */
== BKELDOR IF ~IsValidForPartyDialog("Keldorn")~ THEN
@1255 /* @1255 = ~That's the spirit, Anomen. Do not demean yourself by trading insults with this... with her. She is only trying to irritate you. If you just maintain your dignity and refuse to play her games, she cannot but stop harassing you.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
!StateCheck("Cernd",STATE_HELPLESS)
!StateCheck("Cernd",STATE_STUNNED)
!StateCheck("Cernd",STATE_SILENCED)
AreaType(FOREST)
Global("M#AmberCerndBanter","GLOBAL",1)~ THEN BM#AMBER AmberCerndBanter2
@1256 /* @1256 = ~Cernd, you always preach how nature can teach us great things and I have been thinking about that. But whenever I try to concentrate in this place and observe my surroundings, my senses are overwhelmed by all the noises and sights and smells. I don't even know where to begin.~ */
DO ~SetGlobal("M#AmberCerndBanter","GLOBAL",2)~
== BCERND
@1257 /* @1257 = ~I understand your difficulty, Amber. I, too, felt overwhelmed when I first set foot in the crowded streets of Athkatla. I soon learned that focusing on small things at first made it easier to deal with larger wholes later on. Do not try to observe everything at once, Amber.~ */
= @1258 /* @1258 = ~Close your eyes and just listen to the rustle of leaves and birds singing. Soon enough you will be able to concentrate on just the birds and can start to discern the individual voices that together compose the sweet concerto for which we are privileged to be the audience.~ */
== BM#AMBER
@1259 /* @1259 = ~Hmmm... That is probably not a bad suggestion at all.~ */
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
!StateCheck("Edwin",STATE_HELPLESS)
!StateCheck("Edwin",STATE_STUNNED)
!StateCheck("Edwin",STATE_SILENCED)
Global("M#AmberEdwinBanter","GLOBAL",1)~ THEN BM#AMBER AmberEdwinBanter2
@1260 /* @1260 = ~NO, Edwin! I told you! You can't have a lock of my hair! Stop touching me or you'll come to regret your arrogance severely!~ */
DO ~SetGlobal("M#AmberEdwinBanter","GLOBAL",2)~
== BEDWIN
@1261 /* @1261 = ~No, no! You need not to fear me! (Careful here. Your powerful presence obviously frightens the creature.) I just want to talk with you. (Yes, girls like to talk.)~ */
== BM#AMBER
@1262 /* @1262 = ~Well, I don't want to talk to you, wizard! Now get lost!~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberRomanceActive","GLOBAL",2)
Global("M#AmberHaerDalisBanter2","GLOBAL",0)~ THEN BHAERDA AmberHaerDalisBanter2
@1263 /* @1263 = ~Ah, my hummingbird of love.~ */
DO ~SetGlobal("M#AmberHaerDalisBanter2","GLOBAL",1)~
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",1)~
@1264 /* @1264 = ~You have made our raven the most blessed man on this earth. But this sparrow must wonder; who shall be the king of the planes?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(4)
    		 Class(Player2,FIGHTER)
    		 Class(Player2,PALADIN)
    		 Class(Player2,MONK)
    		 Kit(Player2,BARBARIAN)~
@1265 /* @1265 = ~You have made our hawk the most blessed man on this earth. But this sparrow must wonder; who shall be the king of the planes?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(2)
    		 Class(Player2,BARD)
    		 Class(Player2,THIEF)~
@1266 /* @1266 = ~You have made our mockingbird the most blessed man on this earth. But this sparrow must wonder; who shall be the king of the planes?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(3)
    		 Class(Player2,CLERIC)
    		 Class(Player2,DRUID)
    		 Class(Player2,RANGER)~
@1267 /* @1267 = ~You have made our owl the most blessed man on this earth. But this sparrow must wonder; who shall be the king of the planes?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(2)
    		 Class(Player2,MAGE)
    		 Class(Player2,SORCERER)~
@1268 /* @1268 = ~You have made our ibis the most blessed man on this earth. But this sparrow must wonder; who shall be the king of the planes?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
    		OR(10)
		  Class(Player2,FIGHTER_MAGE)
		  Class(Player2,FIGHTER_CLERIC)
		  Class(Player2,FIGHTER_THIEF)
		  Class(Player2,FIGHTER_MAGE_THIEF)
		  Class(Player2,MAGE_THIEF)
		  Class(Player2,CLERIC_MAGE)
		  Class(Player2,CLERIC_THIEF)
		  Class(Player2,FIGHTER_DRUID)
		  Class(Player2,FIGHTER_MAGE_CLERIC)
    		  Class(Player2,CLERIC_RANGER)~
@1269 /* @1269 = ~You have made our hound the most blessed man on this earth. But this sparrow must wonder; who shall be the king of the planes?~ */
== BM#AMBER
@1270 /* @1270 = ~If you're suggesting that you, I or any of our blood could bestow a blessing on anything, you are even more deranged than I thought.~ */
== BHAERDA
@1271 /* @1271 = ~Don't you try slipping away from my question, my hummingbird.~ */
== BM#AMBER
@1272 /* @1272 = ~The only thing slipping here is your mind, bard.~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",1)~
@1273 /* @1273 = ~Now that, my angel, would be unfortunate indeed... were it to be true. But let this bard makes his rhymes a little clearer: the raven rules your heart this day, that much is plain to see, but foresee you not the dusk of it already?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(4)
    		 Class(Player2,FIGHTER)
    		 Class(Player2,PALADIN)
    		 Class(Player2,MONK)
    		 Kit(Player2,BARBARIAN)~
@1274 /* @1274 = ~Now that, my angel, would be unfortunate indeed... were it to be true. But let this bard makes his rhymes a little clearer: the hawk rules your heart this day, that much is plain to see, but foresee you not the dusk of it already?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(2)
    		 Class(Player2,BARD)
    		 Class(Player2,THIEF)~
@1275 /* @1275 = ~Now that, my angel, would be unfortunate indeed... were it to be true. But let this bard makes his rhymes a little clearer: the mockingbird rules your heart this day, that much is plain to see, but foresee you not the dusk of it already?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(3)
    		 Class(Player2,CLERIC)
    		 Class(Player2,DRUID)
    		 Class(Player2,RANGER)~
@1276 /* @1276 = ~Now that, my angel, would be unfortunate indeed... were it to be true. But let this bard makes his rhymes a little clearer: the owl rules your heart this day, that much is plain to see, but foresee you not the dusk of it already?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
	       OR(2)
    		 Class(Player2,MAGE)
    		 Class(Player2,SORCERER)~
@1277 /* @1277 = ~Now that, my angel, would be unfortunate indeed... were it to be true. But let this bard makes his rhymes a little clearer: the ibis rules your heart this day, that much is plain to see, but foresee you not the dusk of it already?~ */
== BHAERDA IF ~Global("M#AmberMatch","GLOBAL",3)
    		OR(10)
		  Class(Player2,FIGHTER_MAGE)
		  Class(Player2,FIGHTER_CLERIC)
		  Class(Player2,FIGHTER_THIEF)
		  Class(Player2,FIGHTER_MAGE_THIEF)
		  Class(Player2,MAGE_THIEF)
		  Class(Player2,CLERIC_MAGE)
		  Class(Player2,CLERIC_THIEF)
		  Class(Player2,FIGHTER_DRUID)
		  Class(Player2,FIGHTER_MAGE_CLERIC)
    		  Class(Player2,CLERIC_RANGER)~
@1278 /* @1278 = ~Now that, my angel, would be unfortunate indeed... were it to be true. But let this bard makes his rhymes a little clearer: the hound rules your heart this day, that much is plain to see, but foresee you not the dusk of it already?~ */
== BM#AMBER
@1279 /* @1279 = ~The king of chaos asks me to foresee the future? Since when have you been interested in the longevity of anything?~ */
== BHAERDA
@1280 /* @1280 = ~So I am a king to you, after all? Very well, I shall consider my question answered.~ */
== BM#AMBER
@1281 /* @1281 = ~W-what? To the hells with you and your word-games, bard!~ */
DO ~IncrementGlobal("M#HaerTalk","Locals",1)~
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
!StateCheck("Jaheira",STATE_HELPLESS)
!StateCheck("Jaheira",STATE_STUNNED)
!StateCheck("Jaheira",STATE_SILENCED)
Global("M#AmberJaheiraBanter","GLOBAL",1)~ THEN BM#AMBER AmberJaheiraBanter2
@1282 /* @1282 = ~Why it is so difficult for you to admit that you miss your husband, Jaheira?~ */
DO ~SetGlobal("M#AmberJaheiraBanter","GLOBAL",2)~
== BJAHEIR
@1283 /* @1283 = ~What did you say to me about meddling with the affairs of others? I see that it is not one of your greatest virtues, either.~ */
== BM#AMBER
@1284 /* @1284 = ~I just wanted to learn more about you - and perhaps figure out why you're always so high-strung.~ */
== BJAHEIR
@1285 /* @1285 = ~It was curiosity that killed the cat, you know.~ */
== BM#AMBER
@1286 /* @1286 = ~Is that a threat?~ */
== BJAHEIR
@1287 /* @1287 = ~No, it's your cue to shut up.~ */
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
!StateCheck("Jan",STATE_HELPLESS)
!StateCheck("Jan",STATE_STUNNED)
!StateCheck("Jan",STATE_SILENCED)
Global("M#AmberJanBanter2","GLOBAL",0)~ THEN BM#AMBER AmberJanBanter2
@1288 /* @1288 = ~Hey, Jan! I found this lying on the ground. Looks like something that fell off your backpack.~ */
DO ~SetGlobal("M#AmberJanBanter2","GLOBAL",1)~
== BJAN
@1289 /* @1289 = ~Oh thank you, dearie - I would indeed have missed this. Misplacing things runs in the Jansen family - sort of  a family trait, you see. Though only on the male side of it, mind you. Never figured out why that is.~ */
== BM#AMBER
@1290 /* @1290 = ~That is one curious looking device, by the way. What is it?~ */
== BJAN
@1291 /* @1291 = ~It is just a little something I whipped up in my spare time. I call it the Gnomish De-Hirsuter. Quite a handy little device, I might add.~ */
== BM#AMBER
@1292 /* @1292 = ~Alright... But what does it *do*? What is the purpose of that thing?~ */
== BJAN
@1293 /* @1293 = ~Well, it is excels in facilitating the elimination of excessive or otherwise intrusive fuzziness of the corpus.~ */
== BM#AMBER
@1294 /* @1294 = ~'Fuzziness'?~ */ 
== BJAN
@1295 /* @1295 = ~Um, you know, body hair.~ */
== BM#AMBER
@1296 /* @1296 = ~I see... Well, I suppose it's one of those things you never knew you needed.~ */
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
!StateCheck("Keldorn",STATE_HELPLESS)
!StateCheck("Keldorn",STATE_STUNNED)
!StateCheck("Keldorn",STATE_SILENCED)
Global("M#AmberKeldornBanter2","GLOBAL",0)
See("rabbit01")~ THEN BM#AMBER AmberKeldornBanter2 
@1297 /* @1297 = ~Look, Keldorn, a bunny!~ */
DO ~SetGlobal("M#AmberKeldornBanter2","GLOBAL",1)~
== BKELDOR
@1298 /* @1298 = ~Erm... Yes indeed, it seems to be a white rabbit. What about it?~ */
== BM#AMBER
@1299 /* @1299 = ~Come on! Doesn't that white, fuzzy cuteness make your old heart flutter at least the tiniest bit inside that hard, cold armour?~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberKorganBanter","GLOBAL",1)~ THEN BKORGAN AmberKorganBanter2
@1300 /* @1300 = ~Mmm-huh. Ye could sure use some paddin' on that skinny arse o' yer, kitten.~ */
DO ~SetGlobal("M#AmberKorganBanter","GLOBAL",2)~
== BM#AMBER
@1301 /* @1301 = ~Get your filthy hands off me!~ */
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
!StateCheck("Mazzy",STATE_HELPLESS)
!StateCheck("Mazzy",STATE_STUNNED)
!StateCheck("Mazzy",STATE_SILENCED)
Global("M#AmberMazzyBanter2","GLOBAL",0)
GlobalGT("ShadowLordDead","GLOBAL",0)~ THEN BM#AMBER AmberMazzyBanter2
@1302 /* @1302 = ~I cannot help but wonder how you manage to keep up such a brave face, Mazzy. The Shade Lord wiped out your entire party and turned someone you love into an undead shade. ~ */
= @1303 /* @1303 = ~Yet you manage to maintain a composed posture. I like to think of myself as someone who does not worry about water under the bridge, but your stoicism still manages to amaze me.~ */
DO ~SetGlobal("M#AmberMazzyBanter2","GLOBAL",1)~
== BMAZZY
@1304 /* @1304 = ~Well, I know that no amount of grief will ever bring my dear companions back. Of course that does not prevent me from wishing that things would have turned out differently or from missing Patrick and my other friends.~ */
= @1305 /* @1305 = ~However, we all knew what could happen and everyone took the risk voluntarily. I understand that you are not new to adventuring yourself, and thus certainly not a stranger to the grief of losing a comrade in arms.~ */
== BM#AMBER
@1306 /* @1306 = ~You are right, Mazzy. More so than you even know.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberMinscBanter2","GLOBAL",0)~ THEN BMINSC AmberMinscBanter2
@1307 /* @1307 = ~Minsc has a question for Amber.~ */
DO ~SetGlobal("M#AmberMinscBanter2","GLOBAL",1)~
== BM#AMBER
@1308 /* @1308 = ~Go ahead, Minsc. What is it that bothers you?~ */
== BMINSC
@1309 /* @1309 = ~Minsc has noticed that Amber can kick evil's backside mighty and good. But Boo wonders how can that be. Amber is much bigger and clumsier than Boo, but compared to Minsc, Amber is really tiny, and not very strong, either.~ */
=
@1310 /* @1310 = ~Boo can bite evil in hard to reach places, and Minsc can smite evil with his strong arms, but what does Amber do? Amber has nice smooth hands like Dynaheir, but she does not cast powerful magic.~ */
== BM#AMBER
@1311 /* @1311 = ~This must really bother you, Minsc... Well, to put it simply, I have to wait for the right moment to strike at evil. Because I'm not strong like Minsc or small and fast like Boo, I cannot just charge blindly to the battle.~ */
== BMINSC
@1312 /* @1312 = ~Oooo... So it is patience and cunning that Amber has. Well, Boo thinks that is all nice and cute, but Minsc prefers to kick evil straight away. No waiting for Minsc.~ */
== BM#AMBER
@1313 /* @1313 = ~And evil would do well not to mess with Minsc and Boo. But come, Minsc, we must get going or <CHARNAME> will kick our backsides for falling behind.~ */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
!StateCheck("Nalia",STATE_HELPLESS)
!StateCheck("Nalia",STATE_STUNNED)
!StateCheck("Nalia",STATE_SILENCED)
Global("M#AmberNaliaBanter2","GLOBAL",0)~ THEN BM#AMBER AmberNaliaBanter2
@1314 /* @1314 = ~What did you family say when you decided to start studying magic, Nalia?~ */
DO ~SetGlobal("M#AmberNaliaBanter2","GLOBAL",1)~
== BNALIA
@1315 /* @1315 = ~They were somewhat surprised, perhaps even taken aback. Aunt Delia could not fathom how the future wife of a nobleman would benefit from studying 'cantrips', as she put it.~ */
== BM#AMBER
@1316 /* @1316 = ~I am glad that you didn't end up becoming one of those idle trophy wives, but I thought magic was frowned upon in Amn. How did you get the chance to study it?~ */
== BNALIA
@1317 /* @1317 = ~Well, there was obviously a rather generous amount of coinage that changed ownership in order to make it happen. Not that I'm proud of it, mind you. I admit that it's more than unfair that I got the chance just because I could afford it.~ */
== BM#AMBER
@1318 /* @1318 = ~You shouldn't be ashamed of having been born under fortunate circumstances. At least you have the brains and the humility to realise that you have been given a chance most people could never dream of.~ */
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
!StateCheck("Valygar",STATE_HELPLESS)
!StateCheck("Valygar",STATE_STUNNED)
!StateCheck("Valygar",STATE_SILENCED)
Global("M#AmberValygarBanter","GLOBAL",1)
Dead("Lavok02")~ THEN BM#AMBER AmberValygarBanter2
@1319 /* @1319 = ~You must be relieved to have Lavok off your back, Valygar. Wizards are best kept at arm's length - at least until you figure out their true intentions.~ */
DO ~SetGlobal("M#AmberValygarBanter","GLOBAL",2)~
== BVALYGA
@1320 /* @1320 = ~Yes, I suppose I am relieved.~ */
== BM#AMBER
@1321 /* @1321 = ~The man of many words is back again is he?~ */
== BVALYGA
@1322 /* @1322 = ~You are as puzzling as ever, Amber.~ */
= @1323 /* @1323 = ~I wish no quarrel with you and yet you insist on insulting me.~ */
== BM#AMBER
@1324 /* @1324 = ~I was simply trying to pick up a decent conversation on the topic of your disturbing family legacy, but you are not being very helpful.~ */
== BVALYGA
@1325 /* @1325 = ~There are things better left alone. You should know that as well as I do.~ */
EXIT

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberViconiaBanter2","GLOBAL",0)
Global("M#AmberHaerDalisTalk","GLOBAL",8)~ THEN BVICONI AmberViconiaBanter2
@1326 /* @1326 = ~One blood, one heart - wouldn't you say, Amber? Tiefling lust burning hot already, is it not?~ */
DO ~SetGlobal("M#AmberViconiaBanter2","GLOBAL",1)~
== BM#AMBER
@1327 /* @1327 = ~If you're suggesting what I think you are - you are gravely mistaken. While I cannot speak for the bard, I can assure you that I feel nothing of the kind.~ */
== BVICONI
@1328 /* @1328 = ~That is what you claim, but I must say that you are one of the worst liars I have ever laid my eyes upon.~ */
EXIT

// 3 Aerie, Cernd, Jan, Mazzy, Valygar

CHAIN
IF ~InParty("M#Amber")
See("M#Amber")
!StateCheck("M#Amber",STATE_SLEEPING)
!StateCheck("M#Amber",STATE_HELPLESS)
!StateCheck("M#Amber",STATE_STUNNED)
!StateCheck("M#Amber",STATE_SILENCED)
Global("M#AmberAerieBanter","GLOBAL",2)~ THEN BAERIE AmberAerieBanter3
@1329 /* @1329 = ~Which god do you follow, Amber? I would really like to know - i-if you're willing to share such information, that is.~ */
DO ~SetGlobal("M#AmberAerieBanter","GLOBAL",3)~
== BM#AMBER
@1330 /* @1330 = ~I follow no power, be it mortal or divine, Aerie. I only follow my own path.~ */
== BAERIE
@1331 /* @1331 = ~You follow no-one? H-How can you live like that?~ */
== BM#AMBER
@1332 /* @1332 = ~Well, I'm used to taking care of myself. If I had counted on someone else to take care of me, I would have been dead many times over.~ */ 
== BAERIE
@1333 /* @1333 = ~B-But who do you turn to when you're all alone and s-scared? When everything seems hopeless? If Uncle Quayle had not introduced me to Baervan, I-I don't know how I would have ever s-survived.~ */
== BM#AMBER
@1334 /* @1334 = ~That's just it. I cannot turn to anyone. It's not necessarily that I don't want to, but that's just how it goes. You might have been dropped from the skies, but you still belong here, Aerie. But what respectable god would ever accept a demonspawn like me?~ */
== BAERIE
@1335 /* @1335 = ~I don't know, Amber. P-Perhaps you're right, but I-I...~ */
=
@1336 /* @1336 = ~I don't believe that the gods would decline you because you are a tiefling, but rather because you don't *believe* it to be possible for them to accept you. If you have faith and courage, your true heart will speak for you, even in the face of the gods.~ */
== BM#AMBER
@1337 /* @1337 = ~Well, you *can* speak up, after all... I will think about what you said, but I must admit that your words sound a bit too naive to coincide with the realities of this world. Then again, maybe I have just grown too bitter to see the possibility of salvation.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
!StateCheck("Cernd",STATE_HELPLESS)
!StateCheck("Cernd",STATE_STUNNED)
!StateCheck("Cernd",STATE_SILENCED)
AreaType(FOREST)
Global("M#AmberCerndBanter","GLOBAL",2)~ THEN BM#AMBER AmberCerndBanter3
@1338 /* @1338 = ~Ouch! Something in this damned, no-good bush bit me!~ */
= @1339 /* @1339 = ~Oh, sorry Cernd - I did not see you there. Don't get me wrong, I don't really think this forest is 'damned', and I'd say that 'no-good' was a hasty overreaction as well. Something just suddenly bit me, that's all.~ */
DO ~SetGlobal("M#AmberCerndBanter","GLOBAL",3)~
== BCERND
@1340 /* @1340 = ~Hmmm... Your temper is like a sudden rain on a warm summer day. It is over just as quickly as it begun.~ */
= @1341 /* @1341 = ~Let me take a look at that, bite.~ */
= @1342 /* @1342 = ~Oh, don't worry it was just a small ant. The blistering should be gone in a matter of hours, but if it still bothers you when we set up camp tonight, I have a cooling salve that should ease it.~ */
== BM#AMBER
@1343 /* @1343 = ~Well, I guess I at least learned a lesson from that ant: no matter how small something is, you can count on it to bite you good if you step on it.~ */
== BCERND
@1344 /* @1344 = ~That is true enough, but if you think more carefully, it is not the only thing you can learn. Far from it.~ */
= @1345 /* @1345 = ~As you noted, ants are seemingly small and one might question that we could ever learn anything from such an insignificant creature. However, by their teamwork and perseverance, the tiny insects manage to build great cities, all the while remaining the harmony with their surroundings.~ */
= @1346 /* @1346 = ~A wise man once told his followers to study the under-appreciated ant and learn from it when planning any great endeavour.~ */
== BM#AMBER
@1347 /* @1347 = ~Well, teamwork has never been my speciality since I have been alone for most part of my life. Perhaps there is indeed is more to ants - and everything else, I guess - than meets the eye.~ */
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
!StateCheck("Mazzy",STATE_HELPLESS)
!StateCheck("Mazzy",STATE_STUNNED)
!StateCheck("Mazzy",STATE_SILENCED)
Global("M#AmberMazzyBanter3","GLOBAL",0)~ THEN BM#AMBER AmberMazzyBanter3
@1348 /* @1348 = ~I have to admit that I admire the way you fight, Mazzy. I always try to maintain my distance and look for the right spot to dash in and then back away again, but you just charge right in and face the enemy eye to eye. Even though you are - well let's face it - we are both smaller than the average bad guy.~ */
DO ~SetGlobal("M#AmberMazzyBanter3","GLOBAL",1)~
== BMAZZY
@1349 /* @1349 = ~Why, thank you Amber. But although it is important to show courage and valour on the battlefield, a charge is not always the best option. My bow has taken down many enemies before they ever got within a sword's length of me.~ */
== BM#AMBER
@1350 /* @1350 = ~Ah, your bow? Can I take look at it? The craftsmanship seems really amazing. What type of arrows do you prefer?~ */
== BMAZZY
@1351 /* @1351 = ~Well, what I really like to use - and I must say that many seasoned fighters will agree with me - is this.~ */
== BM#AMBER
@1352 /* @1352 = ~Hard ashen shafts and narrow bodkins - I can see why you would prefer these. I, however, like to cut my fletching slightly differently from the basic triangle you use. Like this, you see - the swineback cut, as it's usually called.~ */
== BMAZZY
@1353 /* @1353 = ~I see. I take it that you use it because of its silent flight? Not much point for that on the battlefield, though.~ */
== BM#AMBER
@1354 /* @1354 = ~I can imagine. I guess there's nothing quite like that fluttering sound of inevitable doom raining from the sky if you want to strike some fear into the hearts of your enemies.~ */
=
@1355 /* @1355 = ~It just doesn't have quite the same impact when there's only one of you. That's when swift, silent arrows carefully placed will be your best bet for staying alive.~ */
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
!StateCheck("Valygar",STATE_HELPLESS)
!StateCheck("Valygar",STATE_STUNNED)
!StateCheck("Valygar",STATE_SILENCED)
Global("M#AmberValygarBanter","GLOBAL",2)
AreaType(FOREST)~ THEN BM#AMBER AmberValygarBanter3
@1356 /* @1356 = ~Valygar, I am sorry if I seemed bit edgy last time we spoke. I do seem to have a knack for getting of to a bad start with people. Though you have to admit that you, on the other hand, are the not the most sociable of people. Anyway, I come to you with an offering of peace and a few questions only you can answer.~ */
DO ~SetGlobal("M#AmberValygarBanter","GLOBAL",3)~
== BVALYGA
@1357 /* @1357 = ~What did you have in mind, Amber?~ */
== BM#AMBER
@1358 /* @1358 = ~Well, as you may have noticed, I can move around well enough without anybody noticing in urban surroundings and even in caves or dungeons, but forests and bushes seem to cause some trouble. You don't suppose that you could give me a few hints concerning that? In exchange I will promise to keep a more civil tone with you.~ */
== BVALYGA
@1359 /* @1359 = ~Well, I don't think that would be too much trouble - perhaps later when <CHARNAME> is not so busy?~ */
== BM#AMBER
@1360 /* @1360 = ~Great! It's a date then.~ */
EXIT