       character s*999
       s(  1: 51)=51H#$%character s*999#%j=4#do 400 i=4,450#  if(s(i:i).
       s( 52:102)=51HEQ.s(1:1))goto 100#  if(s(i:i).EQ.s(2:2))goto 200# 
       s(103:153)=51H if(s(i:i).EQ.s(3:3))goto 300#  goto 400#  100    w
       s(154:204)=51Hrite(*,1000)'       ',s(j:i-1)$  goto 210#  200    
       s(205:255)=51Hwrite(*,1000)'',s(j:i-1)$  210    j=i+1$  goto 400#
       s(256:306)=51H  300    do 310 k=1,450,51$    write(*,2000)k,k+50,
       s(307:357)=51Hs(k:k+50)#  310    continue$  j=i+1#  400  continue
       s(358:408)=51H$ 1000  format(A,A)$ 2000  format('       s(',I3,':
       s(409:459)=51H',I3,')=51H',A)$stop#end#!(C)2015 TSUYUSATO Kitsune
       j=4
       do 400 i=4,450
         if(s(i:i).EQ.s(1:1))goto 100
         if(s(i:i).EQ.s(2:2))goto 200
         if(s(i:i).EQ.s(3:3))goto 300
         goto 400
  100    write(*,1000)'       ',s(j:i-1)
         goto 210
  200    write(*,1000)'',s(j:i-1)
  210    j=i+1
         goto 400
  300    do 310 k=1,450,51
           write(*,2000)k,k+50,s(k:k+50)
  310    continue
         j=i+1
  400  continue
 1000  format(A,A)
 2000  format('       s(',I3,':',I3,')=51H',A)
       stop
       end
