0 SCREEN 1:CLEAR 16000!: DEFINT A: INPUT "Screen 1 or 2?";N
1 COLOR 0,N: DIM A(3)
3 DRAW "bm1,1c11r1": GET (1, 1)-(1, 1), A
4 REM k(400)
5 CLS : A = 100: B = 160
7 F = 15
8 E$ = "n"
9 S = 1
10 A$ = INKEY$: IF A$ = "" THEN GOTO 70
15 IF A$ = "6" THEN IF F <> 0 OR E$ = "y" THEN DRAW "r=" + VARPTR$(S): B = B + S ELSE B = B + S
20 IF A$ = "8" THEN IF F <> 0 OR E$ = "y" THEN DRAW "u=" + VARPTR$(S): A = A - S ELSE A = A - S
25 IF A$ = "2" THEN IF F <> 0 OR E$ = "y" THEN DRAW "d=" + VARPTR$(S): A = A + S ELSE A = A + S
30 IF A$ = "4" THEN IF F <> 0 OR E$ = "y" THEN DRAW "l=" + VARPTR$(S): B = B - S ELSE B = B - S
35 IF A$ = "1" THEN IF F <> 0 OR E$ = "y" THEN DRAW "g=" + VARPTR$(S): A = A + S: B = B - S ELSE A = A + S: B = B - S
40 IF A$ = "9" THEN IF F <> 0 OR E$ = "y" THEN DRAW "e=" + VARPTR$(S): A = A - S: B = B + S ELSE A = A - S: B = B + S
45 IF A$ = "7" THEN IF F <> 0 OR E$ = "y" THEN DRAW "h=" + VARPTR$(S): A = A - S: B = B - S ELSE A = A - S: B = B - S
50 IF A$ = "3" THEN IF F <> 0 OR E$ = "y" THEN DRAW "f=" + VARPTR$(S): A = A + S: B = B + S ELSE A = A + S: B = B + S
55 IF A$ = "q" THEN END
58 IF A$ = "s" THEN 150
59 IF A$="b" THEN LOCATE 1,1:INPUT C:COLOR C,N
60 IF A$ = "5" AND F = 0 THEN DRAW "c=" + VARPTR$(D): F = D: GOTO 100
65 IF A$ = "5" AND F <> 0 THEN DRAW "c0": D = F: F = 0
70 IF F = 0 AND E$ = "n" THEN PUT (B, A), A, XOR
72 IF F = 0 AND E$ = "y" THEN DRAW "c10u2r2d2l2c0u2r2d2l1u1bg1"
75 IF A$ = "0" THEN S = S + 2: IF S = 5 THEN S = 1
80 IF A$ = "." THEN 102
85 IF A$ = CHR$(13) THEN 115
90 IF A$ = "+" THEN DRAW "br10": B = B + 10
93 IF A$ = "-" THEN DRAW "bl10": B = B - 10
95 IF A$ = "/" THEN IF E$ = "y" THEN E$ = "n" ELSE E$ = "y"
98 IF A$ = "*" THEN 140
99 IF F = 0 AND E$ = "n" THEN PUT (B, A), A, XOR
100 GOTO 10
102 LOCATE 1, 1: INPUT F
105 IF F > 250 THEN 102
108 DRAW "c=" + VARPTR$(F)
110 GOTO 10
115 LOCATE 1, 1: INPUT Q
125 CIRCLE (B, A), Q, F
130 GOTO 100
140 LINE (B, A)-(B, A), 0
141 PAINT (B, A), F, F
145 GOTO 100
150 INPUT Q$
155 DEF SEG=&HB800
160 BSAVE Q$+".pic",0,&H4000
165 OPEN Q$+".pac" FOR OUTPUT AS #1
170 WRITE #1,C,N
175 CLOSE
