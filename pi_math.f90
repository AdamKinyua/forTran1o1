program pipi
  implicit none 

  real,dimension(100)::sum
  real::i
  sum = 0

  do i = 1,100
    sum(i) = i**.1
    print*,sum(i)
  end do

end program pipi
