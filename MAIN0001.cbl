       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAINPROG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-INPUT-REC.
           05  WS-OPERATION  PIC X(1).
           05  WS-INDEX-NUM  PIC X(4).
       01  WS-OUTPUT-REC.
           05  WS-INDEX-NUM  PIC X(4).
           05  WS-NAME       PIC X(15).
           05  WS-SURNAME    PIC X(15).
           05  WS-BALANCE    PIC X(12).
       01  WS-VSAM-FILE.
           05  WS-VSAM-INDEX PIC X(4).
           05  WS-VSAM-REC   PIC X(47).
       01  WS-TEMP-REC      PIC X(47).
       01  WS-FILE-STATUS   PIC X(2).
       PROCEDURE DIVISION.
           PERFORM READ-INPUT-RECORD
               UNTIL WS-OPERATION = "E".
           PERFORM PROCESS-OPERATION
               VARYING WS-INDEX-NUM FROM 1 BY 1
               UNTIL WS-INDEX-NUM > 9999.
           STOP RUN.
       
       READ-INPUT-RECORD.
           ACCEPT WS-INPUT-REC.
           MOVE WS-INDEX-NUM TO WS-VSAM-INDEX.
           READ VSAM-FILE
               INVALID KEY DISPLAY "VSAM FILE READ ERROR"
               NOT INVALID KEY
                   MOVE WS-VSAM-REC TO WS-OUTPUT-REC
                   DISPLAY WS-OUTPUT-REC.
       
       PROCESS-OPERATION.
           PERFORM VARY-RECORD
               VARYING WS-INDEX-NUM FROM 1 BY 1
               UNTIL WS-INDEX-NUM > 9999.
       
       VARY-RECORD.
           IF WS-VSAM-INDEX = WS-INDEX-NUM
               PERFORM PROCESS-UPDATE
           ELSE
               MOVE WS-VSAM-REC TO WS-OUTPUT-REC
               DISPLAY WS-OUTPUT-REC.
       
       PROCESS-UPDATE.
           MOVE WS-INPUT-REC TO WS-TEMP-REC.
           STRING WS-NAME DELIMITED BY SPACE
                  WS-SURNAME DELIMITED BY SPACE
                  WS-BALANCE DELIMITED BY SPACE
                  INTO WS-TEMP-REC.
           MOVE WS-TEMP-REC TO WS-VSAM-REC.
       