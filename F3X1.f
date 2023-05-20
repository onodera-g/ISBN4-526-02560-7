*     PROGRAM 3.1  ***
***  KIHONMONDAI M.MIYAZAKI  ***
*
      PROGRAM F3X1
      INTEGER KOSUU,I,IJOU
      REAL    GOUKEI,A(20),HEIKIN
* 変数の初期化
      KOSUU=0
      GOUKEI=0.0
* ファイルを読み込む
      OPEN(99,FILE='F3X1.txt',STATUS='OLD')
      DO 100 I=1,20,1
            READ(99,*,END=200)A(I)
            KOSUU=KOSUU+1
            GOUKEI=GOUKEI+A(I)
  100 CONTINUE
* 平均の計算
  200 HEIKIN=GOUKEI/KOSUU
      WRITE(6,*)'HEIKIN=',HEIKIN
      IJOU=0 
*　平均未満or以上の判定       
      DO 300  I=1,KOSUU,1
            IF(A(I) .GE. HEIKIN) THEN
                IJOU=IJOU+1
            ELSE
                WRITE(6,*)A(I),'HEIKIN MINAN'
            ENDIF
  300 CONTINUE
*　結果の出力
      WRITE(6,*)'HEIKIN IJOU NO KOSUU',
     *IJOU
      STOP
      END
