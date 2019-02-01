
定义一个函数，参数是x
doubleMe x = x + x

定义一个函数，参数是x 和 y
doubleUs x y = 2*x + 2*y

doubleUs x y = doubleMe x + doubleMe y

if else强制需要
doubleSmallNumber x = if x > 100
                      then x
                      else x*2
                      
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
