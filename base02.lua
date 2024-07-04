-- 可以用 [[]] 来表示一块字符串

html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)

print("2"+6) -- Lua 会尝试将这个数字字符串转成一个数字:
-- 在 lua 中使用 .. 来拼接字符串

print("pfinal".."club".."\n")

-- 在  lua中使用 # 来计算字符串长度

print(#"pfinalclub")

-- table 表
-- 创建一个空的 table

local tab1 = {}

-- 直接初始化表
local tbl2 = {"apple", "pear", "orange", "grape"}

-- Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。

-- table_test.lua 脚本文件
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

-- 不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。


-- function 

-- 在 Lua 中，函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里:


function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

-- function 可以以匿名函数（anonymous function）的方式通过参数传递:

function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end

tab = {key1 = "val1", key2 = "val2"}

function myFun1(k, v)
    return k .. " = " .. v
end

function myFun2(k, v)
    return '"' .. k .. '"' .. ' = ' .. '"' .. v .. '"'
end

testFun(tab, myFun1)
testFun(tab, myFun2)

-- 在 Lua 里，最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。

-- 线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。

