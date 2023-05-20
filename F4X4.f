*     PROGRAM 4.4  ***
***  MAXIMUM AND MINIMUM DATA  ***
*
      PROGRAM F4X3
            REAL Z,MAX,MIN
            INTEGER I,N
* Z読み込み           
            OPEN(99,FILE='F4X4.txt',STATUS='OLD')
            READ(99,*,END=70)Z
            MAX=Z
            MIN=Z
            N=1
* 
   50       CONTINUE
            READ(99,*,END=60)Z
            IF(Z.GT.MAX)THEN
                MAX=Z
            ELSEIF(Z.LT.MIN)THEN
                MIN=Z
            ENDIF
            N=N+1
            GOTO 50
*
   60       WRITE(*,*)'KOSUU=',N,'MAX=',MAX,'MIN=',MIN
            STOP
*
   70       WRITE(*,*)'NO DATA'
            STOP
      end