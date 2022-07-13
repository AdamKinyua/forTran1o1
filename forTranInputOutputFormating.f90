! OPTIONS:
!           c - column number
!           d - number of decimal places to the right of the decimal point 
!           m - minimum number of digits to be displayed 
!           n - number of spaces to skip
!           r - repeat count. i.e The number of times to repeat a descriptor
!           w - field width: i.e number of characters to use for input or ourput
!
!

!  DESCRIPTO      DESCRIPTION             FORMAT        EXAMPLE
!  ----------     -----------            ------       --------
!  I              -integer output        rIw.m        print"(3I5)", i, j, k
!
!  F              -real output           rFw.d        print"(F12.3)", pi
!
!  E              -real output in        rEw.d        print"(e10.3)", 123456.0
!                  exponential notation
!
!  ES             -real output in        rESw.d       print"(es10.3)", 123456.0
!                 scientific notation
!
!  A              - character output     rAw          print"(a10)",str
!
!  X              -used for space output nx           print"(5x,a10)", str
!
!  /              -inserts blank lines   /            print"(/,5x,a10)", str             
!
!
! NB: If the ﬁeld width is not large enough to accommodate an integer/real then the ﬁeld is ﬁlled with asterisks
!
!                  ######################################
!                  ### APPLICATIONS  ####################
!                  ######################################
program formatThings

    implicit none
    
    !1: printing pi
    real :: pi = 3.141592653589793238462643

    !2: real and integer formats
    real :: c = 1.2786456e-9, d= 0.1234567e3
    integer :: n = 300789, k = 45, i = 2
    character(len=15) :: str = "Itswhile"

    !3: Getting around characters
    character(len=15) :: name
    
    !4: writing formats
    character(len=15) :: name1
    integer:: id
    real :: weight
    Name = "Zsevdlruf"

    !1: printing pi
    print"(f6.3)",pi
    print"(f10.7)",pi
    print"(f20.15)",pi
    print"(e16.4)",pi
    
    !2: real and integer formats
    print"(i6)", k
    print"(i6.3)",k
    print"(3i10)", n, k, i
    print"(i10, i3, i5)", n, k, i
    print"(a15)",str
    print"(f12.3)",d
    print"(e12.4)",c
    print'(/, 3x, "n= ", i6, 3x, "d= ", f7.4)', n, d

!3: Getting around characters 
    print*,"Enter your name in up to 20 characters: "
    read*,name
    print"(1x,a)", name

    !4: Writing Formats
    name1 = "Zsevdlruf"
    id = 1
    weight = 0.08
    print*,'The product details are: '

    print 100
    100 format (7x, 'Name: ', 7x, 'id: ', 1x, 'Weight: ')

    print 200, name1, id, weight
    200 format (1x, a, 2x, i3, 2x, f5.2)


endProgram formatThings

