program user_input 
	
	implicit none 

	integer::status
  integer::age
	character(len=20)::name
  character(len=20)::hometown

  do
    print*,"Enter your name, hometown, and age"
    read(*,*,iostat=status) name, hometown, age
    if (status==0) exit
  endDo

  print*,"your name is " //trim(name) // "!"
  print*,"Your hometown is " //trim(hometown) // "!"
  print*,"You look young for ", age

end program 
