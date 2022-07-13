program reader
    
    implicit none
    character(len=200)::atom, datafile
    !real,intent(in)::charge, x, y, z
    
    ! Open old file and read it
    open(1,file="text.file",status='old')
    read(1,*) datafile
    write(*,*) datafile

    ! open new file and write to it
    !open(2,file="newfile.file)",status='new')
    !write(2,'(4A,1X,5A,1X,4A)') name1,name2,name3
    !close(1)
    !close(2)



end program reader 

