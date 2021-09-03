program the_divine_proportion

  implicit none 

    print*,fibonaccio(0, 1, 10)

    stop

  contains 

  recursive function fibonaccio(f1, f2, n)

    implicit none

    integer, intent(in) :: f1, f2, n

    integer :: fibonaccio (1:n)

    integer :: i

    fibonaccio(1) = f1
    fibonaccio(2) = f2

    do i = 3, n

      fibonaccio(i) = fibonaccio(i-1) + fibonaccio(i-2)

    end do

    end function fibonaccio

end program 
