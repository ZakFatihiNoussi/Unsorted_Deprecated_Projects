IDENTIFICATION DIVISION.
PROGRAM-ID. MyProgram.

DATA DIVISION.
working-storage section.
01 my-unsigned pic 9(5). *> unsigned by default
01 my-signed pic S9(5). *> signed but minus symbol shows at the end
01 my-signed-leading pic S9(5) leading. *> minus shows at the beginning

PROCEDURE DIVISION.
    move -5 to my-unsigned
    display my-unsigned *> displays 00005
    
    move -5 to my-signed
    display my-signed *> displays 00005-
    
    move -5 to my-signed-leading
    display my-signed-leading *> display -00005
    
    stop run
    .
