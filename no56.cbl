       *> palindrome number(also known as a numeral palindrome or a numeric palindrome) is a number
       *> (such as 16461) that remains the same when its digits are reversed.
       *> In other words, it has reflectional symmetry across a vertical axis.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exe56.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 NUM PIC 9(03) VALUE ZERO.
           77 VAL PIC 9(03) VALUE ZERO.
           77 REM PIC 9(03) VALUE ZERO.
           77 TEMP PIC 9 VALUE ZERO.
           77 REVNUM PIC 9(03) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


           PERFORM DISPLAY-PARA
           PERFORM PROCESS-PARA
           PERFORM OUTPUT-PARA

            STOP RUN.

           DISPLAY-PARA.
           DISPLAY "ENTER NUMBER "
           ACCEPT NUM
           MOVE NUM TO VAL.

           PROCESS-PARA.
               PERFORM UNTIL NUM <= 0
                   DIVIDE NUM BY 10 GIVING TEMP REMAINDER REM
                   COMPUTE REVNUM = REVNUM + 10 + REM
                   DIVIDE NUM BY 10 GIVING NUM
               END-PERFORM.

           OUTPUT-PARA.
           IF REM = VAL THEN
              DISPLAY " GIVING NUMBER IS PALINDROME "
           ELSE
               DISPLAY " GIVING NUMBER IS NOT PALINDROME ".

       END PROGRAM Exe56.
