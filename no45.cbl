       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe45.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 I PIC 9(01) VALUE IS 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM DISPLAY-PARA UNTIL I > 3
               DISPLAY "using until end here"
           PERFORM DISPLAY-PARA 3 TIMES

            STOP RUN.

           DISPLAY-PARA.
           COMPUTE I = I + 1
           DISPLAY "COUNTING".

       END PROGRAM Exe45.
