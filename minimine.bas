GR.0
P=DPEEK(88)
W=40:L=24
FOR I=1 TO W
	POKE P,128:POKE P+W*23,128
	P=P+1
NEXT I
FOR I=1 TO L
	POKE P,128:POKE P+W-1,128
	P=P+W
NEXT I
P=DPEEK(88)+11*40+19
Q=P
POKE P-5,10
MOVE = 0: BREAK = 1: BUILD = 2: FIGHT = 3
STATE = MOVE
DO
	S=STICK(0)
	DX = (S = 5 OR S = 6 OR S = 7) - (S = 9 OR S = 10 OR S = 11)
	DY = (S = 5 OR S = 9 OR S = 13) - (S = 6 OR S = 10 OR S = 14)
	IF STATE = MOVE
	'check for falling
	'check for l/r then u/d
		IF P+W=0
			'UPDATE P
			Q=P+W
		ELIF DX<>0 OR DY<>0
			N=P+DX+W*DY
			'CHECK N-POS FOR WALL OR BRICK
			IF PEEK(N)<>0 AND PEEK(N)<>128
				STATE=BREAK
			ELIF DX<>0
				'MOVE SIDEWAYS OR DIAGONAL
				IF PEEK(N)=0 THEN Q=N
			ENDIF
		ENDIF
	ELIF STATE = BREAK
		POKE N,PEEK(N)-1
		IF PEEK(N)=0 OR S=15 THEN STATE = MOVE
	ELIF STATE = BUILD
	ELIF STATE = FIGHT
	ENDIF
PAUSE 1
POKE P,0
POKE Q,1
P=Q
IF KEY() THEN EXIT
LOOP
