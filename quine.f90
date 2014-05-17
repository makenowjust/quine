program quine
character(60)::s1='("program quine",/,"character(60)::s1=",a,a,a,/,"character(6'
character(60)::s2='0)::s2=",a,a,a,/,"character(60)::s3=",a,a,a,/,"character(60)'
character(60)::s3='::s4=",a,a,a,/,"character::c=achar(39)",/,"print s1//s2//s3/'
character(60)::s4='/s4,c,s1,c,c,s2,c,c,s3,c,c,s4,c",/,"end program quine")     '
character::c=achar(39)
print s1//s2//s3//s4,c,s1,c,c,s2,c,c,s3,c,c,s4,c
end program quine
