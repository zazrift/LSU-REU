program test_square
  
  use iso_c_binding, only: c_double
  implicit none

  interface
          
    function square_num(x) bind(C)
      import :: c_double
      real(c_double) :: square_num
      real(c_double), value, intent(in) :: x 
    end function square_num

  end interface

  real(c_double) :: x, res

  print *, "Enter a number: "
  read(*,*) x

  res = square_num(x)

  write(*,'(F5.2, A, A, A, F9.2)') x, "^", "2", " = ", res

end program test_square
