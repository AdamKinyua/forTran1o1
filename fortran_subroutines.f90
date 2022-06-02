program subroutines

	use iso_fortran_env, only: int32, int64, real64

	implicit none

	character(len=:),allocatable :: your_name, your_hometown
	integer(kind=int64)          :: age, status, unit

    do
        print*,"Your name, your hometown, your age"
        read(*,*, iostat=status) your_name, your_hometown, age
        if (status==0) exit
        print*,"You can do better"
    endDo

    !
    ! Opening a file to write to
    !
    open(newunit=unit, file="hi.txt", status="REPLACE")

    !
    ! Writing to a file
    !
    write(unit,*) "Hi " //trim(your_name) // "!"
    write(unit,*) "What is the temperature todat at " // trim(your_hometown) // "?"
    write(unit,*) "You look pretty young for ", age
    !
    ! Closing file
    !
    close(unit)


end program subroutines

