*     PROGRAM 4.2  ***
***  C-F TABLE  ***
*
      PROGRAM F4X2
            REAL S,D,E,C,F
* 数値の読み込み
            READ(5,*)S,D,E
* Sをスタートに、D刻みでEまで摂氏と華氏の対応を出力
            DO 10 C=S,E,D
                  F=1.8*C+32.0
                  WRITE(6,*)'C=',C,'F=',F
   10       CONTINUE
            STOP
      END