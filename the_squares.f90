program squares 

  implicit none 

  integer::i
  integer,dimension(5)::the_squares 

  the_squares = 0

  do i = 1,5
    the_squares(i)=i**2
  end do

  do i = 5,1,-1
    print*,the_squares(i)
  end do

end program squares 
