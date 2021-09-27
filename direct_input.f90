program direct_input 
  implicit none 
  character(len=256)::subject

  integer::nargs
  nargs = command_argument_count()
  if (nargs .ne. 1)then
    write(*,*)'a subject must be entered'
    stop
  endIf 
  
  call get_command_argument(1, subject)

  if (subject .eq. 'science') then
    write(*,*)'your subject is science'

  elseIf (subject .eq. 'mathematics') then 
    write(*,*)'your subject is maths'

  else
    write(*,*)'we have additional subject'

  endIf
end program direct_input 
