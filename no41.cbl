       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe41.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 GP1.
               02 NUM PIC X(05) VALUE IS "PAPOO".
           01 GP2.
               02 NUM PIC X(05) VALUE IS "XXXXX".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "NUM OF GP1 : "NUM OF GP1
           DISPLAY "NUM OF GP2 : "NUM OF GP2

            STOP RUN.

       END PROGRAM Exe41.
