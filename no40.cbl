       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe40.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 NUM1 PIC 9(03) USAGE IS DISPLAY.
           77 NUM2 PIC 9(03) USAGE IS COMP.
           77 NUM3 PIC 9(03) USAGE IS COMP-3.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           PERFORM ACCEPT-PARA
           PERFORM DISPLAY-PARA

            STOP RUN.

           DISPLAY-PARA.
           DISPLAY "Difference Between storage"
           DISPLAY "In Default"
           DISPLAY NUM1
           DISPLAY "In Binary"
           DISPLAY NUM2
           DISPLAY "In Hexa Decimal"
           DISPLAY NUM3.

           ACCEPT-PARA.
           DISPLAY "Enter NUM1"
           ACCEPT NUM1
           DISPLAY "Enter NUM2"
           ACCEPT NUM2
           DISPLAY "Enter NUM3"
           ACCEPT NUM3.
       END PROGRAM Exe40.
