

range 区间
避免使用浮点数

获取一个区间的list
[1..20]
result : [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

['a'..'z']
result : "abcdefghijklmnopqrstuvwxyz"

['K'..'Z']
result : "KLMNOPQRSTUVWXYZ"

得到1-20之间所有的偶数（2的倍数）或者3的倍数
[2,4..20]
result : [2,4,6,8,10,12,14,16,18,20]

用逗号将前两个元素隔开，再标上上限即可,不标上限将得到无限长度的list
[3,6..20]
result : [3,6,9,12,15,18]

定义20-1的list
[20,19..1]
result : [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]

取24个13的倍数
[13,26..24*13]

take 24 [13,26..]

接收一个list参数回一个无限list
cycle [1,2,3]
result : [1,2,3,1,2,3,1,2,3......................]

take 10 (cycle [1,2,3])
result : [1,2,3,1,2,3,1,2,3,1]

take 12 (cycle "LOL ")
"LOL LOL LOL "

repeat 接受一个值作参数，并返回一个仅包含该值的无限 List
repeat 5
result : [5,5,5,5,5,5,5,5,5,5,5,5........................]

take 10 (repeat 5)
result : [5,5,5,5,5,5,5,5,5,5]

replicate得到包含相同元素的 List 
replicate 3 10
result : [10,10,10]



