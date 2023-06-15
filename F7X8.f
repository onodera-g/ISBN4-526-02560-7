***  PROGRAM 7.8  ***
***  LAGRANGE INTERPOLATION  ***
*
        PROGRAM F7X8
            REAL XT(4),YT(4),X,Y
*値の初期化
            DATA XT/20.0,35.0,55.0,80.0/
     *           YT/150.0,180.0,160.0,195.0/
*
10          CONTINUE
*値の入力
            READ(5,*,END=30)X
*ラグランジュ補完による中間値の計算
            CALL LAGRAN(4,XT,YT,X,Y)
*結果の出力
            WRITE(6,20)X,Y
20          FORMAT(' ','X=',F7.1,5X,'F(X)=',F7.1)
            GO TO 10
*
30          CONTINUE
            STOP
        END
***SUB：ラグランジュ補完
            SUBROUTINE LAGRAN(N,XT,YT,X,Y)
                REAL XT(N),YT(N),X,Y,KOU
                INTEGER I,J,N
*
                Y=0.0
*
                DO 30 I=1,N
                    KOU=1.0
                    DO 20 J=1,N
                        IF(I .NE. J)THEN
                            KOU=KOU*(X-XT(J))/(XT(I)-XT(J))
                        END IF
20                  CONTINUE
                    Y=Y+KOU*YT(I)
30              CONTINUE
                RETURN
            END
