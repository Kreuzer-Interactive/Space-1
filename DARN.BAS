130 DEFINT A
131 DIM A(500)
135 CLS
140 SCREEN 1
144 FOR I=1 TO 100:NEXT I
150 Q$="TITLE"
151 OPEN Q$+".pac" FOR INPUT AS #1
152 INPUT #1,C,N
153 CLOSE
154 CLS:COLOR C,N
155 DEF SEG=&HB800
160 BLOAD Q$+".pic",0
162  SOUND 525.25,18.2:SOUND 783.99,18.2/2:SOUND 698.46,18.2/6:SOUND 659.26,18.2/6:SOUND 587.33,18.2/6:SOUND 1046.6,18.2:SOUND 783.99,18.2/2:SOUND 698.46,18.2/6:SOUND 659.26,18.2/6:SOUND 587.33,18.2/6
163  SOUND 1046.5,18.2:SOUND 783.99,18.2/2:SOUND 698.46,18.2/6:SOUND 659.26,18.2/6:SOUND 698.46,18.2/6:SOUND 587.33,18.2
165 GET (200,140)-(230,110),A
167 LINE (200,140)-(230,110),0,BF
170 FOR I=200 TO 289
171 PUT (I,310-I),A,XOR
172 FOR G=1 TO 300:NEXT G
175 PUT (I,310-I),A,XOR
180 NEXT I:COLOR 0,1:CLS
181 PRINT "After flying for lightyears in your     Intergalactic Glider, You are only a    few thousand miles away from your       destination, The Planet Z."
182 PRINT "Your filled with joy, until your super  space suit 19000 gets caught in the     galatic windshield wiper causing the    internal radaition component to overload  destroy your super space suit and     causing the ship to hurtle downward!"
183 FOR I=1 TO 40000!:NEXT I:PLAY "<<e05e-07p07e-07p06c02"
184 CLS
185 Q$="crash"
191 OPEN Q$+".pac" FOR INPUT AS #1
192 INPUT #1,C,N
193 CLOSE
194 CLS:COLOR C,N
195 DEF SEG=&HB800
200 BLOAD Q$+".pic",0
205 GET (5,100)-(30,75),A
206 LINE (5,100)-(30,75),0,BF
210 FOR I=1 TO 99
211 PUT (I+5,75+I),A,XOR
215 FOR G=1 TO 200:NEXT G
220 PUT (I+5,75+I),A,XOR
225 NEXT I
230 FOR I=130 TO 50 STEP -8:SOUND I,.2:SOUND 100,.1
235 NEXT I
240 LOCATE 10,15:PRINT "Crash!!!"
241 PLAY "mfp03"
242  SOUND 525.25,18.2:SOUND 783.99,18.2/2:SOUND 698.46,18.2/6:SOUND 659.26,18.2/6:SOUND 587.33,18.2/6:SOUND 1046.6,18.2:SOUND 783.99,18.2/2:SOUND 698.46,18.2/6:SOUND 659.26,18.2/6:SOUND 587.33,18.2/6
243  SOUND 1046.5,18.2:SOUND 783.99,18.2/2:SOUND 698.46,18.2/6:SOUND 659.26,18.2/6:SOUND 698.46,18.2/6:SOUND 587.33,18.2
244 FOR I=1 TO 4200:NEXT I
250 CLS
251 PRINT "Notes: Type in lowercase letters. You   start the game with a survival knife."
252 PRINT "Commands are north,south,east,west,use, get,push, climb, and look."
253 PRINT "Hit a key to begin!"
254 PLAY "c5e9c9<g5>c9<g9e5g9e9c11p8c11"
256 A$=INKEY$:IF A$="" THEN 256
260 Q$="pic0":GOSUB 300
262 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
263 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
264 IF A$="look" THEN LOCATE 2,1:PRINT "Your ship has crashed in a chasm. Some  liquid is leaking from your ship."
266 IF A$="south" OR A$="north" OR A$="west" THEN PRINT "The stone wall of the chasm is in your  way."
268 IF A$="east" THEN 275
270 IF A$="get liquid" AND N$="" THEN PRINT "You get the cold nitrogen and put it in a freezer canister.":N$="y":S=S+2
272 IF A$="get stone" OR A$="get ship" THEN PRINT "You can't get that!"
274 SOUND 1000,1:GOTO 262
275 Q$="pic1":GOSUB 300
277 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
278 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
279 IF A$="look" THEN PRINT "You are in a chasm. A few stones and    plants are scattered about. A into a    cave catches your attention."
281 IF A$="west" THEN GOTO 260
282 IF A$="north" THEN 320
283 IF A$="south" OR A$="east" THEN PRINT "The jagged ridge blocks your path."
285 IF A$="climb ridge" OR A$="climb wall" THEN PRINT "You slip and crack your head open on    the rock below!":GOTO 900
287 IF A$="get plant" AND P$="" THEN PRINT "You get the plant. It almost floats!":P$="y":S=S+2
289 SOUND 2000,1:GOTO 277
299 END
300 'Joe
301 OPEN Q$+".pac" FOR INPUT AS #1
302 INPUT #1,C,N
303 CLOSE
304 CLS:COLOR C,N
305 DEF SEG=&HB800
310 BLOAD Q$+".pic",0
312 LOCATE 25,1:PRINT "Score-"S"out of 41";
315 RETURN
320 Q$="pic2":GOSUB 300
322 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
325 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
327 IF A$="look" THEN PRINT "You are in a cave passage. There are a few stones and vines in it.
329 IF A$="south" THEN 275
330 IF A$="north" OR A$="west" THEN PRINT "The passage does not lead that way."
332 IF A$="east" THEN PRINT "A trap door opens under you!":FOR I=1 TO 5000:NEXT I:GOTO 340
334 IF A$="get stone" AND ST$="" THEN PRINT "You get a stone.":ST$="y":S=S+1
336 IF A$="get vine" THEN PRINT "They are tight against the walls."
338 SOUND 1000,.5:SOUND 2000,.3:SOUND 6000,2:GOTO 322
340 Q$="pic4":GOSUB 300
342 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
344 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
346 IF A$="look" THEN PRINT "In this room is a hole with a board     across it and a strange plant."
348 IF A$="get plant" THEN PRINT "It won't come loose."
350 IF A$="get balls" OR A$="get bulbs" OR A$="get ball" THEN IF BA$="" THEN PRINT "You get them":BA$="y":S=S+3
352 IF A$="south" THEN PRINT "The vines wrap around you and soon      strangle you to death.":GOTO 900
354 IF A$="west" OR A$="east" THEN PRINT "There is a cave wall in that direction."
355 IF A$="north" THEN 360
357 IF A$="climb vine" OR A$="climb hole" THEN PRINT "You climb down into the room below.":GOTO 370
359 SOUND 9000,5:GOTO 342
360 PRINT "Hit 1 to walk on the left side, Hit 2   to walk on the right side and hit 3 to  walk on the board."
361 INPUT A
362 IF A=1 OR A=2 THEN PRINT "You slip and fall in. You notice the    hole isn't that deep, but since you     landed on your head it doesn't matter.":GOTO 900
364 IF A=3 THEN 390
365 GOTO 900
370 Q$="pic3":GOSUB 300
372 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
374 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
376 IF A$="climb wall" THEN PRINT "You can't!"
377 IF A$="look" THEN PRINT "You are in a cave room with a menacing  plant."
378 IF A$="use knife" AND STAB$="" THEN PRINT "You brutally stab the plant to death!":S=S+3:STAB$="y"
380 IF A$="south" OR A$="east" OR A$="west" THEN PRINT "You can't go that way!"
382 IF A$="north" AND STAB$="" THEN PRINT "The plant wraps around you and pulls    you into the body where you're digested":GOTO 900
384 IF A$="north" AND STAB$="y" THEN 410
386 IF A$="get plant" THEN STAB$="":A$="north":GOTO 382
388 SOUND 1000,.5:SOUND 2000,.3:SOUND 6000,2:GOTO 372
390 Q$="pic7":GOSUB 300
392 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
394 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
396 IF A$="look" THEN PRINT "You are on a ledge. On the wall is:high red, low green, high brown, low red.":IF LA$="" THEN LA$="y":S=S+1
398 IF A$="north" THEN GOTO 340
400 IF A$="east" THEN 430
402 IF A$="south" OR A$="west" THEN PRINT "You'd fall off the ledge!"
404 IF A$="get plant" THEN PRINT "The plant attacks you! You can't get it."
406 IF A$="climb wall" THEN PRINT "The wall gets mad and pushes you into   the lava!":GOTO 900
408 SOUND 1000,.3:SOUND 2000,.5:SOUND 6000,2:GOTO 392
410 Q$="pic6":GOSUB 300
412 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
414 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
416 IF A$="south" THEN 370
418 IF A$="west" OR A$="north" THEN PRINT "A wall blocks your path."
420 IF A$="east" AND UN$="" THEN PRINT "The lava rises up and burns you to      death":GOTO 900
422 IF A$="look" THEN PRINT "You are in a chamber with a hole big    enough for you to fit through past the  lava (which looks alive) to the east."
424 IF A$="get lava" THEN PRINT "As you reach for it is oozes around you and burns you to death!":GOTO 900
426 IF A$="use liquid" OR A$="use nitrogen" THEN IF UN$="" AND N$="y" THEN PRINT "The nitrogen freezes the lava!":S=S+2:UN$="y"
428 IF A$="east" AND UN$="y" THEN 450
429 SOUND 1000,.5:SOUND 2000,.3:SOUND 6000,2:GOTO 412
430 Q$="pic8":GOSUB 300
432 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
434 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
435 IF A$="look" THEN PRINT "Your are on a ledge overlooking a       valley. You can see writing in the sky  that says   'get me plant balls'"
436 IF A$="use balls" OR A$="use bulbs" THEN IF BA$="y" THEN PRINT "Hark! I sighteth a flying saucar in thy distance!":FOR I=1 TO 8000:NEXT I:GOTO 442 ELSE PRINT "You don't have any!"
437 IF A$="north" THEN PRINT "You can't go that way."
438 IF A$="east" OR A$="west" THEN PRINT "The ledge is too thin in that direction."
439 IF A$="south" THEN 390
440 SOUND 1000,.5:SOUND 2000,.3:SOUND 6000,2:GOTO 432
442 PRINT "A wierd looking alien walks out of the  space ship! You give him the plant      bulbs.":GOSUB 810
443 FOR I=1 TO 13000:NEXT I:CLS
444 Q$="pica":GOSUB 300
446 LO$="y":S=S+4:BA$="n"
448 A$=INKEY$:IF A$="" THEN 448 ELSE 430
450 Q$="pic11":GOSUB 300:GOSUB 812
452 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
454 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
456 IF A$="look" THEN PRINT "You have finally escaped the cave! You  are now in a valley."
458 IF A$="east" THEN PRINT "The lava has unfroze. It would burn you up!"
460 IF A$="west" THEN 470
461 IF A$="north" OR A$="south" THEN PRINT "Your path is blocked."
462 IF A$="get tree" THEN PRINT "The tree is firmly rooted in a bed of   very possesive soil."
464 IF A$="get bush" THEN PRINT "The bush is firmly rooted in a bed of   very pssesive soil."
466 IF A$="get lava" THEN PRINT "It leaps up into the air and burns you  to death!":GOTO 900
468 SOUND 8000,4:GOTO 452
470 Q$="pic12":GOSUB 300
472 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
474 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
476 IF A$="look" THEN PRINT "A path leads into a forest."
478 IF A$="north" THEN 510
480 IF A$="west" THEN 490
482 IF A$="east" THEN 450
484 IF A$="south" THEN PRINT "There is a high cliff in that directon."
486 IF A$="get stone" THEN PRINT "Under the stone is a small, round ball. As you reach for it a poison spike      shoots into you!":GOTO 900
488 SOUND 1000,.3:SOUND 2000,.5:SOUND 6000,2:GOTO 472
490 Q$="pic13":GOSUB 300
492 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
494 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
496 IF A$="look" THEN PRINT "There is a path leading into a forest."
498 IF A$="south" THEN PRINT "The cliff blocks your path."
500 IF A$="west" THEN PRINT "A pool of lava lies in that direction."
502 IF A$="north" THEN 510
504 IF A$="east" THEN 470
506 IF A$="get stone" THEN PRINT "The stone runs away!"
508 SOUND 1000,.3:SOUND 2000,.5:SOUND 6000,2:GOTO 492
510 Q$="pic14":GOSUB 300
511 IF SAV$="" THEN SAV$="y":GOSUB 830
512 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
514 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
516 IF A$="look" AND US$="" THEN PRINT "There strange pieces of metal in front   of you.
518 IF A$="look" AND US$="y" THEN PRINT "There is a menacing creature that looks like an armidillo in front of you!"
520 IF A$="south" THEN 490
522 IF A$="east" THEN 470
524 IF A$="use stone" AND US$="" AND ST$="y" THEN PRINT "You throw the stone and the two pieces  of metal clamp down upon it!":US$="y":S=S+2
526 IF A$="west" THEN PRINT "The foliage is too dense to pass."
528 IF A$="north" AND US$="" THEN PRINT "Two pieces of metal clamp on your leg.  Your leg is broken off and you soon     die!":GOTO 900
530 IF A$="north" AND US$="y" AND UL$="y" THEN 540
532 IF A$="north" AND US$="y" THEN PRINT "The creature pounces on you and tears   you apart!":GOTO 900
533 IF A$="get carcass" OR A$="get body" OR A$="get creature" THEN IF UL$="y" AND DB$="" THEN PRINT "You get the creature's dead body.":DB$="y"
534 IF A$="use pistol" OR A$="use gun" OR A$="use l.o. pistol" THEN IF US$="y" AND LO$="y" THEN GOTO 537
536 SOUND 1000,.3:SOUND 2000,.5:SOUND 6000,2:GOTO 512
537 FOR I=3000 TO 1000 STEP -50:SOUND I,.1:NEXT I
538 SOUND 100,.5:SOUND 150,.3:SOUND 50,.4:SOUND 100,.4
539 S=S+2:LO$="n":UL$="y":PRINT "The creature now a bloody carcass.":GOTO 512
540 Q$="pict":GOSUB 300
542 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
544 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
546 IF A$="look" THEN PRINT "You are aproacing the mountains. A card lies on the ground."
548 IF A$="get card" AND CARD$="" THEN PRINT "You get the key card.":CARD$="Y":S=S+1
550 IF A$="south" THEN PRINT "As you start to walk back you step on a button. A mine below you explodes!":GOTO 900
552 IF A$="west" OR A$="east" THEN PRINT "The foliage is much too dense in that   direction!"
554 IF A$="north" THEN 560
556 IF MID$(A$,1,3)="use" THEN PRINT "You do not need to use that here."
558 PLAY "<f+06g+06a+06f+06>":GOTO 542
560 Q$="pic17":GOSUB 300
562 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
564 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
566 IF A$="look" AND BF$="" THEN PRINT "The lava just moved! You can see a code  box against the cliff.":BF$="y":GOTO 570
568 IF A$="look" AND BF$="y" THEN PRINT "A square of tree bark is black instead   of brown!":BF$=""
570 IF A$="use box" OR A$="use machine" THEN 584
572 IF A$="push tree" THEN S=S+3
574 IF A$="get lava" OR A$="get tree" THEN PRINT "You can't"
576 IF A$="climb tree" THEN PRINT "When your almost to the top you slip    and fall to your death!":GOTO 900
578 IF A$="south" THEN 540
580 IF A$="push tree" OR A$="push square" OR A$="push bark" THEN PRINT "The bark swirls to reveal a door!":FOR I=1 TO 10000:NEXT I:GOTO 620
582 SOUND 7000,3:GOTO 562
584 Q$="picb":GOSUB 300
586 LOCATE 1,1:PRINT "High row 1,2,3 low row 4,5,6":LOCATE 21
587 A$=INKEY$:IF A$="" THEN 587 ELSE ZT=ZT+1
588 IF ZT=1 THEN 590 ELSE IF ZT=2 THEN 592 ELSE IF ZT=3 THEN 594 ELSE 596
590 IF A$="2" THEN SOUND 4000,.3:SOUND 500,1:GOTO 587
591 SOUND 4000,.3:SOUND 50,4:GOTO 598
592 IF A$="4" THEN SOUND 4000,.3:SOUND 500,1:GOTO 587
593 SOUND 4000,.3:SOUND 50,4:GOTO 598
594 IF A$="1" THEN SOUND 4000,.3:SOUND 500,1:GOTO 587
595 SOUND 4000,.3:SOUND 50,4:GOTO 598
596 IF A$="6" THEN SOUND 4000,.3:SOUND 500,1:IF FAS$="" THEN S=S+3:GOTO 600 ELSE 600
597 SOUND 4000,.3:SOUND 50,4:GOTO 598
598 PRINT "A hand pops out of the slot and rips    off your head!":GOTO 900
600 Q$="pic18":GOSUB 300
602 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
604 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
606 IF A$="look" THEN PRINT "You are in a hanger. You see a ungassed ship, a gas pump, and some tools."
608 IF A$="use pump" OR A$="use gas pump" THEN IF GF$="" THEN PRINT "The gas pump is broken!"
610 IF A$="get tools" THEN TL$="y":PRINT "You get them."
612 IF A$="use tools" THEN IF TL$="y" THEN PRINT "You fix the gas pump!":GF$="y" ELSE PRINT "You don't have any tools"
614 IF A$="use pump" OR A$="use gas pump" THEN IF GF$="y" THEN PRINT "You fill the ship with gas.":SG$="y"
616 IF A$="use ship" THEN IF SG$="" THEN PRINT "It needs gas!" ELSE IF FTS$="" THEN S=S+1:PRINT "The ship won't fit through the hanger    door! Nice try.":FT$="y"
617 IF A$="south" THEN 560
618 IF A$="north" OR A$="west" OR A$="east" THEN PRINT "There is no door in that direction!"
619 SOUND 1000,.5:SOUND 500,1:GOTO 602
620 Q$="pic9":GOSUB 300
622 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
624 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
626 IF A$="look" THEN PRINT "After walking around in the tree you    exited it and come to a thin walkway."
628 IF A$="south" OR A$="north" OR A$="west" THEN PRINT "You'd fall into the lava!"
630 IF A$="east" THEN 640
632 IF A$="get plant" THEN PRINT "You can't pull it out of the rock."
634 IF A$="get vine" THEN PRINT "The vine wraps around you. You break    free, but only to be eaten by a giant   two armed green serpent!":GOTO 900
636 IF A$="climb wall" THEN PRINT "It would not be smart to climb down     into the lava."
638 SOUND 6000,1:SOUND 3000,2:SOUND 9000,5:GOTO 622
640 Q$="pic10":GOSUB 300:IF DSA$="" THEN GOSUB 802
642 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
644 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
646 IF A$="west" THEN 620
648 IF A$="south" OR A$="north" THEN IF DSA$="" PRINT "The serpent alien dives at you and      swallows you whole!":GOTO 900
650 IF A$="east" AND DSA$="" THEN PRINT "The serpent alien tears your head off   and throws your body into the blazing   lava":GOTO 900
651 IF A$="use carcass" OR A$="use body" OR A$="use creature" THEN IF DSA$="y" THEN 686
652 IF A$="use carcass" OR A$="use body" OR A$="use creature" THEN IF DB$="y" THEN PRINT "You throw the carcass. The creature     reaches for it, but loses its balance   and falls into the lava":S=S+3:DSA$="y"
653 IF A$="look" THEN PRINT "You can see a cave entrance.";:IF DSA$="" THEN PRINT "A threatening alien is in front of you!"
654 IF A$="use pistol" OR A$="use gun" OR A$="use l.o. Pistols" THEN IF DSA$=""THEN PRINT "You shoot it three times in the head.   It gets mad and hurls itself towards    you crushing you with its weight.":GOTO 900
656 IF A$="use plant" AND P$="y" THEN IF DSA$="y" THEN PRINT "You eat the plant and float across the  lava.":FOR I=1 TO 14000:NEXT I:S=S+1:GOTO 670
658 IF A$="east" AND DSA$="y" THEN PRINT "You cannot get across the lava."
660 SOUND 1000,1:SOUND 500,2:SOUND 50,.5:GOTO 642
670 Q$="pic5":GOSUB 300
672 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
674 LOCATE 2,1:PRINT "                                                                                ":LOCATE 2,1
676 IF A$="look" THEN PRINT "You are on a ledge. A wierd plant and   a door catches your attention."
678 IF A$="get plant" THEN PRINT "Wait! Thats not a plant, its a alien!   And it wouldn't like you to get it!"
680 IF A$="north" THEN 690
682 IF A$="west" OR A$="east" OR A$="south" THEN PRINT "There is no passage in that direction."
684 IF A$="use plant" THEN PRINT "You already ate it!"
686 IF MID$(A$,1,3)="get" THEN PRINT "You can't get that."
688 PLAY "<<c20d20e20d20c10>>":GOTO 672
690 Q$="pic16":GOSUB 300
692 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
694 LOCATE 2,1:PRINT "                                                                                                                       ":LOCATE 2,1
696 IF A$="north" THEN 670
698 IF A$="west" OR A$="east" THEN PRINT "There is no passage in that direction."
700 IF A$="south" AND OSD$="" THEN PRINT "The door won't open!"
702 IF A$="use tools" THEN PRINT "They don't help!"
704 IF A$="south" AND OSD$="y" THEN 710
705 IF A$="look" THEN PRINT "You are in an entrance room to a base.  You see various plants a mechanical     door and a indentification slot."
706 IF A$="use card" OR A$="use keycard" THEN IF CARD$="Y" AND OSD$="" THEN OSD$="y":S=S+1:PRINT "The door opens."
708 SOUND 10000,3:SOUND 100,.5:GOTO 692
710 Q$="pic21":GOSUB 300
712 LOCATE 1,1:PRINT "                 ":LOCATE 1,1:INPUT A$
714 LOCATE 2,1:PRINT "                                                                                                                               ":LOCATE 2,1
716 IF A$="look" THEN PRINT "You are in the control room. You see a  broken beamer some tools and a control  panel."
718 IF A$="use beamer" AND BF$="" THEN PRINT "It malfunctions and blows you up!":GOTO 900
720 IF A$="get tools" AND TOS$="" THEN PRINT "You get the tools":TOS$="y"
722 IF A$="use tools" AND TOS$="y" AND TL$="y" THEN BF$="y":PRINT "You fix the beamer!":GOTO 724
723 IF A$="use tools" THEN PRINT "You don't have enough to fix the beamer."
724 IF A$="west" OR A$="north" OR A$="east" THEN PRINT "There is no door that way."
725 IF A$="use panel" OR A$="use control panel" OR A$="use controls" THEN PRINT "You activate the beamer.":BA$="y"
726 IF A$="south" THEN PRINT "You can't fit through the door!"
727 IF A$="use beamer" AND BF$="y" AND BA$="y" THEN PRINT "You beam up to a friendly ship! You     have escaped!":GOTO 1000
728 SOUND 6000,3:SOUND 100,.5:GOTO 712
802 PLAY "<d10e10f+10g+10"
803 PLAY "<d10e10f+10g+10"
804 PLAY ">a+08f+08g+08e08f+08d"
805 PLAY "<c12d12e12f+12"
806 PLAY "<c12d12e12f+12"
808 PLAY ">g+08e08f+08d08e-08c04>>"
809 RETURN
810 PLAY "<<g04b04>d04g04b04>d04g04b04>d04g<"
811 RETURN
812 PLAY "<<c5d5e5f+5g+5a+5"
813 PLAY ">c5d5e5f+5g+5a+5>c"
814 PLAY "<<a+5g+5f+5e5d5e5f+3g+3d4c4>>"
815 RETURN
820 OPEN "sav.sav" FOR INPUT AS #1
824 INPUT #1,SAV$,LO$,ST$,P$,S
826 PRINT "Loaded successfuly!"
828 FOR I=1 TO 5000:NEXT I
829 CLOSE:GOTO 510
830 LOCATE 1,1:PRINT "Save the game?"
831 A$=INKEY$:IF A$="" THEN 831 ELSE IF A$="y" THEN 832 ELSE RETURN
832 OPEN "sav.sav" FOR OUTPUT AS #1
834 WRITE #1,SAV$,LO$,ST$,P$,S
836 PRINT "Saved successfuly!"
838 FOR I=1 TO 5000:NEXT I
839 CLOSE:RETURN
900 FOR I=1 TO 20000:NEXT I
904 Q$="death":GOSUB 300
906 LOCATE 1,1:PRINT "Hit a to restore or b to restart."
908 A$=INKEY$:IF A$="" THEN 908
910 IF A$="a" THEN RUN 820
915 RUN 260
1000 FOR I=1 TO 8000:NEXT I
1001 Q$="ended":GOSUB 300
1002 PLAY "g05d04b-08g02g08f04g08a-08b-08c03a-04"
1003 PLAY "<g05d04b-08g02g08f04g08a-08b-08c03a-04"
1004 PLAY ">g05d04b-08g02g08f04g08a-08b-08c03a-04"
1005 PLAY "e-04d08c04d08e-04g03d02<<g08b-08g08g"
1010 A$=INKEY$:IF A$="" THEN 1010
1015 LOCATE 23,1:PRINT "Your total score is "S" out of 41"
1016 PRINT ""
1020 PRINT "Using the beamer you beam up to a       friendly ship where you are greeted"
1025 PRINT "by commander Jib. The ship flies you    to your destination, the plant Z."
1030 PRINT "I hope you enjoyed the game!"
1035 FOR I=1 TO 40000!:NEXT I
1040 PRINT "Designed by"
1041 PRINT "ROB KREUZER"
1042 PRINT "Jon Kreuzer"
1043 PRINT ""
1045 FOR I=1 TO 5000:NEXT I
1046 PRINT "Programmed by"
1047 PRINT " JON KREUZER"
1048 PRINT "":A$="inkey$
1050 FOR I=1 TO 5000:NEXT I
1051 PRINT "Graphics by"
1052 PRINT "Rob Kreuzer"
1053 PRINT "Jon Kreuzer"
1054 PRINT "":A$=INKEY$
1055 FOR I=1 TO 5000:NEXT I
1056 PRINT "Music and sound by"
1057 PRINT "Jon Kreuzer"
1058 PRINT "":A$="inkey$
1059 PRINT "Hit s to restart"
1060 A$=INKEY$:IF A$="" THEN 1060
1061 IF A$="s" THEN 260
1062 SYSTEM
