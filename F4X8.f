***  PROGRAM 4.8  ***
***  GANRIGOUKEI NO KEISAN  ***
*
      PROGRAM F4X8
      CHARACTER*51 GRAPH
      REAL X,SF
      INTEGER I
*１点目のゼロ線
      GRAPH='  '
      GRAPH(26:26)='I'
*スタート位置０のプロット
      WRITE(6,10)
10    FORMAT('    X','     SIN/X',26X,' 0')
*グラフのプロット
      DO 30 X=-10,10,0.5
            IF(X .NE. 0.0) THEN
                  SF=SIN(X)/X
            ELSE
                  SF=1
            ENDIF
            I=INT((SF+1)/0.04+0.5)+1
            GRAPH(I:I)='*'
            WRITE(6,20)X,SF,GRAPH
20          FORMAT('  ',F5.1,F8.3,'  ',A)
            IF(I .NE. 26) THEN
                  GRAPH(I:I)=' '
            ELSE
                  GRAPH(I:I)='I'
            ENDIF
30     CONTINUE
            STOP
      END
