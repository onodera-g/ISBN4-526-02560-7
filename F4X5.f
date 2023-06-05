***  PROGRAM 4.5  ***
***  INFORMATION RETRIEVAL  ***
*
      PROGRAM F4X5
      CHARACTER*8 LAN(5),XLAN
      INTEGER NEN(5),I
*データの登録        
      DATA(LAN(I),NEN(I),I=1,5)/'FORTRAN',1995, 
     *'COBOL',1960,'PL/I',1963 ,'BASIC',1964,'C',1972/
*データの参照,出力
10    CONTINUE
        READ(5,*)XLAN
        IF(XLAN .EQ. 'OWARI')STOP!OWARI が入るまで続ける
        DO 20 I=1,5
            IF(XLAN .EQ. LAN(I))THEN
                WRITE(6,*)XLAN,' WA ',NEN(I),' NEN'!登録したデータにがある時
                GO TO 10
            END IF
20    CONTINUE
      WRITE(6,*)XLAN, ' WA SHIRANAI'!登録したデータにない時
      GO TO 10
      END
