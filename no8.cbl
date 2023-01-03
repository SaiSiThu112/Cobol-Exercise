       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe8.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
           *> move value to different location
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-A PIC X(2) VALUE "G2".
           77 WS-B PIC X(2) VALUE SPACES.
           77 WS-C PIC X(2) VALUE SPACES.
           77 WS-D PIC X(2) VALUE SPACES.
       PROCEDURE DIVISION.
           MOVE WS-A TO WS-B , WS-C ,WS-D.
       MAIN-PROCEDURE.

            DISPLAY WS-B WS-C WS-D
            STOP RUN.

       END PROGRAM Exe8.
