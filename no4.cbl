       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe4.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
           *> when recieve size is larger
           *> data from right will filled with zero and for left will
           *> be filled with decimal value
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WS-A PIC 999V999 VALUE 123.456..
           77 WS-B PIC 9999V9999 VALUE ZERO.
       PROCEDURE DIVISION.
           MOVE WS-A TO WS-B.
       MAIN-PROCEDURE.

           DISPLAY "recieve size is larger"
           DISPLAY "data will filled with zero from left and right "WS-B

            STOP RUN.

       END PROGRAM Exe4.
