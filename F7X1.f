***  PROGRAM 7.1  ***
***  GAUSS JORDAN METHOD ***
*
      PROGRAM F7X1
            REAL A(4,5)
            INTEGER I,J
*Aの入力
            READ(5,*)((A(I,J),J=1,5),I=1,4)
*連立一次方程式の計算
            CALL GAUJOR(4,5,A)
*結果の表示
            WRITE(6,10)(1,A(I,5),I=1,4)
10          FORMAT(' ','X',I1,'=',F7.2)
            STOP
      END
***  SUB:吐き出し方による連立一次法y定式の計算
      SUBROUTINE GAUJOR(M,N,A)
            REALA(M,N)
            INTEGER M,N,I,J,K
*
            DO 40 K=1,M
                  DO 10 J=N,K,-1
                        A(K,J)=A(K,J)/A(K,K)
10                CONTINUE
                  DO 30 I=1,M
                        IF(I.EQ. K)THEN
                        ELSE
                              DO 20 J=N,K,-1
                                    A(I,J)=A(I,J)-A(I,K)*A(K,J)
20                            CONTINUE
                        ENDIF
30                CONTINUE
40          CONTINUE
            RETURN
      END
