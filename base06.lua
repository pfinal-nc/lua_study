-- if-else 分支
-- age = io.read()
-- --  age 转成 数字 
-- age = tonumber(age)

-- sex = "Female"
-- if age == 40 and sex =="Male" then
--     print("男人四十一枝花")
-- elseif age > 60 and sex ~="Female" then
--     print("old man without country!")
-- elseif age < 20 then
--     io.write("too young, too naive!\n")
-- else
--     local age = io.read()
--     print("Your age is "..age)
-- end

-- until 循环

-- 递归

function fib(n)
    if n < 2 then return 1 end
    return fib(n-1) + fib(n-2)
end

print(fib(10))


-- 闭包

 function newCounter()
    local i = 0
    return function()
        i = i + 1
        return i
    end
end

c1 = newCounter()
c2 = newCounter()
print(c1())
print(c1())
print(c2())
print(c2())

-- 函数的返回值
-- 和 Go语言一样,可以一条语句上赋多个值 如

name, age, bGay = "haoel", 37, false, "haoel@hotmail.com"

-- 函数也可以返回多个值
function getUsertInfo(id)
    print(td)
    return "haoel", 37, false, "haoel@hotmail.com"
end

name, age, bGay, email = getUsertInfo(1)
print(name, age, bGay, email)

-- 局部函数
-- 函数前面加上 local就是局部函数, 其实, Lua中的函数和 javascript 中的一个德行

function foo(x) return x^2 end
print(foo(2))

foo = function(x) return x^2 end
print(foo(2))