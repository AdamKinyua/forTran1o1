module class_Rectangle
    type Rectangle 
        real:: base, height
    end type Rectangle 

    contains 
        function rectangle_area(r)result(area) ! you pass radius r and it returns area
            type(Rectangle), intent(in):: r    ! requires r to be passed to the function 
            real:: area
                area=r%base*r%height
        end function rectangle_area
end module class_Rectangle 


module class_Circle
    real::pi=3.1415926535897931d0
    type Circle
        real:: radius 
    end type Circle 

    contains 
        function circle_area(c)result(area)
            type(Circle), intent(in):: c
            real:: area
                area=pi*c%radius**2
        end function circle_area
end module class_Circle


program geometry 

    use class_Circle
    use class_Rectangle

    interface compute_area
        module procedure rectangle_area, circle_area
    end interface 


    type(Rectangle):: four_sides
    type(Circle)   :: two_sides
    real           :: area = 0.0

    four_sides = Rectangle(2.1, 4.3)
    area = compute_area(four_sides)
    write(6,100) four_sides, area

    100 format ("area of ",f3.1," by ",f3.1," rectangle is ", f5.2)

    two_sides = Circle(5.4)
    area = compute_area(two_sides)
    write(6,200) two_sides, area
    200 format("Area of a circle with ",f3.1," radius is ",f9.5)


end program geometry 



