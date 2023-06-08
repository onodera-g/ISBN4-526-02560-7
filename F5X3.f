***  PROGRAM 5.3  ***
***  FACTORIAL  ***
*
      PROGRAM F5X3
            INTEGER N,FACT
*見出しの出力
            WRITE(6,10)
10          FORMAT('   ',' N ','    N!')                
*累乗結果の表示
            DO 20 N=0,5
                  WRITE(6,30)N,FACT(N)
20          CONTINUE
30          FORMAT('    ',I1,I6)
*
      STOP
      END
***　FUNCTION：累乗の計算
      INTEGER FUNCTION FACT(N)
            INTEGER N,I
*
            FACT=1
*           累乗の計算(1,0なら計算する必要ない)
            IF((N.EQ.0).OR.(N.EQ.1))THEN
                  RETURN
            ELSE
                  DO 10 I=2,N
                        FACT=FACT*I
10                CONTINUE
                  RETURN
            END IF
      END

      