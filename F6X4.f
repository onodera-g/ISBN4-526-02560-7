***  PROGRAM 6.4  ***
***  FREQUENCY ***
*
      PROGRAM F6X4
            INTEGER I,J,FREQ(0:9)
            REAL DATA(30)
*
            DATA FREQ/10*0/
*
            READ(5,10)(DATA(I),I=1,30)
10          FORMAT(6F5.0)
*
            DO 20 J=1,30
                  I=INT(DATA(J)/10)
                  WRITE(6,*)DATA(J),I,FREQ(I)
                  FREQ(I)=FREQ(I)+1
20          CONTINUE
*
            WRITE(6,30)
30          FORMAT(' CLASS   RANGE   FREQUENCY')
            WRITE(6,40)
     *      (I,I*10,'---',I*10+9,'.9',FREQ(I),I=0,9)
40          FORMAT(' ',I3,I5,A3,I2,A2,I6)
            STOP
      END      