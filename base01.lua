-- 第一个 lua 程序
-- lua提供了交互式编程模式
-- 打开交互式编程模式
-- lua -i

-- 交互式编程模式下，直接输入 lua 代码，回车即可执行
-- 例如：
-- 1 + 1
-- 输出结果为：2

-- 也可以将 lua 代码写入到一个文件中，然后执行该文件
-- 例如：
-- 将以下代码写入到文件 test.lua 中
-- print("Hello, World!")

-- 执行 test.lua 文件
-- lua test.lua


-- -- [[
--     多行注释
--     Lua 标示符用于定义一个变量，函数获取其他用户定义的项。标示符以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上 0 个或多个字母，下划线，数字（0 到 9）。
--     最好不要使用下划线加大写字母的标示符，因为Lua的保留字也是这样的。
--     Lua 不允许使用特殊字符如 @, $, 和 % 来定义标示符。 Lua 是一个区分大小写的编程语言。因此在 Lua 中 Runoob 与 runoob 是两个不同的标示符。以下列出了一些正确的标示符：
--     mohd zara abc move_name a_123  
--     关键词
--     and break go else elseif end false for function goto if in local nil not or repeat return then true until while

-- -- ]]


-- lua 数据类型

-- lua 是动态类型语言, 变量不要类型定义,只需要为变量赋值,  值可以存储在变量中, 作为参数传递或结果返回
-- lua 中有8个基本的类型 分别是: nil boolean number string userdata, function  thread 和 table
-- null 只有值属于该类型表示一个无效值
-- boolean 有两个值 true 和 false
-- number 表示双精度类型的实n 值
-- string 字符串由一对双引号或单引号来表示
-- function 表示函数
-- userdata 表示任意存储在变量中的C数据结构
-- thread 表示执行的独立线路,用于执行协同程序
-- table 表示一组键值对


-- nil 类型
-- nil 类型只有唯一值 nil
-- nil 类型用来表示一个无效值（在条件表达式中相当于 false）
-- nil 类型表示一个无效的Object，或者可以被看作是“空”

print(type("pfinalclub")) 
print(type(10)) 
print(type(print)) 
print(type(nil)) 
print(type(type)) 
print(type(true)) 
print(type(false)) 
print(type(type(X))) 


-- boolean 类型
-- boolean 类型只有两个值 true 和 false
-- boolean 类型用来表示逻辑值
-- boolean 类型可以被看作是“真”或“假”

print(type(true)) 
print(type(false))

tab1 = { key1 = "pfinal", key2 = "club" , "key3" , "key4" }

print(type(tab1))

for k, v in pairs(tab1) do
    print(k, v)
end

tab1.key1 = nil

for k, v in pairs(tab1) do
    print(k, v)
end


if false or nil then
    print("this will not print")
else
    print("this will print")
end
-- false 和 nil 都为 false 数字 0 为 true
if 0 then
    print("this will not print")
else
    print("this will print")
end

if "" then
    print("this will not print")
else
    print("this will print")
end

if 1 then
    print("this will print")
else
    print("this will not print")
end

if "hello" then
    print("this will print")
else
    print("this will not print")
end


-- number 类型