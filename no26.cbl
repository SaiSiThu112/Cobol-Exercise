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
           77 WS-AGE PIC 9(3) VALUE ZERO.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           PERFORM ACCEPT-PARA
           PERFORM PROCESS-PARA
            STOP RUN.

           ACCEPT-PARA.
            DISPLAY " Enter your name"
            ACCEPT WS-NAME
            DISPLAY " Enter your age that is greater than 18"
            ACCEPT WS-AGE
            DISPLAY " Enter your gender (Male,Female)"
            ACCEPT WS-GENDER.

           PROCESS-PARA.
            IF WS-AGE <= 0
                DISPLAY  WS-AGE " does not exit in the world "
                GOBACK
              ELSE IF WS-AGE <= 18
                DISPLAY " Your Name : " WS-NAME
                DISPLAY " Your Gender : " WS-GENDER
                DISPLAY " Your Age : " WS-AGE

              ELSE
                 DISPLAY " Your Name : " WS-NAME
                DISPLAY " Your Gender : " WS-GENDER
                DISPLAY " Your Age : " WS-AGE

              END-IF.
       END PROGRAM Exe23.
