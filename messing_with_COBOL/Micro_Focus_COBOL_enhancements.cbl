working-storage section.
01 name-string pic X(30) typedef.

01 ranged-size typedef.
       05 min pic 9(3)V9.
       05 max pic 9(3)V9.

01 bird.
       05 #name.
           10 common-name name-string.
           10 scientific-name name-string.
       05 measurements.
           10 #length ranged-size.
           10 #wingspan ranged-size.
           10 weight ranged-size.
       05 uk-breeding-population binary-long.

01 my-bird bird.