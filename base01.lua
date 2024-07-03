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


-- [[
    多行注释
    Lua 标示符用于定义一个变量，函数获取其他用户定义的项。标示符以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上 0 个或多个字母，下划线，数字（0 到 9）。
    最好不要使用下划线加大写字母的标示符，因为Lua的保留字也是这样的。
    Lua 不允许使用特殊字符如 @, $, 和 % 来定义标示符。 Lua 是一个区分大小写的编程语言。因此在 Lua 中 Runoob 与 runoob 是两个不同的标示符。以下列出了一些正确的标示符：
    mohd zara abc move_name a_123  
    关键词
    and break go else elseif end false for function goto if in local nil not or repeat return then true until while

-- ]]


-- lua 数据类型


