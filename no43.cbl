       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe43.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 A PIC 9(02)V9(03) VALUE IS 11.
           77 B PIC 9(02)V9(03) VALUE IS 3.
           77 C PIC 9(02)V9(03) VALUE IS ZEROES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "A = 11.000 A --> " A
           DISPLAY "B = 3.000 B --> " B
           DIVIDE B INTO A GIVING C ROUNDED
           DISPLAY "C = A/B"
           DISPLAY "3.666 <==> 3.67 C --> " C

            STOP RUN.

       END PROGRAM Exe43.
