***  PROGRAM 7.3  ***
***  INTEGRATION  ***
*
        PROGRAM F7X3
            REAL FUNC,INTEG
            EXTERNAL FUNC
*シンプソン方による積分
            CALL SIMPSO(FUNC,0.0,1.0,50,INTEG)
*結果の出力
            WRITE(6,10)INTEG
10          FORMAT(' ','INTEGRATION=',F8.5)
            STOP
            
        END
***FUNC：fx
        REAL FUNCTION FUNC(X)
            REAL X
*
            FUNC=1.0/(1.0+X*X)
            RETURN
        END
***SUB：シンプソン法
        SUBROUTINE SIMPSO(FUNC,A,B,TOUBUN,INTEG)
            REAL FUNC,A,B,INTEG,H,F2,F4,X
            INTEGER TOUBUN ,I
*
            H=(B-A)/FLOAT(TOUBUN)
            X=A+H
            F2=0.0
            F4=FUNC(X)
*公式の{}の部分
            DO 10 I=3,TOUBUN-1,2
                X=X+H
                F2=F2+FUNC(X)
                X=X+H
                F4=F4+FUNC(X)
10          CONTINUE
*
            INTEG=(H/3.0)*(FUNC(A)+4.0*F4+2.0*F2+FUNC(B))
            RETURN
        END

