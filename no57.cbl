       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 NUM PIC 9(03) VALUE ZERO.
           77 NUM1 PIC 9(03) VALUE ZERO.
           77 REM PIC 9(03) VALUE ZERO.
           77 TEMP PIC 9 VALUE ZERO.
           77 OPTION PIC X(03) VALUE 'YES'.

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
           MOVE 2 TO NUM1
               PERFORM UNTIL NUM1 >= NUM
                   DIVIDE NUM BY NUM1 GIVING TEMP REMAINDER REM
                       IF REM=0 THEN
                           DISPLAY "GIVING NUMBER IS NOT PRIME"
                           STOP RUN
                       END-IF
                   ADD 1 TO NUM1
               END-PERFORM.

           OUTPUT-PARA.
           IF NUM1 = NUM THEN
               DISPLAY "GIVING NUMBER IS PRIME "
           END-IF.

       END PROGRAM YOUR-PROGRAM-NAME.
