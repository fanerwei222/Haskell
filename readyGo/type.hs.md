

## 类型

### 判断类型
        ghci> :t 'a'  
        'a' :: Char  
        ghci> :t True  
        True :: Bool  
        ghci> :t "HELLO!"  
        "HELLO!" :: [Char]  
        ghci> :t (True, 'a')  
        (True, 'a') :: (Bool, Char)  
        ghci> :t 4 == 5  
        4 == 5 :: Bool

        :t 命令处理一个表达式的输出结果为表达式后跟 :: 及其类型，
        :: 读作"它的类型为"。
        凡是明确的类型，其首字母必为大写。
        'a', 如它的样子，是 Char 类型，易知是个字符 (character)。
        True 是 Bool 类型，也靠谱。
        不过这又是啥，检测 "hello" 得一个 [Char] 这方括号表示一个 List，
        所以我们可以将其读作"一组字符的 List"。
        而与 List 不同，每个 Tuple 都是独立的类型，
        于是 (True,'a') 的类型是 (Bool,Char)，
        而 ('a','b','c') 的类型为 (Char,Char,Char)。
        4==5 一定回传 False，所以它的类型为 Bool
        
### 给函数标明类型
        removeNonUppercase :: [Char] -> [Char]  
        removeNonUppercase :: String -> String
        //上面两种都可以；从它的参数和回传值的类型上可以看出，它将一个字符串映射为另一个字符串。
        //[Char] 与 String 是等价的，但使用 String 会更清晰
        removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
        
### 一个将三个整数相加的简单函数
        addThree :: Int -> Int -> Int -> Int  
        addThree x y z = x + y + z
        参数之间由 -> 分隔，而与回传值之间并无特殊差异。
        回传值是最后一项，参数就是前三项
        
### Int 表示整数，有界；Integer也是表示整数，但它是无界的
        factorial :: Integer -> Integer  
        factorial n = product [1..n]
        
        factorial 50  
        result : 30414093201713378043612608166064768844377641568960512000000000000
        
### Float 表示单精度的浮点数
        circumference :: Float -> Float  
        circumference r = 2 * pi * r
        
        circumference 4.0  
        result : 25.132742
        
### Double 表示双精度的浮点数
        circumference' :: Double -> Double  
        circumference' r = 2 * pi * r
        
        circumference' 4.0  
        result : 25.132741228718345
        
### Bool 表示布尔值，它只有两种值：True 和 False

### Char 表示一个字符。一个字符由单引号括起，一组字符的 List 即为字符串

### Tuple 的类型取决于它的长度及其中项的类型。注意，空 Tuple 同样也是个类型，它只有一种值：()
        
        
