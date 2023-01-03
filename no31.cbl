       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe26.
       ENVIRONMENT DIVISION.
           *> calculate student grade using evaluate true true condition
       DATA DIVISION.
       WORKING-STORAGE SECTION.

           01 WS-STUDENT-RECODE.
               02 INPUT-DATA.
                   05 WS-STU-NO PIC 9(5) VALUE ZERO.
                   05 WS-STU-NAME PIC A(10) VALUE SPACES.
                   05 WS-STU-CLASS PIC X(10) VALUE SPACES.
                   05 WS-ENG PIC 9(3) VALUE ZERO.
                   05 WS-MATH PIC 9(3) VALUE ZERO.
                   05 WS-PHYSICS PIC 9(3) VALUE ZERO.
                   05 WS-TOTAL PIC 9(3) VALUE ZERO.
                   05 WS-RES PIC A(4) VALUE SPACE.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           PERFORM ACCEPTANDDISPLAY-PARA
           PERFORM PROCESS-PARA

           STOP RUN.

           ACCEPTANDDISPLAY-PARA.

           DISPLAY " Enter Student No"
           ACCEPT WS-STU-NO

           DISPLAY "  Enter Student Name"
           ACCEPT WS-STU-NAME

           DISPLAY " Enter Student Class"
           ACCEPT WS-STU-CLASS

           DISPLAY " Enter English Mark"
           ACCEPT WS-ENG

           DISPLAY " Enter Math Mark"
           ACCEPT WS-MATH

           DISPLAY " Enter Physics Mark"
           ACCEPT WS-PHYSICS.

           PROCESS-PARA.

           ADD WS-ENG WS-MATH WS-PHYSICS TO WS-TOTAL

               IF WS-TOTAL > 40 THEN
                   MOVE 'PASS' TO WS-RES

               ELSE
                   MOVE 'FAIL' TO WS-RES
               END-IF.

               EVALUATE TRUE ALSO TRUE
                   WHEN WS-TOTAL > 40 ALSO WS-RES='PASS'
                        DISPLAY "Congrats"
                        DISPLAY "Your total marks is : "WS-TOTAL
                   WHEN OTHER
                        DISPLAY "Fail man"
                        DISPLAY "Your total marks is : "WS-TOTAL
           END-EVALUATE.
       END PROGRAM Exe26.
