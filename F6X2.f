***  PROGRAM 6.2  ***
***  ROOTS OF QUADRATIC EQUATION  ***
*　
      PROGRAM F6X2
            REAL A,B,C
            COMPLEX CA,CB,CC,X1,X2,SD
*A,B,Cの入力
            READ(5,*)A,B,C
*値の初期化
            CA=A
            CB=B
            CC=C
*分子の√の計算
            SD=CSQRT(CB*CB-4.0*CA*CC)
*2時方程式の根 X1,X2の計算
            X1=(-CB+SD)/(2.0*CA)
            X2=(-CB-SD)/(2.0*CA)
*
            IF(CABS(X1).GT. CABS(X2))THEN
                  X2=CC/(CA*X1)
            ELSE
                  X1=CC/(CA*X2)
            ENDIF
*結果の出力
            WRITE(6,10)A,B,C
10          FORMAT(' ','A=',F5.1,4X,'B=',F5.1,4X,'C=',F5.1)
            WRITE(6,20)X1,X2
20          FORMAT(' ','X1=(',F6.1,',',F6.1,')'/
     *             ' ','X2=(',F6.1,',',F6.1,')')
*
            STOP
      END      