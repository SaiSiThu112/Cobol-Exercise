       IDENTIFICATION DIVISION.
       PROGRAM-ID. ExeNo32.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           77 WS-NUM1 PIC 9(3) VALUE ZERO.
           77 WS-NUM2 PIC 9(3) VALUE ZERO.
           77 WS-NUM3 PIC 9(3) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM DISPLAYACCEPT-PARA
           PERFORM CONDITION-PARA

           STOP RUN.

           DISPLAYACCEPT-PARA.

           DISPLAY "Program to find the largest of three number"
           DISPLAY "Enter first number"
           ACCEPT WS-NUM1
           DISPLAY "Enter second number"
           ACCEPT WS-NUM2
           DISPLAY "Enter third number"
           ACCEPT WS-NUM3.

           CONDITION-PARA.

            IF WS-NUM1 > WS-NUM2 AND WS-NUM1 > WS-NUM3
                DISPLAY WS-NUM1 " is the largest number"
            ELSE IF WS-NUM2 > WS-NUM3 AND WS-NUM2 > WS-NUM1
                DISPLAY WS-NUM2 " is the largest number"
            ELSE
                DISPLAY WS-NUM3 " is the largest number"
            END-IF.

       END PROGRAM ExeNo32.
