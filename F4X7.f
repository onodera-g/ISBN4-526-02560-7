***  PROGRAM 4.7  ***
***  TRANSPOSE MATRIX AND MATRIX PRODUCT  ***
*
      PROGRAM F4X7
      REAL A(2,3),B(3,2),C(2,2)
      INTEGER I,J,K
*AとBの入力
      READ(5,*) ((A(I,J),J=1,3),I=1,2)

      DO 20 I=1,2
            DO 10 J=1,3
                  B(J,I)=A(I,J)
10          CONTINUE
20    CONTINUE
*行列の計算
      DO 50 I=1,2
            DO 40 J=1,2
                  C(I,J)=0.0
                  DO 30 K=1,3
                        C(I,J)=C(I,J)+A(I,K)*B(K,J)
30                CONTINUE
40          CONTINUE
50    CONTINUE
*結果の出力
      WRITE(6,60) ((A(I,J),J=1,3),I=1,2)
60    FORMAT('   ','A='/('      ',3F5.1))
      WRITE(6,70) 'B=',((B(I,J),J=1,2),I=1,3)
      WRITE(6,70) 'C=',((C(I,J),J=1,2),I=1,2)
70    FORMAT('   ',A2/('  ','    ',2F5.1))
      STOP
      END