       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe9.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
           *> arithmetic verb ADD , SUBSTRACT , DIVIDE , MULTIPLY AND COMPUTE
           *> arithmetic verb can't do with level number such as 77
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-A PIC 9(2) VALUE 22.
           77 WS-B PIC 9(2) VALUE 11.
           77 WS-C PIC 9(2) VALUE 01.
           77 WS-D PIC 9(2) VALUE 22.
           77 WS-E PIC 9(3) VALUE 11.
           77 WS-F PIC 9(2) VALUE 77.
           77 WS-G PIC 9(3) VALUE ZERO.
           77 WS-H PIC 9(3) VALUE ZERO.
           77 WS-NUM1 PIC 9(3) VALUE 16.
           77 WS-NUM2 PIC 9(3) VALUE 2.
           77 WS-I PIC S9(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           ADD WS-A WS-B WS-C WS-D WS-E WS-F TO WS-G.
           ADD WS-A WS-B WS-C WS-D WS-E WS-F TO WS-H.
           SUBTRACT WS-A WS-C FROM WS-F GIVING WS-I.
            *> ws-i = ws-f - ws-a - ws-c
           MULTIPLY WS-A BY WS-C  WS-E.
           DIVIDE WS-NUM1 INTO WS-NUM2.
           *> WS-NUM2 = WS-NUM1 / WS-NUM2
           *> DIVIDE WS-NUM1 BY WS-NUM2 GIVING WS-G REMAINDER WS-H.

            DISPLAY " ADD RESULT : " WS-G
            DISPLAY " ANOTHER RESULT : " WS-H
            DISPLAY " SUBTRACT RESULT : " WS-I
            DISPLAY " MULTIPLY RESULT : " WS-C
            DISPLAY " ANOTHER MULTIPLY RESULT : " WS-E
            DISPLAY " DIVIDE VALUE : " WS-NUM2
            *> DISPLAY " DIVIDE VALUE USE GIVING : " WS-G
            DISPLAY " REMAINDER : "WS-H
            STOP RUN.

       END PROGRAM Exe9.
