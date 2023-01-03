       IDENTIFICATION DIVISION.
       PROGRAM-ID. ArrayIndex.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

           01 STORE.
               05 PRODUCT OCCURS 3 TIMES DESCENDING KEY IS ITEM-CODE
               INDEXED BY IDX.
                   10 ITEM-CODE PIC 9(05).
           01 ITEM-VALUE PIC 9(05) VALUE 12345.
           01 COUNTER PIC 9(01) VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

               SET IDX TO 1
           PERFORM PRO-DETAIL UNTIL IDX > 3
           PERFORM SEARCH-ALL-PARA

            STOP RUN.

           PRO-DETAIL.
           MOVE ITEM-VALUE TO ITEM-CODE(IDX)
           DISPLAY "Product " COUNTER " " ITEM-CODE(IDX)
           SUBTRACT 1 FROM ITEM-VALUE
           SUBTRACT 1 FROM COUNTER
           SET IDX DOWN BY 1.

           SEARCH-ALL-PARA.
           SEARCH ALL PRODUCT
               AT END
               DISPLAY " RECORD NOT FOUND "
               WHEN ITEM-CODE(IDX) = 12344
                   DISPLAY "RECORD FOUND"
                   DISPLAY ITEM-CODE(IDX).

       END PROGRAM ArrayIndex.
