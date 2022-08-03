module trafficLights

  type Traffic
    character(len=15):: light
  end type Traffic

  contains 
    function convertLight(l)result(c)
      
      type (Traffic), intent(in):: r
      character(len=15) :: color
      
      select case (r):
        case ('red')
           c = "Yellow"
        case ('yellow')
           c = "green"
        case ('green')
           c = "red"
        case default 
           c = "Invalid light"
    end function convertLight
end module trafficLights


program changeLights

  use trafficLights

  interface change_lights
    module procedure convertLight
  end interface change_lights


  type(Traffic) :: color

  color = convertLight(red)
  write(*,*) "Next Lights", color
  

end program changeLights
