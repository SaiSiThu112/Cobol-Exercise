       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe61-62.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 NUM PIC 9(04) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM CONTINUE-PARA

            STOP RUN.

           NEXT-SENTENCE-PARA.
            DISPLAY "ENTER VALUE 999 TO SKIP THE IF NEXT SENTENCE"

               ACCEPT NUM
               IF NUM > 999
                    NEXT SENTENCE
                    DISPLAY "IN NEXT SENTENCE "
               ELSE
                   DISPLAY " NOT IN THE NEXT SENTENCE ".

           CONTINUE-PARA.
            DISPLAY "ENTER VALUE 999 TO SKIP AND CONTINUE WITH NEXT "
            ACCEPT NUM
            IF NUM > 999
                CONTINUE
                DISPLAY "IN CONTINUE"
            ELSE
                DISPLAY "NOT IN CONTINUE ".

       END PROGRAM Exe61-62.
