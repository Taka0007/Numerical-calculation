!ニュートン法で方程式の近似解を求める
Program task4
Implicit None

REAL x
INTEGER I
DOUBLE PRECISION error

READ *, error
x = 4.0 !初期値

DO WHILE( ABS(f(x))>error )
 x = x - f(x)/df(x)
END DO

WRITE(*,*)'許容誤差',error
WRITE(*,*)'解',x

STOP

CONTAINS

REAL FUNCTION f(x)
 Implicit None
 REAL x
 f = 2*(x**3)-3*(x**2)-12*x+5
 RETURN
END FUNCTION f

REAL FUNCTION df(x)
 Implicit None
 REAL x
 df = 6*(x**2)-6*x-12
 RETURN
END FUNCTION df

END Program task4
