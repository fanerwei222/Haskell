

## Tuple(元组)
        Tuple 则要求你对需要组合的数据的数目非常的明确，它的类型取决于其中项的数目与其各自的类型。
        Tuple 中的项由括号括起，并由逗号隔开。
        另外的不同之处就是 Tuple 中的项不必为同一类型，在 Tuple 里可以存入多态别项的组合
        
        一个长度为 2 的 Tuple (也可以称作序对，Pair) ，是一个独立的类型
        [(1,2),(8,11),(4,5)]
        [(1,2),(8,11,5),(4,5)]，就会报错误:
        程序在试图将序对和三元组置于同一 List 中，而这是不允许的。
        同样 [(1,2),("one",2)] 这样的 List 也不行，因为 其中的第一个 Tuple 是一对数字，
        而第二个 Tuple 却成了一个字符串和一个数字。Tuple 可以用来保存多个数据，
        如，我们要表示一个人的名字与年 龄，
        可以使用这样的 Tuple: ("Christopher", "Walken", 55)。
        从这个例子里也可以看出，Tuple 中也可以存储 List
        
### fst 返回一个序对的首项
        fst (8,11)
        result : 8
        
        fst ("Wow", False)
        result : "Wow"

### snd 返回序对的尾项
        snd (8,11)
        result : 11
        
        snd ("Wow", False)
        result : False
        
### zip,它可以用来生成一组序对 (Pair) 的 List。它取两个 List，然后将它们交叉配对，形成一组序对的 List
        zip [1,2,3,4,5] [5,5,5,5,5]
        result : [(1,5),(2,5),(3,5),(4,5),(5,5)]
        
        zip [1 .. 5] ["one", "two", "three", "four", "five"]
        result : [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]
        
        zip [1..] ["apple", "orange", "cherry", "mango"]
        result : [(1,"apple"),(2,"orange"),(3,"cherry"),(4,"mango")]
        
### 取三角形
        let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10]]
        
        let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
        
        let rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
        result : [(6,8,10)]
        
        函数式编程语言的一般思路：先取一个初始的集合并将其变形，运行过滤条件，最终取得正确的结果.
        
        
