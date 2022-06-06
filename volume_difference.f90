program vol

    implicit none 

    ! varaiables declaration 
    double precision:: radius1, radius2, volume1, volume2
    !

    !
    print*, "Enter radius1 and radius2 in double precision: "
    read *, radius1, radius2
    !

    !
!    volume1 = volu(2)
!    volume2 = volu(4)
    !

!    print*, "Function Results"
!    print*, "Volume difference is: ", volume1-volume2

    !
    !
    call volum(radius1, volume1)
    call volum(radius2, volume2)
    print*, "----Subroutine Results----"
    print*, "vol 1: ", volume1, "vol 2: ", volume2
    print*, "Volume difference is: ", volume2-volume1
    print*, "Printing absolute difference: ", abs(volume2-volume1)
    
    !-----USING write FUNCTION-----!
    write(*,10)"Volume difference using write function: ", volume2-volume1
    10 format(a,f10.3)

end program vol

!-------------------------------------------------------------------
!-----------USING FUNCTIONS-----------------------------------------
!-------------------------------------------------------------------
!-----functins have a return statement

!function volu(radius)                             ! input

!    implicit none 
    
    !
!    double precision::pi, radius, volume 
    !

    !
!    pi = 4.0*atan(1.0)
!    print*,"pi = ", pi
!    volume = 4./3. *pi*radius**3
!    return volume                                   ! output

!end function volu


!----------------------------------------------------------------------
!---------------USING SUBROUTINES--------------------------------------
!----------------------------------------------------------------------
!-----subroutines have no return statement
!-----The good thing with subroutines is that we can calculate several outputs out of a single input

subroutine volum(rad, vol)  !!---you have input and output in the same array

    implicit none 

    !
    double precision::pie, rad, vol
    !

    pie = 4.0*atan(1.0)
!    print*, "Pi = ", pie
    vol = 4./3. *pie*rad**3

end subroutine volum


