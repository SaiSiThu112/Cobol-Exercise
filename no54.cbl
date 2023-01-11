       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe54.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 NUM PIC 9(03) VALUE IS ZERO.
           77 I PIC 9(03) VALUE IS ZERO.
           77 REM PIC 9(03) VALUE IS ZERO.
           77 Q PIC 9(03) VALUE IS ZERO.
           77 TOTAL PIC 9(03) VALUE IS ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM ACCEPT-PARA
           PERFORM PROCESS-PARA
           PERFORM DISPLAY-PARA

            STOP RUN.

           ACCEPT-PARA.
           DISPLAY "TYPE VALUE FOR NUM"
           ACCEPT NUM.

           PROCESS-PARA.
             PERFORM UNTIL NUM < 0
                 DIVIDE NUM BY 10 GIVING Q REMAINDER REM
                      COMPUTE TOTAL = TOTAL + REM
                      DIVIDE NUM BY 10 GIVING NUM
             END-PERFORM.

           DISPLAY-PARA.
           DISPLAY "TOTAL : " TOTAL.

       END PROGRAM Exe54.
