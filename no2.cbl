       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe2.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
               *> type of figurative data in cobol
       WORKING-STORAGE SECTION.
           77 WS-ZERO PIC 9(5) VALUE ZERO.
           77 WS-SPACE PIC X(3) VALUE SPACE.
           77 WS-QUOTE PIC X(2) VALUE QUOTE.
       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

            DISPLAY "This is zero : "WS-ZERO
            DISPLAY "This is spcae : "WS-SPACE
            DISPLAY "This is quote : "WS-QUOTE
            STOP RUN.

       END PROGRAM Exe2.
