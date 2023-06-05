***  PROGRAM 4.4  ***
***  MAXIMUM AND MINIMUM DATA  ***
*
      PROGRAM F4X4
            REAL Z,MAX,MIN
            INTEGER I,N
*Z読み込み           
            OPEN(99,FILE='F4X4.txt',STATUS='OLD')
            READ(99,*,END=70)Z !入力が空(=EOF)なら70へ飛ぶ
            MAX=Z
            MIN=Z
            N=1
*MAX,MINの更新
   50       CONTINUE
            READ(99,*,END=60)Z
            IF(Z.GT.MAX)THEN
                MAX=Z
            ELSEIF(Z.LT.MIN)THEN
                MIN=Z
            ENDIF
            N=N+1
            GOTO 50
*結果の出力
   60       WRITE(*,*)'KOSUU=',N,'MAX=',MAX,'MIN=',MIN
            STOP
*データが入力されていない場合
   70       WRITE(*,*)'NO DATA'
            STOP
      END