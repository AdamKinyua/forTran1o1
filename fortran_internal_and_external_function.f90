program func

    implicit none

    real(4):: a=2.0, b=3.0, c=4.0

    ! declaring an internal function

    f(a, b, c) = 2*a+b+c

    print*,"The value of the function is: ", f(2.0, 3.0, 1.0)

end program func


