       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerSortedArrayUsingSerarchAll.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           01 STUDENT.
               02 STUDENTNAME PIC X(10) OCCURS 5 TIMES
                   ASCENDING KEY IS STUDENTNAME
                   INDEXED BY STUIDX.
           01 I PIC X(01).
           01 IDXSTUDENTNAME PIC X(10) VALUE SPACE.

       PROCEDURE DIVISION.

           ACCEPT IDXSTUDENTNAME
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               ACCEPT STUDENTNAME(STUIDX)
           END-PERFORM.

       MAIN-PROCEDURE.

           SET I TO 1

           SEARCH ALL STUDENTNAME
               AT END
                   DISPLAY "STUDENT NOT FOUND"
               WHEN STUDENTNAME(STUIDX)=IDXSTUDENTNAME
                   DISPLAY "STUDENT FOUND"
           END-SEARCH.

            STOP RUN.

       END PROGRAM PerSortedArrayUsingSerarchAll.
