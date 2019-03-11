PROGRAM TEST;
  CONST
    TABLESIZE = 1000;
    MAXWORDLEN = 20;
  TYPE
    CHARINDEX = 1 .. MAXWORDLEN;
    COUNTTYPE = 1 .. MAXINT;
    TABLEINDEX = 1 .. TABLESIZE;
    WORDTYPE = PACKED ARRAY [CHARINDEX] OF CHAR;
    ENTRITYPE =
      RECORD
        WORD : WORDTYPE;
        COUNT : COUNTTYPE
      END;
    TABLETYPE = ARRAY [TABLEINDEX] OF ENTRITYPE;
  VAR
    TABLE : TABLETYPE;
    ENTRI; NEXTENTRI : TABLEINDEX;
    LETTERS : SET OF CHAR;
  PROCEDURE READWORD (VAR PACKEDWORD : WORDTYPE);
    CONST
      BLANK = ' ';
    VAR
      BUFFER : ARRAY [CHARINDEX] OF CHAR;
      CHARCOUNT : 0 .. MAXWORDLEN;
      CH : CHAR;
    BEGIN
      IF NOT EOF
        THEN
          REPEAT
            READ(CH)
          UNTIL EOF OR (CH IN LETTERS);
      IF NOT EOF
        THEN
          BEGIN
            CHARCOUNT := 0;
            WHILE CH IN LETTERS DO
              BEGIN
                IF CHARCOUNT < MAXWORDLEN
                  THEN
                    BEGIN
                      CHARCOUNT := CHARCOUNT + 1;
                      BUFFER[CHARCOUNT] := CH
                    END;
                IF EOF
                  THEN
                    CH := BLANK
                ELSE READ(CH)
              END;
            FOR CHARCOUNT := CHARCOUNT + 1 TO MAXWORDLEN DO
              BUFFER[CHARCOUNT] := BLANK;
            PACK(BUFFER,1,PACKEDWORD)
    END;
  PROCEDURE PRINTWORD (PACKEDWORD : WORDTYPE);
    CONST
      BLANK = ' ';
    VAR
      BUFFER : ARRAY [CHARINDEX] OF CHAR;
      CHARPOS : 1 .. MAXWORDLEN;
    BEGIN
      UNPACK (PACKEDWORD,BUFFER, 1);
      FOR CHARPOS := 1 TO MAXWORDLEN DO
        WRITE (BUFFER[CHARPOS])
    END;
  BEGIN
    LETTERS := ['A' .. 'Z'];
    TABLEFULL : = FALSE;
    NEXTENTRI := 1;
    WHILE NOT (EOF OR TABLEFULL) DO
      BEGIN
        READWORD (TABLE[NEXTENTRI] . WORD);
        IF NOT EOF
          THEN
            BEGIN
              ENTRI := 1;
              WHILE TABLE [ENTRI].WORD <> TABLE[NE XTENTRI].WORD
                ENTRI := ENTRI + 1;
              IF ENTRI < NEXTENTRI
                THEN
                  TABLE[ENTRI].COUNT := TABLE[ENTRI].COUNT + 1
              ELSE IF NEXTENTRI < TABLESIZE
                THEN
                  BEGIN
                    NEXTENTRI := NEXTENTRI + 1;
                    TABLE[ENTRI].COUNT := 1
                  END
              ELSE TABLEFULL := TRUE
            END
      END;
    IF TABLEFULL
      THEN
        WRITELN('THE TABLE IS NOT LARGE ENOUGH')
    ELSE
      FOR ENTRI := 1 TO NEXTENTRI - 1 DO
        WITH TABLE[ENTRI] DO
          BEGIN
            PRINTWORD (WORD);
            WRITELN (COUNT)
          END
  END
