***  PROGRAM 5.1  ***
***  CORRELATION  ***
*
      PROGRAM F5X1
      INTEGER N,I
      REAL X(100),Y(100),R
*値の入力     
      READ(5,*)N,(X(I),Y(I),I=1,N)
*相関係数の算出
      CALL SUBR(N,X,Y,R)
*結果の出力
      WRITE(6,20)N,R
20    FORMAT(' ','N=',I4,5X,'R=',F5.2)
      STOP
      END
***SUBR：相関係数の算出
      SUBROUTINE SUBR(N,X,Y,R)
            INTEGER N,I
            REAL X(N),Y(N),AX,AY,XX,YY,XY,R
*
            AX=0.0
            AY=0.0
            XX=0.0
            YY=0.0
            XY=0.0
*Σの計算
            DO 10 I=1,N
                  AX=AX+X(I)
                  AY=AY+Y(I)
                  XX=XX+X(I)*X(I)
                  YY=YY+Y(I)*Y(I)
                  XY=XY+X(I)*Y(I)
10          CONTINUE
*Rの計算
            R=(XY-AX*AY/N)/SQRT((XX-AX*AX/N)*(YY-AY*AY/N))
*
      RETURN
      END