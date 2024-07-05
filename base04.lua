-- lua 数组
array = {}
maxRows = 3
maxCols = 3
for i = 1, maxRows do
    array[i] = {}
    for j = 1, maxCols do
        array[i][j] = i * j
    end
end
for i = 1, maxRows do
    for j = 1, maxCols do
        io.write(array[i][j], "\t")
    end
    io.write("\n")
end

-- lua 字符串
str = "hello world"
print(string.len(str))
print(string.sub(str, 1, 5))
print(string.find(str, "world"))
print(string.format("the number is %d", 10))
print(string.rep("=", 10))

-- lua 迭代器
-- 迭代器是一种对象, 它能够用来遍历标准末班库容器中的部分或全部元素,每个迭代器对象代表容器中的确定的日志
-- 在Lua 中迭代器是一种支持指针类型的结构,它可以遍历集合的每一个元素

-- 泛型 for 迭代器
-- 泛型 for在自己内部保存迭代函数,实际上它保存三个值, 迭代函数,状态常量,控制变量
-- 泛型  for迭代器提供了集合key/value 对, 语法格式如何:
t = {"apple", "pear", "orange", "grape"}
for k, v in pairs(t) do
    print(k, v)
end

-- 无状态的迭代器
-- 无状态的迭代器是指不保留任何状态的迭代器, 因此在循环中我们可以利用无状态迭代器避免创建闭包花费额外的代价
-- 每一次迭代, 迭代函数都是用两个变量(状态常量和控制变量)的值作为参数被调用, 一个无状态的迭代器只利用这两个值可以获取下一个元素. 这种无状态迭代器的典型的简单的例子是 ipairs
-- 遍历数组的每一个元素

function square(iteratorMax, currentNumber)
    if currentNumber < iteratorMax then
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end
end
for i, n in square, 5, 0 do
    print(i, n)
end


-- 多状态的迭代器

-- 迭代器需要保存多个状态信息而不是简单的状态常量和控制变量, 最简单的方法是使用闭包, 还有一种方法就是将所有的状态信息封装到 table 内, 将table 作为迭代器的状态常量. 因为这种情况下可以将所有的信息存放在 table内.
-- 所以迭代函数通常不需要第二个参数.

array = {"Lua","Tutorial"}

function elementIterator (collection)
    local index = 0
    local count = #collection
    return function ()
        index = index + 1
        if index <= count then
            return collection[index]
        end
    end
end

for element in elementIterator(array) do
    print(element)
end