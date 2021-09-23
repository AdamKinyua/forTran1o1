program squareroots_1

  implicit none 

  real:: x
  real, dimension(10)::square_rt

  square_rt = 0

  do x = 1,10
    square_rt(x)=x**0.5
  end do

  do x = 10,1,-1
    print*,square_rt(x)
  end do

end program squareroots_1
