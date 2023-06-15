***  PROGRAM 7.6  ***
***  EIGENVALUE AND EIGENVECTOR  ***
*
        PROGRAM F7X6
            REAL A(3,3),MAXV,V(3),X(3)
            INTEGER I,J
*値の初期化
            DATA X/3*1.0/
*値の入力
            READ(5,*) ((A(I,J),J=1,3),I=1,3)
*固有値、固有ベクトルの計算
            CALL EIGEN(3,A,MAXV,V,X)
*結果の出力
            WRITE(6,10)MAXV,(V(I),I=1,3)

10          FORMAT (' ','MAX EIGENAVALUE=',E12.4 /
     *      ' ','EIGENVECTOR' /(' ',5X,E12.4))
            STOP
            END
***SUB：固有値、固有ベクトルの計算
            SUBROUTINE EIGEN(N,A,MAXV,V,X)
                REAL A(N,N),MAXV,V(N),X(N)
                INTEGER I,J,N
*
10              CONTINUE
                DO 20 I=1,N
                    V(I)=0.0
20              CONTINUE
*
                DO 40 I=1,N
                    DO 30 J=1,N
                         V(I)=V(I)+ A(I,J) * X(J)
30                  CONTINUE
40              CONTINUE
*
                MAXV=V(1)
                DO 50 I=1,N
                    V(I)=V(I)/MAXV
50              CONTINUE
*
                DO 70 I=1,N
                    IF(ABS(X(I)-V(I)) .GE. 1.0E-4)THEN
                        DO 60 J=1,N
                            X(J)=V(J)
60                      CONTINUE
                        GO TO 10 
                    END IF
70              CONTINUE
                RETURN
            END
