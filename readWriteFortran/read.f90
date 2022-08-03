program reader
    
    implicit none
    character(len=50)::input,string
    integer::i,j
    real::realnum

    print'(A)', 'Hello'
    do i = 1,8
      read(5,'(A)') input
      write(*,*) input
      string = ''
      do j = 1, len(trim(input))
        write(*,*) input(j:j)
        if(input(j:j).ne.' ') then
          string = trim(string)//input(j:j)
        else
          read(string,'(F10.6)') realnum
          write(*,*) realnum
          string = ''
        endIf
      endDo
    endDo



end program reader 

