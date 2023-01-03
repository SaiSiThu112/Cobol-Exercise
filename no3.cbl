       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
           *> move verb
           *> to move data from one to other data
       WORKING-STORAGE SECTION.
           77 WS-A PIC 9 VALUE 5.
           77 WS-B PIC 9 VALUE ZERO.
       PROCEDURE DIVISION.
           MOVE WS-A TO WS-B.
       MAIN-PROCEDURE.

            DISPLAY WS-B
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
