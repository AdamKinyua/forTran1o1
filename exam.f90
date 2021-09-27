program exam_results 
  implicit none 

  character(len=256):: results 
  integer::nargs
  nargs = command_argument_count()
  if (nargs .ne. 1) then
    write(*,*)'enter your result'
    stop
  endIf

 call get_command_argument(1, results)

  if (results .eq. '96') then
    write(*,*)  'perfect score'

  else
    write(*,*)'will not happen Inshallah'
  endIf
end program exam_results 
