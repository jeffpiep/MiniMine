GR.0
w=40
P=DPEEK(88)
FOR I=0 TO 255
POKE P+I,I
NEXT I
DO
IF KEY() THEN EXIT
LOOP
