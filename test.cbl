       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-STUDENTDETAIL.
             02 STUID PIC 9(03).
             02 STUNAME.
                 05 STUDENTNAMEINIT PIC X(01).
                   88 STU-VALID VALUE 'A' THRU 'Z'.
                   88 STU-INVALID VALUE '0' THRU '9' ' ' '@' '$' '%'.
                 05 STUDENNANEREST PIC X(4).
             02 STUDENTGENDER PIC X(01).
                88 VALIDGENDER VALUE 'M' 'F'.
                88 MALE VALUE 'M'.
                88 FEMALE VALUE 'F'.
            02 STUDENTMARK PIC 9(03).
               88 FIRSTCLASS VALUE 075 THRU 100.
               88 SECONDCLASS VALUE 050 THRU 069.
               88 THIRDCLASS VALUE 030 THRU 049.
               88 FAIL VALUE 029 THRU 000.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           ACCEPT STUID
           ACCEPT STUNAME
           ACCEPT STUDENTGENDER
           ACCEPT STUDENTMARK
           DISPLAY "Student Detail"
           DISPLAY "Student ID : " STUID
               IF STU-VALID
                   DISPLAY "Student Name : "STUNAME
               ELSE
                   DISPLAY "Invalid Student Name"
               END-IF.
               IF VALIDGENDER
                   IF MALE
                           DISPLAY "Student Gender is Male"
                   ELSE
                           DISPLAY "Student Gender is Female"
                   END-IF
               ELSE
                   DISPLAY "Student Gender is invalid"
               END-IF.
               EVALUATE TRUE
                   WHEN FIRSTCLASS
                       DISPLAY "Student got first class"
                   WHEN SECONDCLASS
                       DISPLAY "Student got second class"
                   WHEN THIRDCLASS
                       DISPLAY "Student got third class"
                   WHEN OTHER
                       DISPLAY "Student fail the exam"
               END-EVALUATE.
            STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
