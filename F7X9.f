***  PROGRAM 7.9  ***
***  MONTE CARLO METHOD  ***
*
        PROGRAM F7X9
            REAL X,Y,PAI
            INTEGER INIT1,INIT2,L,I,N
*値の初期化
            DATA INIT1,INIT2,L,N/111,113,0,10000/
*モンテカルロ法による円周率の計算
            DO 10 I=1,10000
                CALL RANDOM(INIT1,X)
                CALL RANDOM(INIT2,Y)
                IF(X*X +Y*Y .LE. 1.0)L=L+1
10          CONTINUE
*
            PAI=4.0*(FLOAT(L)/FLOAT(N))
*結果の出力
            WRITE(6,*)L,N
            WRITE(6,20)PAI,N
20          FORMAT(' ','PAI=',F8.5,'  FOR N=',I6)
            STOP
        END
***SUB：モンテカルロ法
            SUBROUTINE RANDOM(INIT,RAND)
                REAL RAND
                INTEGER INIT
*
                INIT=27*INIT
                IF(INIT .LE. 0)INIT=INIT+2147483647+1
*
                RAND=FLOAT(INIT)/FLOAT(2147483647)
*
                RETURN
            END
