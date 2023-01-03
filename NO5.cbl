       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe5.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
           *> when the recieve size is smaller
           *> truncation will occur from the left with numeric
           *> and the left will be occur with decimal
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-A PIC 99V99 VALUE 12.34.
           77 WS-B PIC 9V9 VALUE ZERO.

       PROCEDURE DIVISION.
           MOVE WS-A TO WS-B.
       MAIN-PROCEDURE.

            DISPLAY " The result is : " WS-B
            STOP RUN.

       END PROGRAM Exe5.
