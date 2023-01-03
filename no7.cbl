       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
           *> when the recieve size is smaller
           *> truncation occur from the right in alphanimeric
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-A PIC X(5) VALUE "HELLO".
           77 WS-B PIC X(10) VALUE SPACES.
       PROCEDURE DIVISION.
           MOVE WS-A TO WS-B.
       MAIN-PROCEDURE.

            DISPLAY "THE REUSLT IS : " WS-B
            STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
