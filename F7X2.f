***  PROGRAM 7.2  ***
***  ALGEBRAIC EQUATION  ***
*
        PROGRAM F7X2
            REAL FUNC, ROOT
            EXTERNAL FUNC
*代数方程式の根を求める
            CALL DAISUU(FUNC, 3.0, ROOT)
*結果の表示
            WRITE (6, 10) ROOT
10          FORMAT(' ', 'ROOT=', E13.6)
            STOP
        END
***FUNC：方程式fの計算
        REAL FUNCTION FUNC(X)
            REAL X
*
            FUNC = ((1.0*X - 2.0)*X + 5.0)*X - 10.0
            RETURN
        END
***SUB：挟み打ち方による計算
        SUBROUTINE DAISUU(FUNC,B, C)
            REAL FUNC
            REAL A, B, C, FA, FB, FC
            A=1.0
*
            FA = FUNC(A)
            FB = FUNC(B)
*挟み打ち部分
10          CONTINUE
            C = (A*FB - B*FA)/(FB - FA)
            FC = FUNC(C)
            IF (ABS(FC) .LT. 1.0E-4) RETURN
            IF (FA*FC .GT. 0.0) THEN
                A=C
                FA = FC
            ELSE
                B = C
                FB = FC
            END IF
            GO TO 10
        END

