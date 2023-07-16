           IDENTIFICATION DIVISION.
           PROGRAM-ID. SUBPROG.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01  WS-NAME       PIC X(15).
           01  WS-SURNAME    PIC X(15).
           PROCEDURE DIVISION USING WS-NAME, WS-SURNAME.
               INSPECT WS-NAME REPLACING ALL " " BY LOW-VALUES.
               INSPECT WS-SURNAME REPLACING ALL "E" BY "I"
                                           REPLACING ALL "A" BY "E".