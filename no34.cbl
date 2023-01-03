           IDENTIFICATION DIVISION.
           PROGRAM-ID. PGM34.
           ENVIRONMENT DIVISION.

           DATA DIVISION.
           WORKING-STORAGE SECTION.

           77 NAME PIC A(10) VALUE SPACES.
           77 GENDER PIC X(6) VALUE SPACES.

           PROCEDURE DIVISION.
               DISPLAY 'ENTER YOUR NAME'.
               ACCEPT NAME.
               DISPLAY 'ENTER YOUR GENDER(M(MALE)/F(FEMALE)'.
               ACCEPT GENDER.
                   IF GENDER='M' OR GENDER='MALE'
                       DISPLAY 'HELLO MR.' NAME
                   ELSE IF GENDER='F' OR GENDER='FEMALE'
                        DISPLAY 'HELLO MISS.' NAME
                   ELSE
                        DISPLAY 'ENTER A VALID GENDER'
                   END-IF.
           STOP RUN.
