***  PROGRAM 5.2  ***
***  MATRIX + AND -  ***
*
      PROGRAM F5X2
            REAL A(10,10),B(10,10),X(10,10)
            INTEGER N,M,I,J
            COMMON N,M,A,B,X
*値の入力
            READ(5,*)N,M
            READ(5,*)((A(I,J),J=1,M),I=1,N)       
            READ(5,*)((B(I,J),J=1,M),I=1,N)     
*入力結果の表示
            WRITE(6,10)N,M
10          FORMAT(' ','N=',I3,5X,'M=',I3)
            WRITE(6,20)'A='
20          FORMAT(' ',A)
            CALL MATOUT(N,M,A)
            WRITE(6,20)'B='
            CALL MATOUT(N,M,B)
*行列の和の計算
            CALL MATRIX(0)
            WRITE(6,20)'A+B'
            CALL MATOUT(N,M,X)
*行列の差の計算
            CALL MATRIX(1)
            WRITE(6,20)'A-B'
            CALL MATOUT(N,M,X)
*
            STOP
      END
***　SUB：結果の出力
      SUBROUTINE MATOUT(N,M,Z)
            INTEGER N,M,I,J
            REAL Z(10,10)
*結果の出力
            DO 10 I=1,N
                  WRITE(6,20)(Z(I,J),J=1,M)
10          CONTINUE
20          FORMAT(' ',10F7.2)
*
      RETURN
      END
***　SUB：行列の計算
      SUBROUTINE MATRIX(S)
            INTEGER S,N,M,I,J
            REAL A(10,10),B(10,10),X(10,10)
            COMMON N,M,A,B,X
*行列の計算 Zが0なら和、1なら差
            DO 20 I=1,N
                  DO 10 J=1,M
                        IF(S .EQ. 0)THEN
                              X(I,J)=A(I,J)+B(I,J)
                        ELSE
                              X(I,J)=A(I,J)-B(I,J)
                        ENDIF
10                CONTINUE
20          CONTINUE
*
      RETURN
      END
      