program readData

    implicit none

    integer:: x, y, z

    open(unit=2, file='file_to_be_read.txt')
        read(2,*) x, y, z
    close(2)

    open(unit=3, file='file_to_be_read_copy.txt')
        write(3,*) x, y , z
    close(3)


end program readData
