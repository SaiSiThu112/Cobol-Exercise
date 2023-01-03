       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe1.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
              *> type of data declaration in cobol
       WORKING-STORAGE SECTION.
           77 WS-NUM PIC 9(1) VALUE 1.
           77 WS-ALPHA PIC A(1) VALUE 'A'.
           77 WS-ALPHANUM PIC X(2) VALUE "G2".
           77 WS-DECNUM PIC 9V9(2) VALUE 2.2.
           77 WS-SIGN PIC S9(2) VALUE -7.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
               DISPLAY "NUM : " WS-NUM
               DISPLAY "ALPHA : " WS-ALPHA
               DISPLAY "ALPHANUM : " WS-ALPHANUM
               DISPLAY "DESCENDING NUM : " WS-DECNUM
               DISPLAY "SIGN NUM : " WS-SIGN

            STOP RUN.

       END PROGRAM Exe1.
