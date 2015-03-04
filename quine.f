       CHARACTER s*459
       s(  1: 51)=51H#$%CHARACTER s*459#%j=4#DO 400 i=4,458#  IF(s(i:i).
       s( 52:102)=51HEQ.s(1:1))GOTO 100#  IF(s(i:i).EQ.s(2:2))GOTO 200# 
       s(103:153)=51H IF(s(i:i).EQ.s(3:3))GOTO 300#  GOTO 400#  100    W
       s(154:204)=51HRITE(*,1000)'       ',s(j:i-1)$  GOTO 210#  200    
       s(205:255)=51HWRITE(*,1000)'',s(j:i-1)$  210    j=i+1$  GOTO 400#
       s(256:306)=51H  300    DO 310 k=1,458,51$    WRITE(*,2000)k,k+50,
       s(307:357)=51Hs(k:k+50)#  310    CONTINUE$  j=i+1#  400  CONTINUE
       s(358:408)=51H$ 1000  FORMAT(A,A)$ 2000  FORMAT('       s(',I3,':
       s(409:459)=51H',I3,')=51H',A)$STOP#END#(C) 2015 TSUYUSATO Kitsune
       j=4
       DO 400 i=4,458
         IF(s(i:i).EQ.s(1:1))GOTO 100
         IF(s(i:i).EQ.s(2:2))GOTO 200
         IF(s(i:i).EQ.s(3:3))GOTO 300
         GOTO 400
  100    WRITE(*,1000)'       ',s(j:i-1)
         GOTO 210
  200    WRITE(*,1000)'',s(j:i-1)
  210    j=i+1
         GOTO 400
  300    DO 310 k=1,458,51
           WRITE(*,2000)k,k+50,s(k:k+50)
  310    CONTINUE
         j=i+1
  400  CONTINUE
 1000  FORMAT(A,A)
 2000  FORMAT('       s(',I3,':',I3,')=51H',A)
       STOP
       END
