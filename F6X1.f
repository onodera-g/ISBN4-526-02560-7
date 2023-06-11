***  PROGRAM 6.1  ***
***  PRECISION TEST  ***
*
      PROGRAM F6X1
            REAL R
            DOUBLE PRECISION D
            INTEGER I
*R,Dの初期化
            DATA R,D /0.0,0.0/
*R,Dの累計の計算
            DO 10 I=10,100000
                  R=R+0.1
                  D=D+0.1D0
10          CONTINUE
*結果の出力
            WRITE(6,20)R,D
20          FORMAT(' ','R=',E15.7/' ','D=',D22.14)
*
            STOP
      END      