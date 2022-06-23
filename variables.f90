program fortran_variables 

    implicit none

!-------variables declaration----------------
    integer:: total 
    real :: average 
    complex :: cx
    logical :: done
    character(len=80) :: message ! a string of 80 characters 


!-------assigning variables------------------

    total = 2000
    average = 1666.67
    done = .true.
    message="A big hello"
    cx=(3.0, 5.0) ! cx = 3.0 + 5.0i

!------printing out--------------
    print*,"Total is: ", total
    print*,"Average equals: ", average 
    print*,"Is done: ", done 
    print*,"The message here is", message 
    print*,"Our complex number equals: ", cx


end program fortran_variables

