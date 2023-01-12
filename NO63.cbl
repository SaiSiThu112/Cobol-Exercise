       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe63.
       ENVIRONMENT DIVISION.
           *>program using subscript
       DATA DIVISION.
       WORKING-STORAGE SECTION.

           01 STUDENT-RECORD.
               02 STUDENT-DETAIL OCCURS 3 TIMES.
                   05 STUDENTID PIC 9(05) VALUE ZERO.
                   05 STUDENTNAME PIC X(10) VALUE SPACE.
           77 I PIC 9 VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM DISPLAY-PARA 3 TIMES
               COMPUTE I = 1
           PERFORM PROCESS-PARA 3 TIMES
               COMPUTE I = 1

            STOP RUN.

           DISPLAY-PARA.
           DISPLAY "ENTER STUDENT ID "
           ACCEPT STUDENTID(I)
           DISPLAY "ENTER STUDENT NAME "
           ACCEPT STUDENTNAME(I)
           COMPUTE I = I + 1.

           PROCESS-PARA.
           DISPLAY "STUDENT ID : " STUDENTID(I)
           DISPLAY "STUDENT NAME : " STUDENTNAME(I)
           COMPUTE I = I + 1.

       END PROGRAM Exe63.
