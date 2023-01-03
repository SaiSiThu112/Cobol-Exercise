       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe39.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 EMP.
               02 EMP-DETAIL.
                   05 EMP-ID PIC 9(03).
                   05 EMP-NAME PIC X(10).
               02 EMPSALARY.
                   05 SALARY PIC 9(05).
           66 EMP-NAME-SALARY  RENAMES EMP-NAME THRU EMPSALARY.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM ACCEPT-PARA
           PERFORM DISPLAY-PARA

            STOP RUN.

            DISPLAY-PARA.
            DISPLAY "----- Employee Detail -----"
            DISPLAY EMP-DETAIL
            DISPLAY "Employee Salary : "
            DISPLAY EMPSALARY
            DISPLAY "----- Employee Detail Reform Group -----"
            DISPLAY EMP-NAME-SALARY.

            ACCEPT-PARA.
            DISPLAY "Enter your ID"
            ACCEPT EMP-ID
            DISPLAY "Enter your Name"
            ACCEPT EMP-NAME
            DISPLAY "Enter your Salary"
            ACCEPT SALARY.

       END PROGRAM Exe39.
