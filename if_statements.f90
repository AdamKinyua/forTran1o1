program if_statements
  implicit none
    if (.true)
      print* "Great"
    if (.false.)
      print*, "this won't work"

    if (.true.) then
      print*,"Worked"
    end if
    if (.false.) then
      print*, "As expected"
    if (.false.) then
      print*, "This won't work"
    end if

    if (.true.) then
      print*, "Something"
    else
      print*,"Nothing"
    end if

    if (.false.) then
      print*, "here"
    else
      print*, "there"
    end if

    if (.false.) then
      print*, "haha"
    else if (.true.) then
      print*, "kinda worked"

    else
      print*, "the end of the beginning"
end program if_statements
