-- Table

-- 所谓 Table 其实就是一个 Key Value 的数据结构,javascropt 中的 Object,或是 PHP 中的数组, 在别的语言里叫 Dict 或 Map, Table 长成 这个样子

haoel = {name="ChenHao", age=37, handsome=True}

haoel.website = "http://www.haoel.com"
local age = haoel.age
haoel.handsome = false
haoel.name=nil

-- 上面看上去像 C/C++ 中的结构体,但是 name,age,handsome,website都是key
t = {[20]=100, ['name']="ChenHao", [3.14]="PI"} 
print(t[20])

-- 数组
arr = {10,20,30,40,50}
-- 看上去就像数组,其实等价于

arr = {[1]=10, [2]=20, [3]=30, [4]=40, [5]=50}

-- 所以, 也可以定义成不同的类型的数组, 比如:

arr = {"string",100,"haoel", function() print("hello world") end}

-- 其中的函数可以这样调用, arr[4]()

-- 事实上, Lua 中的 Table 是一个非常灵活的结构,可以用来实现很多其他语言中的数据结构,比如 Map,Set,Tree,Graph 等

-- MetaTable 和 MetaMethhod
-- MetaTable 和 MetaMethod 是 Lua 中的重要的语法, MetaTable主要是用来做一些类似于 C++ 重载操作符式的功能
-- 比如, 有两个分数:

function_a = {numerator=10, denominator=20}
function_b = {numerator=5, denominator=10}

-- 实现分数间的相加, 2/3 + 4/7 如果要执行: function_a + function_b 会报错的.

function_op = {}

function function_op.__add(a,b)
    return {numerator=a.numerator*b.denominator+b.numerator*a.denominator, denominator=a.denominator*b.denominator}
end

setmetatable(function_a, function_op)
setmetatable(function_b, function_op)

-- 现在就可以执行 function_a + function_b 了, 结果是 {numerator=50, denominator=60}
fraction_s = function_a + function_b
print(fraction_s.numerator, fraction_s.denominator)

-- 面相对象
-- 看到有 __index 这个重载, 这个东西主要是重载了 find key 的操作, 这个操作可以让 Lua 变得有点面向对象的 感觉,让其有点像 javascript 的 prototype.
-- 所谓 __index, 说的明确一点, 如果有两个对象 a 和 b, 想让 b 作为 a的 prototype 只需要:

setmetatable(a, (__index=b))