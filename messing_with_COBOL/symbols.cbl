IDENTIFICATION DIVISION.
PROGRAM-ID. MyProgram.

DATA DIVISION.
working-storage section.
01 salary pic 9(5)V9(2).
01 formatted-salary pic $(3),$(3).9(2).

01 current-date pic X(8).
01 formatted-date pic 9(2)/9(2)/9(4).

01 signed-numeric pic S9(3).
01 formatted-signed pic +9(3).

PROCEDURE DIVISION.
    move 1234.56 to salary
    display salary *> displays 01234.56
    
    move salary to formatted-salary
    display formatted-salary *> displays $1,234.56
    
    
    move 01012024 to current-date
    display current-date *> displays 01012024
    
    move current-date to formatted-date
    display formatted-date *> displays 01/01/2024
    
    
    move -727 to signed-numeric
    display signed-numeric *> displays 727-
    
    move signed-numeric to formatted-signed
    display formatted-signed *> -727
    stop run
    .
