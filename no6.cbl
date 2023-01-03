       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe6.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
           *> when the recieve size is smaller
           *> truncation occur from the right in alpha
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-A PIC A(5) VALUE "HELLO".
           77 WS-B PIC A(4) VALUE SPACE.

       PROCEDURE DIVISION.
           MOVE WS-A TO WS-B.
       MAIN-PROCEDURE.

            DISPLAY "THE RESULT IS : " WS-B
            STOP RUN.

       END PROGRAM Exe6.
