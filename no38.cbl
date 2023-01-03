       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe38.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 EMPLOYE-DETAIL.
               02 EMP-NAME.
                   05 NAME PIC X(6) VALUE SPACE.
               02 EMP-SALARY REDEFINES EMP-NAME.
                   05 SALARY PIC 9(6).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "Enter your name "
           ACCEPT NAME
           DISPLAY "Enter your salary"
           ACCEPT SALARY
           DISPLAY "Enter your name and salary have the same value"
           DISPLAY "NAME : "NAME
           DISPLAY "SALARY : "SALARY
           DISPLAY "ENTER YOUR NAME"
           ACCEPT NAME
           DISPLAY "NOW NAME OVERIDES THE SALARY"
           DISPLAY "NAME "NAME
           DISPLAY "SALARY "SALARY
            STOP RUN.

       END PROGRAM Exe38.
