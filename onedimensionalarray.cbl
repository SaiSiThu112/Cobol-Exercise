       IDENTIFICATION DIVISION.
       PROGRAM-ID. OneDimensionalArray.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           01 STUDENT-SECTION.
               02 STUDENT.
                   03 SUBJECT PIC 9(03) OCCURS 6 TIMES INDEXED BY SEQ.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM VARYING SEQ FROM 1 BY 1 UNTIL SEQ > 6
               ACCEPT SUBJECT(SEQ)

           END-PERFORM.

           SET SEQ TO 1
           SEARCH SUBJECT VARYING SEQ
               AT END DISPLAY "STUDENT PASSED"
               WHEN  SUBJECT(SEQ)< 35
               DISPLAY "STUDENT FAILED"
           END-SEARCH.

            STOP RUN.
       END PROGRAM OneDimensionalArray.
