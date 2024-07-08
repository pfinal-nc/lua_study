-- [[ 函数返回两个值的最大值 ]] --

function max(num1, num2)
    if (num1 > num2) then
        result = num1
    else 
        result = num2
    end
    return result;
end

-- 调用函数并显示结果 --
print("最大值是 " .. max(10, 4))
-- 调用函数并显示结果 --
print("最大值是 " .. max(5, 10))
print("最大值是 " .. max(10, 4))    



myprint = function(param)
    print("这是打印函数，参数是 " .. param)
end
myprint(10)

-- 调用函数并显示结果 --

function add(num1,num2,functionPrint)
    result = num1 + num2
    -- 调用传递的函数参数
    functionPrint(result)
end

myprint(13)

-- myprint 函数作为参数传递
add(3,7,myprint)