*     PROGRAM 4.3  ***
***  SORT  ***
*
      PROGRAM F4X3
            REAL A(10),B
            INTEGER I,J
* 数値の読み込み
            READ(5,*)A
* データの並び替え
            DO 20 I=1,9
                  DO 10 J=I+1,10
* A(I)がA(J)なら順番を入れ替える
                        IF(A(I) .GE. A(J) )THEN
                              B=A(I)
                              A(I)=A(J)
                              A(J)=B
                        ENDIF
   10             CONTINUE
   20       CONTINUE
* 結果の出力
            WRITE(6,*)A
            STOP
      END