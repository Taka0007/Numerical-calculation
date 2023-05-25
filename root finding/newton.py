# 実際に使用する際には方程式の部分を書き換えておく
# また収束性にも注意が必要
# Pythonでは解析的な微積分が難しいので、具体的な式を入れないと動かない
def f(x):
    return 2*(x**3)-3*(x**2)-12*x+5
    
def df(x):
    return 6*(x**2)-6*x-12
    
error = float(input())
ans = 4.0 #初期値設定

while abs(f(ans))>error:
    ans = ans - f(ans)/df(ans)
    
print(ans)
