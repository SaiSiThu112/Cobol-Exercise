       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe28.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 WS-NAME PIC A(10) VALUE SPACE.
           77 WS-SEX PIC X(1) VALUE SPACE.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           PERFORM ACCEPT-PARA
           *> PERFORM PROCESS-PARA
           PERFORM PROCESS2-PARA
            STOP RUN.

           ACCEPT-PARA.

           DISPLAY "Enter your name "
           ACCEPT WS-NAME
           DISPLAY "Enter your sex (M/F) "
           ACCEPT WS-SEX.

           PROCESS-PARA.

           EVALUATE TRUE
               WHEN WS-SEX='M'
                   DISPLAY "Hello Mr." WS-NAME
               WHEN WS-SEX='F'
                   DISPLAY "Hello Miss." WS-NAME
               WHEN OTHER
                   DISPLAY "Please enter a valid input"
           END-EVALUATE.

           *> without using true condition
           PROCESS2-PARA.
           EVALUATE WS-SEX
               WHEN 'M'
                   DISPLAY "Hello Mr." WS-NAME
               WHEN 'F'
                   DISPLAY "Hello Miss." WS-NAME
               WHEN OTHER
                   DISPLAY "Please enter a valid input"
           END-EVALUATE.

       END PROGRAM Exe28.
