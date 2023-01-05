       IDENTIFICATION DIVISION.
       PROGRAM-ID. TwoDimensionalArray.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           01 STUDENT-SECTION.
               02 STUDENTONE OCCURS 2 TIMES INDEXED BY O.
                   03 STUDENTTWO PIC 9(03) OCCURS 6 TIMES INDEXED BY T.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM VARYING O FROM 1 BY 1 UNTIL O > 2
              PERFORM  VARYING T FROM 1 BY 1 UNTIL T > 6
               ACCEPT STUDENTTWO(O,T)
           END-PERFORM
           END-PERFORM.

           PERFORM VARYING O FROM 1 BY 1 UNTIL O > 2
              SET T TO 1
               SEARCH STUDENTTWO
                   AT END DISPLAY 'STUDENT PASSED'
                   WHEN STUDENTTWO(O,T) < 35
                       DISPLAY 'STUDENT FAILED'
               END-SEARCH
           END-PERFORM.

            STOP RUN.

       END PROGRAM TwoDimensionalArray.
