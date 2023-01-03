       IDENTIFICATION DIVISION.
       PROGRAM-ID. ArrayTest.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 STUDENT.
           02 STUDENTDETAIL PIC 9(03) OCCURS 6 TIMES INDEXED
           BY STUINDEX.
               02 STU-MARK PIC 9(03).
           01 TOTALMARK  PIC 9(03) VALUE ZERO.
           01 STUPERCENT PIC 9(03)V9(02).
           01 I PIC 9(01).
       PROCEDURE DIVISION.
           MOVE ZERO TO TOTALMARK.
       MAIN-PROCEDURE.
           PERFORM VARYING I FROM 1 BY 1
           UNTIL I > 6
            SET STUINDEX TO 1
            ACCEPT STU-MARK
            ADD STU-MARK TO TOTALMARK
            SET STUINDEX UP BY 1
            END-PERFORM.
            COMPUTE STUPERCENT = TOTALMARK/6.
            DISPLAY 'STUDENT PERCENTAGE : ' STUPERCENT.
            STOP RUN.

           DISPLAY-PARA.

       END PROGRAM ArrayTest.
