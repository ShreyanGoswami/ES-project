mov tmod,#10h
mov r0,#16 ;count one sec
mov r1,#00h ; hold secs counted
mov r2,#00h ;holds minutes
up:
mov th1,#0bh
mov tl1,#0dch

setb tr1
here:
jnb tf1,here
clr tf1
djnz r0,up
cjne r1,#60, secinc
mov r1,#00h ; starting seconds from 00 again

mov a,r2 ;increamting minutes
add a,#01h
da a
mov r2,a 
jmp up


secinc:
mov a,r1 ;inc no. of secs counted
add a,#01h
da a
mov r1,a
jmp up 
