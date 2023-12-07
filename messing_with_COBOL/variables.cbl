IDENTIFICATION DIVISION.
PROGRAM-ID. MyProgram.

DATA DIVISION.
working-storage section.
01 my-numeric pic 9(5). *> value: 00000
01 my-alphanumeric pic X(5).

PROCEDURE DIVISION.
    move 5 to my-numeric *> value: 00005
    display my-numeric
    
    move 123456 to my-numeric *> value: 23456
    display my-numeric
    
    move "Hello" to my-alphanumeric
    display my-alphanumeric *> value: Hello
    
    move "Greetings" to my-alphanumeric
    display my-alphanumeric *> value: Greet
    
    move "Hi" to my-alphanumeric
    display my-alphanumeric *> value: Hi with 3 addiotional spaces
    
    stop run
    .
