***  PROGRAM 7.5  ***
***  INVERSE MATRIX  ***
*
        PROGRAM F7X5
            REAL A(3,6)
            INTEGER I,J
*値の入力
            READ(5,*)((A(I,J),J=1,3),I=1,3)
*逆行列の計算
            CALL INVERS(3,6,A)
*結果の出力
            WRITE(6,10)((A(I,J),J=4,6),I=1,3)
10          FORMAT(' ','INVERSE MATRIX' //(' ',3E14.5))
            STOP
        END
***SUB：逆行列の計算
        SUBROUTINE INVERS(M,N,A)
                REAL A(M,N)
                INTEGER I,J,K,M,N
*
                DO 20 I=1,M
                    DO 10 J=M+1,N
                        IF (I+M .EQ. J)THEN
                            A(I,J)=1.0
                        ELSE
                            A(I,J)=0.0
                        END IF
10                  CONTINUE
20              CONTINUE
*
                DO 60 K=1,M
                    DO 30 J=N,K,-1
                        A(K,J)=A(K,J)/A(K,K)
30                  CONTINUE
                    DO 50 I=1,M
                        IF(I .EQ. K)THEN
                        ELSE
                            DO 40 J=N,K,-1
                                A(I,J)=A(I,J)-A(I,K)*A(K,J)
40                          CONTINUE
                        END IF
50                  CONTINUE
60              CONTINUE
                RETURN
        END
