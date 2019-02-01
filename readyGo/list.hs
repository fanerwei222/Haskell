
定义一个常量
let lostNumbers = [4,8,15,65,23]

合并两个list,会遍历整个list
[1,2,3,4] ++ [9,10,11,12]
结果：[1,2,3,4,9,10,11,12]  

"hello" ++ " " ++ "world"
结果："hello world"

['w', 'o'] ++ ['o', 't']
结果："woot"

在list前面加上元素
'A':"SMALL CAT"
结果："A SMALL CAT"

5:[1,2,3,4]
结果：[5,1,2,3,4,5]

[1,2,3] 是 1:2:3[]的语法糖

根据索引获取list的值，初始下标为0
"Steve Buscemi" !! 6  
结果：'B'

[9.4,33.2,96.2,11.2,23.25] !! 1  
结果：33.2

list大小比较，先比较第一个元素，若它们的值相等，则比较下一个，以此类推
[3,2,1] > [2,1,0]  
结果：True

[3,2,1] > [2,10,100]  
结果：True

[3,4,2] > [3,4]  
结果：True

[3,4,2] > [2,4]  
结果：True

[3,4,2] == [3,4,2]  
结果：True

返回list头部
head [1,2,3,4,5]
result : 1

返回list尾部（去掉头部的部分）
tail [1,2,3,4,5]
result : [2,3,4,5]

返回list最后一个元素
last [1,2,3,4,5]
result : 5

返回除了最后一个元素的数据
init [1,2,3,4,5]
result : [1,2,3,4]

返回list长度
length [5,4,3,2,1]
result : 5

检查list是否为空
null [1,2,3]
result : False

null []
result : True

反转list
reverse [5,4,3,2,1]
result : [1,2,3,4,5]

取list前几个元素
take 3 [1,2,3,4,5]
result : [1,2,3]

take 1 [1,2,3,4]
result : [1]

take 0 [1,2,3,4]
result : []

删除list前几个元素
drop 3 [1,2,3,4,5]
result : [4,5]

drop 0 [1,2,3,4]
result : [1,2,3,4]

drop 100 [1,2,3,4]
result : []

返回list中最大最小的数
maxinum [1,2,3,4,5]
result : 5

mininum [1,2,3,4,5]
result : 1

返回list的和或者乘积
sum [1,2,3,4,5]
result : 15

product [6,2,1,2]
result : 24

product [1,2,5,6,7,9,2,0] 
result : 0

elem判断一个元素是否在包含于一个List
4 `elem` [3,4,5,6]
result : True

10 `elem` [3,4,5,6]
result : False



