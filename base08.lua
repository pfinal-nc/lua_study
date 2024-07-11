Window_Prototype = {x=0, y=0, width=100, height=100}
MyWin = {title="Hello"}
setmetatable(MyWin, {__index = Window_Prototype})

print(MyWin.title, MyWin.x, MyWin.y, MyWin.width, MyWin.height) -- Hello 0 0 100 100

-- MyWin 中就可以访问 x,y,width,height 了 Lua 会首先在 table 本身中查找key的值, 如果没有并且这个 table 存在一个带有 __index属性的 Metable 则 Lua 会按照 __index 所东一的函数逻辑查找
Person = {}

function Person:new(p)
    local obj = p
    if obj == nil then
        obj = {name="ChenHao", age=37, handsome=True}
    end
    self.__index = self
    return setmetatable(obj, self)
end

function Person:toString()
    return self.name .. " is " .. self.age .. " years old"
end

print(Person:new():toString())
pfinal = {name="PFinalClub", age=37, handsome=True}
print(Person:new(pfinal):toString())


me = Person:new()
print(me:toString())

-- 上面可以看到有一个  new方法和一个 toString 的方法. 其中:

-- 1) self 就是Person, Person:new(p) 就是相当于 Person:new() -> {name="ChenHao", age=37, handsome=True}
-- 2) new 方法的 self.__index = self 的意图是怕 self 被扩展后改写, 所以 让其保持原样
-- 3) setmetatable(obj, self) 的作用是让 obj 继承 Person 的属性和方法


-- 继承

Student = Person:new()

function Student:new()
    newObj = {year = 2013}
    self.__index = self
    return setmetatable(newObj, self)
end

function Student:toString()
    return "Student : ".. self.year.." : " .. self.name
end

print(Student:new():toString())
