       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe48.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 I PIC 9(01) VALUE IS ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
               PERFORM DISP-PARA1 THRU DISP-PARA3
            STOP RUN.

           DISP-PARA1.
           DISPLAY "THIS IS ONE".

           DISP-PARA2.
           DISPLAY "THIS IS TWO".

           DISP-PARA3.
           DISPLAY "THIS IS THREE".

       END PROGRAM Exe48.
