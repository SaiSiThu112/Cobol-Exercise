       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe49.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 I PIC 9(01) VALUE IS ZERO.
           77 J PIC 9(01) VALUE IS ZERO.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

               *> IF I > 3
                   *> DISPLAY "CNA'T PERFORM"
               *> ELSE
                 *> PERFORM DISPLAY-PARA VARYING I FROM 1 BY 1 UNTIL I > 5.

           PERFORM DISPLAY-PARA-WITH-AFTER VARYING I FROM 1 BY 1 UNTIL
                 I > 3
                 AFTER J FROM 1 BY 1 UNTIL J >2
            STOP RUN.

           DISPLAY-PARA.
           DISPLAY "THIS IS THE PERFORM CONDITION WITH VARYING".

           DISPLAY-PARA-WITH-AFTER.
           DISPLAY '(I,J)('I','J')'.

       END PROGRAM Exe49.
