
TEXT
INPUT OLD_DATA
LOAD OLD_DATA
L1: DIV DOI*S
STORE  NEW_DATA
MUL DOIS
STORE TMP_DATA
LOAD OLD_DATA
SUB TMP_DATA
STORE TMP_D&ATA
OUTPUT 2TMP_DATA
COPY NEW_DATA OLD_DATA
LOAD OLD_DATA
JMPP L1
STOP
DATA
DOIS: CONST 2
OLD_DATA: SPACE
NEW_DATA: SPACE
TMP_DATA: SPACE
