***  PROGRAM 4.6  ***
***  GANRIGOUKEI NO KEISAN  ***
*
      PROGRAM F4X6
      INTEGER GANKIN,TANRI,FUKURI
      REAL RIRITU
*元金と年数の入力
      READ(5,*)GANKIN,NEN
*データの参照,出力
      WRITE(6,10)GANKIN,NEN
10    FORMAT('1','GANRIGOUKEI NO KEISAN'/
     *' ',' GANKIN=',I7,'  YEN'/
     *' ',' NENSUU=',I3,'  NEN'/
     *' ',' RIRITU',3X,'TANRI',4X,'FUKURI')
*元利合計の出力
      DO 30 RIRITU=0.03,0.06,0.005
            TANRI=GANKIN*(1+NEN*RIRITU)
            FUKURI=GANKIN*(1+RIRITU)**NEN
            WRITE(6,20)RIRITU*100,TANRI,FUKURI
20    FORMAT('  ',F5.1,2I9)
30    CONTINUE
      STOP
      END