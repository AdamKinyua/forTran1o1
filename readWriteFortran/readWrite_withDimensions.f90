program readWrite

    implicit none 

    integer::i
    integer::a(5), b(5) ! the brackets denotes dimensions 
    
    open(unit=0,file='newData.txt')
        do i=1,5
            a(i)= i
            b(i)=i**2
            write(0,*) a(i), b(i)
        endDo
    close(0)

    open(unit=1, file='newData.txt')
        do i=1,5
            read(1,*) a(i), b(i)
        endDo
    close(1)

    open(unit=2, file='newData1.txt')
        do i=1,5
            write(2,*) a(i) + b(i)
        endDo
    close(2)

end program readWrite

