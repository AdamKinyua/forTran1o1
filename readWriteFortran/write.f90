program writeData

    implicit none                                     ! COMMENTS 

   
   ! Takes an iinteger, does the math, and writes to an output

    integer:: i                                                  !integer i with dimension 100
    open(unit=1, file='numbers.txt')
        do i =1,100
            write(1,*) i, i**2, i**3
        endDo
    close(1)

end program writeData
