       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe35.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUM PIC S9(2) VALUE ZERO.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
               PERFORM DISPLAY-PARA
               PERFORM PROCESS-PARA
            STOP RUN.

           DISPLAY-PARA.
           DISPLAY "Enter a number with (+,-,0)"
           ACCEPT NUM .

           PROCESS-PARA.
           IF NUM IS POSITIVE
               DISPLAY "Positive Number " NUM

           ELSE IF NUM IS NEGATIVE
               DISPLAY "Negative Number "NUM
           ELSE IF NUM IS ZERO
               DISPLAY "Zero"
           END-IF.
       END PROGRAM Exe35.
