IDENTIFICATION DIVISION.
PROGRAM-ID. MyProgram.

DATA DIVISION.
working-storage section.
01 salary pic 9(5)V9(2).

PROCEDURE DIVISION.
    move 5 to salary
    display salary *> Displays 00005.00
    
    move 7.27 to salary
    display salary *> Displays 00007.27
    
    stop run
    .
