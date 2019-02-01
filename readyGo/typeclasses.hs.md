

## Typeclasses(类型定义行为的接口)

### == 函数的类型声明是怎样的？
        :t (==)  
        result : (==) :: (Eq a) => a -> a -> Bool
        
        有意思。在这里我们见到个新东西：=> 符号。
        它左边的部分叫做类型约束。
        我们可以这样阅读这段类型声明：
        "相等函数取两个相同类型的值作为参数并回传一个布尔值，而这两个参数的类型同在 Eq 类之中(即类型约束)"
        
### Eq 这一 Typeclass 提供了判断相等性的接口，凡是可比较相等性的类型必属于 Eq class
        ghci> 5 == 5   
        result : True  
        
        ghci> 5 /= 5   
        result : False   
        
        ghci> 'a' == 'a'   
        result : True   
        
        ghci> "Ho Ho" == "Ho Ho"   
        result : True   
        
        ghci> 3.432 == 3.432   
        result : True
        
        Eq 包含可判断相等性的类型。提供实现的函数是 == 和 /=。
        所以，只要一个函数有Eq类的类型限制，
        那么它就必定在定义中用到了 == 和 /=。
        刚才说了，除函数以外的所有类型都属于 Eq，所以它们都可以判断相等性
        
### Ord 包含可比较大小的类型
        除了函数以外，我们目前所谈到的所有类型都属于 Ord 类。
        Ord 包中包含了<, >, <=, >= 之类用于比较大小的函数。
        compare 函数取两个 Ord 类中的相同类型的值作参数，回传比较的结果。
        这个结果是如下三种类型之一：GT, LT, EQ
        
        ghci> :t (>)  
        result : (>) :: (Ord a) => a -> a -> Bool
        
        ghci> "Abrakadabra" < "Zebra"  
        result : True  
        
        ghci> "Abrakadabra" `compare` "Zebra"  
        result : LT  
        
        ghci> 5 >= 2  
        result : True  
        
        ghci> 5 `compare` 3  
        result : GT
        
        
### Show 的成员为可用字符串表示的类型。
        目前为止，除函数以外的所有类型都是 Show 的成员。
        操作 Show Typeclass，最常用的函数表示 show。
        它可以取任一Show的成员类型并将其转为字符串
        
        ghci> show 3  
        result : "3"  
        
        ghci> show 5.334  
        result : "5.334"  
        
        ghci> show True  
        result : "True"
        
### Read 是与 Show 相反的 Typeclass。
        read 函数可以将一个字符串转为 Read 的某成员类型。
        ghci> :t read  
        result : read :: (Read a) => String -> a
        
        ghci> read "True" || False  
        result : True  
        
        ghci> read "8.2" + 3.8  
        result : 12.0  
        
        ghci> read "5" - 2  
        result : 3  
        
        ghci> read "[1,2,3,4]" ++ [3]  
        result : [1,2,3,4,3]
        
        ghci> read "4"
        result : 报错。
        我们需要在一个表达式后跟:: 的类型注释，以明确其类型
        
        ghci> read "5" :: Int  
        result : 5  
        
        ghci> read "5" :: Float  
        result : 5.0  
        
        ghci> (read "5" :: Float) * 4  
        result : 20.0  
        
        ghci> read "[1,2,3,4]" :: [Int]  
        result : [1,2,3,4]  
        
        ghci> read "(3, 'a')" :: (Int, Char)  
        result : (3, 'a')
        
        
        
        
        
        
        
        
        
        
        
        
        
        
