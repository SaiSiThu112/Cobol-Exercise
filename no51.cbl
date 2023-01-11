       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 NUM PIC 9(01) VALUE ZERO.
           77 I PIC 9(01) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM ACCEPT-PARA
           PERFORM PROCESS-PARA
            STOP RUN.

           ACCEPT-PARA.
           DISPLAY " TYPE VALUE FOR NUM"
           ACCEPT NUM.

           PROCESS-PARA.
              MOVE 1 TO I
                   PERFORM UNTIL I > NUM
                       DISPLAY I
                       ADD 1 TO I
                   END-PERFORM.

       END PROGRAM YOUR-PROGRAM-NAME.
