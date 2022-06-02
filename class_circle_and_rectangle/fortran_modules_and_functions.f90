! Adapted from:
! https://www.clear.rice.edu/mech517/F90_docs/EC_oop_f90.pdf


! Areas of shapes of different classes, using different function names in each class




module class_Rectangle                                ! defines the first object class
    type Rectangle 
      real :: base, height 
    end type Rectangle

  contains                                            ! Computation of area of rectangles
      function rectangle_area(r)result(area)
        type(Rectangle), intent(in):: r
        real:: area
          area= r%base*r%height 
      end function rectangle_area
end module class_Rectangle





module class_Circle                                   ! defines the second object class
    real:: pi=3.1415926535897931d0                    ! a circle constant 
    type Circle 
      real::radius
    end type Circle
    
  contains                                          ! Computation of area of a circle
      function circle_area(c)result(area)
        type (Circle),intent(in)::c
        real:: area
        area=pi*c%radius**2
      end function circle_area
end module class_Circle





program geometry                                     ! for both types in a single function

  use class_Circle
  use class_Rectangle 

                                                    ! interface to generic routine to compute area for any type

  interface compute_area
    module procedure rectangle_area, circle_area
  end interface

                                                    ! declare a set of geometric objects
  type(Rectangle):: four_sides
  type(Circle)   :: two_sides                       ! inside, outside
  real           :: area = 0.0                      ! the result
  
                                                    ! initializing rectangle and computing its area
  four_sides = Rectangle(2.1, 4.3)
  area       = compute_area(four_sides)
  write(6,100) four_sides, area
  100 format ("Area of ",f3.1," by ",f3.1," rectangle is ",f5.2)  ! Area of 2.1 by 4.3 rectangle is 9.03

                                                    ! Initialize a circle and compute its area
  two_sides= Circle(5.4)                            ! Implicit instructor
  area     = compute_area(two_sides)                ! generic function
  write(6,200) two_sides,area                       ! Implicit components list
  200 format("Area of circle with ",f3.1," radius is ",f9.5)      ! Area of circle with 5.4 radius is 91.60885
end program geometry
