***  PROGRAM 7.4  ***
***  DETERMINANT  ***
*
        PROGRAM F7X4
            REAL A(3,3),DET ,DIV
            INTEGER I,J
*値の入力
            READ(5,*)((A(I,J),J=1,3),I=1,3)
*行列の計算
            CALL DETERM(3,A,DET)
*結果の出力
            WRITE(6,10)DET
10          FORMAT(' ','DETRMINANT=',F7.1)
            STOP
        END
***SUB：行列の計算
        SUBROUTINE DETERM(N,A,DET)
            REAL A(N,N),DET,DIV
            INTEGER N,I,J,K
*
            DET=1.0
*
            DO 30 I=1,N-1
                DO 20 J=I+1,N
                    DIV=A(J,I)/A(I,I)
                    DO 10 K=I,N
                        A(J,K)=A(J,K)-A(I,K)*DIV
10                  CONTINUE
20              CONTINUE
30          CONTINUE
*
            DO 40 I=1,N
                DET=DET*A(I,I)
40          CONTINUE
            RETURN
        END
