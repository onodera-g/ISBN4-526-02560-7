***  PROGRAM 6.3  ***
***  HALF ADDER  ***
*
      PROGRAM F6X3
            LOGICAL A,B,S,C
*A,B,Cの入力 
            READ(5,*)A,B
*値の初期化
*S:AとBのどちらかが真なら真
*C:どちらも真なら真
            S=A.NEQV.B
            C=A.AND.B
*結果の出力
            WRITE(6,10)A,B,S,C
10          FORMAT(' ',' A B S C'/' ',4L2)
            STOP
      END      