//MAIN0001  JOB  (ACCT),'MAIN',CLASS=A,MSGCLASS=X
//INPUT    DD  DISP=SHR,DSN=YOUR.INPUT.FILE
//VSAM     DD  DSN=Z95743.VSAM.AA,
//             DISP=OLD
//SUBPROG  EXEC PGM=SUBMAIN1
//STEPLIB  DD  DISP=SHR,DSN=YOUR.LOADLIBRARY
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  *
//          PARM=' '
//MAINPROG EXEC PGM=MAIN0001
//STEPLIB  DD  DISP=SHR,DSN=YOUR.LOADLIBRARY
//VSAM     DD  DSN=Z95743.VSAM.AA,
//             DISP=OLD
//SYSIN    DD  DISP=SHR,DSN=SUBMAIN1.LOADLIBRARY
//SYSOUT   DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABEND DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*