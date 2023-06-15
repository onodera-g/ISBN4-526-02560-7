***  PROGRAM 7.7  ***
***  DIFFERENTIAL EQUATION  ***
*
        PROGRAM F7X7
            REAL FUNC
            EXTERNAL FUNC
*微分方程式を解く
            CALL RUNGE(FUNC,0.0,1.0,2.0,0.2)
*
            STOP
            END
***FUNC：dy/dx
            REAL FUNCTION FUNC(X,Y)
                REAL X,Y
*
                FUNC=(Y*Y-2.0*X)/(Y*Y+X)
*
                RETURN
            END
***SUB：ルンゲクッタ法
            SUBROUTINE RUNGE(FUNC,X0,Y0,XEND,H)
                REAL FUNC,X0,Y0,XEND,H,X,Y,K1,K2,K3,K4
*ヘッダ行の出力
                WRITE(6,10)
10              FORMAT(' ',6X,'X',13X,'Y',11X,'F(X,Y)')
*
                X=X0
                Y=Y0
*近似値を徐々に求めていく
20              CONTINUE
                    WRITE(6,30)X,Y,FUNC(X,Y)
30                  FORMAT(' ',3E14.6)
                    IF(X .GT. XEND)RETURN
                    K1=H*FUNC(X,Y)
                    K2=H*FUNC(X+H/2.0,Y+K1/2.0)
                    K3=H*FUNC(X+H/2.0,Y+K2/2.0)
                    K4=H*FUNC(X+H,Y+K3)
                    Y=Y+(K1+2.0*(K2+K3)+K4)/6.0
                    X=X+H
                GO TO 20
            END

