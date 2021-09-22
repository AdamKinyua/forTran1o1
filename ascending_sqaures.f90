Program ascending_squares 

  implicit none 

  integer::i
  integer,dimension(5)::squares 

  squares = 0

  do i = 1,5
    squares(i)=i**2
  end do

  do i = 1,5
    print*,squares(i)
  end do

end program ascending_squares 
