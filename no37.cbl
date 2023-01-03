       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe37.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 MARRIED-STATUS PIC X(2).
              88 SINGLE VALUE 'S'.
              88 RS VALUE 'RS'.
              88 DIVORCED VALUE 'D'.
              88 MARRIED VALUE 'M'.
           77 SALARY PIC X(10) VALUE ZERO.
           77 NAME PIC A(10) VALUE SPACE.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           PERFORM PROCESS-PARA

            STOP RUN.

           PROCESS-PARA.
           DISPLAY "Enter your name"
           ACCEPT NAME
           DISPLAY "Please enter your married status (S,RS,M,D)"
           ACCEPT MARRIED-STATUS.
               IF MARRIED
                   MOVE 2000 TO SALARY
               ELSE IF SINGLE
                   MOVE 1000 TO SALARY
               ELSE IF RS
                   MOVE 500 TO SALARY
               ELSE IF DIVORCED
                   MOVE 5000 TO SALARY
               ELSE
                   MOVE 0 TO SALARY
               END-IF.
               DISPLAY SALARY.
       END PROGRAM Exe37.
