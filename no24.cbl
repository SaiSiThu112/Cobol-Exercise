       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe23.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
           *> if condition with ACCEPT Verb
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-NAME PIC A(10) VALUE SPACES.
           77 WS-GENDER PIC A(4) VALUE SPACES.
       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

            DISPLAY " Enter your name"
            ACCEPT WS-NAME
            DISPLAY " Enter your gender (Male,Female)"
            ACCEPT WS-GENDER

            IF WS-GENDER = "Male"
                DISPLAY " HELLO MR " WS-NAME
              ELSE
                DISPLAY " HELLO MISS " WS-NAME
            END-IF.

            STOP RUN.

       END PROGRAM Exe23.
