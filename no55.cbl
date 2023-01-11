       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe55.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 NUM PIC 9(03) VALUE ZERO.
           77 REVNUM PIC 9(03) VALUE ZERO.
           77 REM PIC 9(03) VALUE ZERO.
           77 TEMP PIC 9 VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM DISPLAY-PARA
           PERFORM PROCESS-PARA
           PERFORM OUTPUT-PARA

            STOP RUN.

           DISPLAY-PARA.
           DISPLAY "ENTER VALUE "
           ACCEPT NUM.

           PROCESS-PARA.
               PERFORM UNTIL NUM <= 0
                   DIVIDE NUM BY 10 GIVING TEMP REMAINDER REM
                   COMPUTE REVNUM = REVNUM + 10 + REM
                   DIVIDE NUM BY 10 GIVING NUM
               END-PERFORM.

           OUTPUT-PARA.
           DISPLAY "REVERSE NUMBER --> " REVNUM.

       END PROGRAM Exe55.
