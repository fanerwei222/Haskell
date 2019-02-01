


## 集合

表达这个表达式
![2的倍数](https://github.com/fanerwei222/Pic/blob/master/Haskell/setnotation.png)
竖线左端的部分是输出函数，x 是变量，N 是输入集合。

用list集合表示;(  <- 表示属于某个区间)
### [x*2 | x <- [1..10]]
result : [2,4,6,8,10,12,14,16,18,20]

给这个 comprehension 再添个限制条件 (predicate)
### [x*2 | x <- [1..10], x*2 >= 12]
result : [12,14,16,18,20]

取 50 到 100 间所有除7的余数为 3 的元素
### [x | x <- [50..100], x `mod` 7 == 3]
result : [52,59,66,73,80,87,94]

使 List 中所有大于 10 的奇数变为 "BANG"，小于 10 的奇数变为 "BOOM"，其他则统统扔掉
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
result : 使用odd函数判断是否是奇数，返回true就是奇数
analyse : 首先选择xs中的奇数，然后再做判断并且返回一个list

boomBangs [7..13]
result : ["BOOM!","BOOM!","BANG!","BANG!"]
