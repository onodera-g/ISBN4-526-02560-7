***  PROGRAM 4.1  ***
***  AREA OF TRIANGLE  ***
*
      PROGRAM F4X1
            REAL A,B,C,S,P
*数値の入力
            READ(5,*)A,B,C
            WRITE(6,*)'A=',A,'B=',B,'C=',C
*a+b>cかつabs(a-b)<cなら面積を計算
            IF((A+B .GT. C) .AND. (ABS(A-B) .LE. C))THEN
                  P=(A+B+C)/2
                  S=SQRT(P*(P-A)*(P-B)*(P-C))
                  WRITE(6,*)'S=',S
            ELSE
                  WRITE(6,*)'TRIANGLE CAN''T BE COMPOSED '
            ENDIF
            STOP
      END