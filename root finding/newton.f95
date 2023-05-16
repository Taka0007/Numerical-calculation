!ニュートン法で方程式の近似解を求める
Program task4
Implicit None

REAL x
INTEGER I
DOUBLE PRECISION error

READ *, error
x = 4.0 !初期値

DO WHILE( ABS(f(x))<error )THEN
 x = x - f(x)/df(x)
END DO

STOP

CONTAINS

! 実際に使用する際には、下記の方程式とその微分の式を書き換える
REAL FUNCTION f(x)
 Implicit None
 REAL x
 f = 2*(x**3)-3*(x**2)-12*x+5
 RETURN
END FUNCTION f

REAL FUNCTION df(x)
 Implicit None
 REAL x
 df = 6*(x**2)-6x-12
 RETURN
END FUNCTION df

END Program task4
