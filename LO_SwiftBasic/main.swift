//
//  main.swift
//  LO_SwiftBasic
//
//  Created by 张正 on 15/9/15.
//  Copyright (c) 2015年 张正. All rights reserved.
//

import Foundation

/*
// 输出函数, 可以自动换行
println("Hello, World!")

// 注释
// 单行注释
// 用双斜杠进行单行注释

// 多行注释, Swift当中可以嵌套注释
/*
    /*
    */
*/


// 1. Swift的基本数据类型
// 整型: Int, Int8, Int16, Int32, Int64
// 浮点型: Double, Float
// 布尔类型: Bool
// 文本类型: String
// 集合类型: Array, Dictionary, Set
// 元祖: 可以让我们创建或者传递一组数据
// 可选类型: 用于处理值缺失的情况


// 2. 常量和变量
// 常量是程序运行期间值不能够被改变的量, 变量是程序运行期间值可以被改变的量, 在Swift当中, 我们用let来修饰一个常量, 用var来修饰一个变量
// 声明一个常量
// 规则: let + 常量名: 类型 = 值
let ageOfStudent:Int = 18
println(ageOfStudent)

// 声明一个变量
// 规则: var + 变量名: 类型 = 值
var scoreOfStudent:Float = 95.5
println(scoreOfStudent)

let nameOfStudent:String = "小明"
println(nameOfStudent)

// 分号
// Swift当中我们没有必要在代码结束时加分号
// 但是如果一行中写了几句代码, 那么我们就需要将他们用分号隔开
// 例:
let a:Int = 5; println(a)

// 命名规则
// 我们可以使用任何喜欢的字符作为常量和变量名, 包括Unicode字符, 但是常量与变量名不能包含数学符号, 箭头, 保留的活着非法的Unicode码位, 连线与制表符
let 你好 = "你好, 世界"
println(你好)

let 🐂 = "cattle"
println(🐂)


// 类型安全与推断
// Swift是一个类型安全的语言, 它会在编译我们的代码时进行类型检查, 并把不匹配的类型标记为错误, 这可以让我们在开发的时候尽早发现并修复错误
//let ageOfPerson:Int = 19.5

// 类型检查可以在我们处理不同类型的值时帮我们避免错误
// Swift我们不需要每次声明常量和变量时都显示指定类型, 如果我们没有显示指定类型, Swift会根据我们给常量或者变量赋的值来推断常量或者变量的类型
let pageNumber = 10 // Swift会根据10把pageNumber推断为Int类型
let welcomeMessage = "Hello" // Swift会把welcomeMessage推断为String类型
var floatNumber = 9.6 // Swift会把floatNumber推断为Double类型

var floatNumber2 = 3 + 10.7 // Swift会把floatNumber2推断为Double类型

// 数值字面量
// 十进制的值是不需要加任何前缀的
let w = 20
println(w)

// 二进制的值, 加前缀0b
let x = 0b101
println(x)

// 八进制的值, 加前缀0o
let y = 0o17
println(y)

// 十六进制的值, 加前缀0x
let z = 0xA
println(z)

// 数值类型的转换
var intOfNumber = 10
var floatOfNumber = 55.5

// 把一个浮点型转化为Int类型
var intTotal = intOfNumber + Int(floatOfNumber)
println(intTotal)

// 把一个整型数转化为Double类型
var DoubleTotal = floatOfNumber + Double(intOfNumber)
println(DoubleTotal)

// 取出Int8最大值
println(Int8.max)
// 取出Int8最小值
println(Int8.min)

// 类型别名的使用 typealias
typealias resultInt8 = Int8
println(resultInt8.max)

// 布尔值: Bool
let trueOfResult = true
let falseOfResult = false

// 3. 元组
// 元组把多个值组合成一个复合值, 元组内的值可以是任意类型, 并不要求是相同类型
let infoOfStudent = ("小明", 18, "男")

// 取出元组中的每个值
println(infoOfStudent.0)
println(infoOfStudent.1)
println(infoOfStudent.2)

let infoOfPerson = (name:"小强", age:18, gender:"男")
println(infoOfPerson.name)
println(infoOfPerson.age)
println(infoOfPerson.gender)

// 元组的分解
// 我们可以将元组的内容分解成单独的常量和变量
let (name, age, gender) = infoOfStudent
println(name)
println(age)
println(gender)

// 如果我们只需要一部分元组值, 分解的时候可以把要忽略的部分用下划线标记
let (_, number, _) = infoOfStudent
println(number)


// 4. 可选类型
// 使用可选类型可以处理值缺失的情况
// Int? 如果类型后面有?, 则暗示此常量或变量的结果可能是一个Int类型或者是nil
let ageStr = "99"
let ageOfString = ageStr.toInt()
println(ageOfString)

// 如果在确定我们的可选类型有值之后, 我们可以通过常量或者变量名称+!的方式强制解析出数值
if ageOfString != nil {
    println(ageOfString!)
} else {
    println(ageOfString)
}


// 可选绑定
// 使用可选绑定可以判断可选类型是否有值, 如果有值就把值赋给一个临时常量或者变量, 可选绑定可以用在if和while语句中来对可选类型的值进行判断并把值赋给一个常量或者变量
let optionalStr = "998"
if let constantNumber = optionalStr.toInt() {
    println(constantNumber)
} else {
    println("没有值")
}


// 断言
// 在程序运行期间起到一个断点调试的作用, 如果断言里面的条件不符合, 则触发断言
let stringLength = -1

// 设置断言
assert(stringLength >= 0, "字符串的长度不可能小于零")

*/

/*
// 5. 基本运算符
// 受运算符影响的值叫做操作数
// 根据操作数的个数运算符可以分为一元, 二元, 三元运算符
// 一元运算符: 前置运算符(!a), 后置运算符(a++)
// 二元运算符: 出现在两个操作对象之间(+, -, *, /, %...)
// 三元运算符: 就是三目运算符(a ? b : c)

// 常用的运算符
// 赋值运算符 = 
let b = 5
var a = b
println(a)

// Swift中的赋值运算符没有返回值
if a == 5 {
    println("hehe")
}

// 算术运算符(+, -, *, /, %)
// "+"
let addNumber = 5 + 3
println(addNumber)

// "-"
let subNumber = 5 - 3
println(subNumber)

// "*"
let mulNumber = 2 * 6
println(mulNumber)

// "/"
let divNumber = 10 / 2.5
println(divNumber)

// "%"
let modNumber = 9 % 2
println(modNumber)

// 注意: 在Swift当中我们可以对浮点数进行取余运算
let modNumberOfFloat = 10.5 % 2.0
println(modNumberOfFloat)


// 自增, 自减运算符
var testNumber = 10
testNumber++
println(testNumber)
++testNumber
println(testNumber) // ++在前取新值, ++在后取旧值
println(testNumber++)
println(testNumber)
println(++testNumber)

var testNumber2 = 9
println(--testNumber2)
println(testNumber2--)

// 复合赋值运算符 +=, -=, *=, /=, %=
var numberA = 5;
numberA += 3    // 等价于numberA = numberA + 3
println(numberA)

numberA -= 2    // 等价于numberA = numberA - 2
println(numberA)

numberA *= 3    // 等价于numberA = numberA * 3
println(numberA)

numberA /= 6    // 等价于numberA = numberA / 6
println(numberA)

numberA %= 2    // 等价于numberA = numberA % 2
println(numberA)


// 比较运算符 >, <, >=, <=, !=, ==, 比较运算符都有一个bool返回值
var numA = 20
var numB = 30
var numC = 50

var result = numA > numB
println(result)
var result2 = numA == numB
println(result2)
var result3 = (numA + numB) == numC
println(result3)
var result4 = numA != numB
println(result4)


// 三目运算符 (a ? b : c)
let resultNumber = true ? 50 : 20
println(resultNumber)

// 逻辑运算符
// 逻辑与(&&), 逻辑或(||), 逻辑非(!)
// 逻辑与(&&)
let boolValue1 = true
let boolValue2 = false
// 逻辑与运算符两边同时为真, 结果才为真
let resultOfBool = boolValue1 && boolValue2
println(resultOfBool)

// 逻辑或运算符两边同时为假, 结果才为假
let resultOfBool2 = boolValue1 || boolValue2
println(resultOfBool2)

// 逻辑非(!)
let resultOfBool3 = !resultOfBool2
println(resultOfBool3)

// 逻辑与和逻辑或的短路现象, 如果逻辑与运算符前面的结果为假, 那么运算符后面的代码将不再执行, 如果逻辑或运算符前面的结果为真, 那么运算符后面的代码将不会被执行

// 区间运算符
// Swift提供了两个方便表达一个区间的值的运算符

// 闭区间运算符
// 闭区间运算符(a...b)定义一个包含从a到b(包括a和b)的所有值的区间, b的值大于a. 闭区间运算符在迭代一个区间的所有值时是非常有用的, 如在for-in循环中

// 例:
for index in 1...5 {
    println(index)
}

// 半开区间运算符
// 半开区间(a..<b)定义一个从a到b但不包含b的区间.
for index in 1..<5 {
    println(index)
}


// 空合运算符 ??
// 空合运算符(a ?? b)将可选类型a进行空判断, 如果a包含一个值就进行解封, 否则就返回一个默认值b. 这个运算符有两个条件: 1. 表达式a必须是可选类型; 2.默认值b的类型必须和a存储的值的类型保持一致
// 例:
var numberX:Int? = 15
let numberY = 10
let resultXY = numberX ?? numberY
println(resultXY)
*/

/*
// 6. 字符串和字符
// 创建字符串
var str = ""
var str2 = String()

str = "hello"
println(str)

// 字符串的拼接
str += " world"
println(str)

// 字符串插值
println("\(str)")

var charVlue:Character = "a"
str.append(charVlue)
println(str)

// 遍历字符串
for charValue in str {
    println(charValue)
}

// 字符串的可变性
// 字符串本身没有可变与不可变之分, 可变与不可变取决于我们定义该字符串时是常量, 还是变量
let stringValue1 = "test"
var stringValue2 = "test2"

// 字符串的大小写
var aString = "hhh"
let uppercaseResult = aString.uppercaseString
println(uppercaseResult)
let lowercaseResult = uppercaseResult.lowercaseString
println(lowercaseResult)

// 判断两个字符串是否相等
let stringValue3 = "你好"
let stringValue4 = "大家好"
let boolValue = stringValue3 == stringValue4
println(boolValue)

// 判断字符串是否有前后缀
let boolValueOfString = stringValue3.hasPrefix("你")
println(boolValueOfString)
let boolValueOfString2 = stringValue3.hasSuffix("png")
println(boolValueOfString2)


// 7. 集合类型
// Array

// 初始化一个空数组
// 1. 直接给变量赋值一个空数组
var emptyArray = [Int]()
// 2. 通过数组构造方法
var emptyArray2:[Int] = Array()
// 3. 通过数组构造方法2
var emptyArray3:Array<Int> = Array()


emptyArray = [1, 2, 3, 4, 5]
var testArray = [1, 2, 3, 4, 5]
println(testArray)

// 遍历数组
for element in testArray {
    println(element)
}

// 遍历数组, 取出数组中的下标和内容
for (index, intValue) in enumerate(testArray) {
    println("index = \(index), intValue = \(intValue)")
}

// 给数组添加元素
testArray.insert(0, atIndex: 0)
println(testArray)

// 在数组中插入元素的另一个方法, 只能把元素添加到数组的最后一个位置
testArray.append(7)
println(testArray)

// 取出数组中的元素
let aNumberOfArray:Int = testArray[0]
println(aNumberOfArray)

// 修改数组中的元素
testArray[0] = 99
println(testArray)

// 删除数组中的元素
testArray.removeLast()
println(testArray)

testArray.removeAll(keepCapacity: true)
println(testArray)


// 字典
// 如何初始化一个字典

var aDict = ["name": "小明", "age": "18"]
println(aDict)

var emptyDictionary:Dictionary<Int, Int> = Dictionary()
emptyDictionary = [1: 2, 2: 3]
println(emptyDictionary)

var emptyDictionary2:[String: String] = Dictionary()
emptyDictionary2 = ["name": "小明"]
println(emptyDictionary2)


// 遍历字典
for (key, value) in emptyDictionary {
    println("key = \(key), value = \(value)")
}

// 给字典中添加新的元素
emptyDictionary[3] = 4
println(emptyDictionary)

// 通过updateValue()函数来添加
emptyDictionary.updateValue(4, forKey: 4)
println(emptyDictionary)

emptyDictionary.updateValue(9, forKey: 4)
println(emptyDictionary)
*/

// 控制流
// for循环
for var i = 0; i < 100; i++ {
    println(i)
}

// while循环
var index_i = 0
var sumValueOfWhile = 0
while index_i < 100 {
    sumValueOfWhile += index_i
    index_i++
}
println("sumValueOfWhile = \(sumValueOfWhile)")

// do...while 和 while的区别就在于do...while不管条件是真是假, 都会执行一次循环体
// 例:
var while_indexI = 0
while false {
    while_indexI++
}
println(while_indexI)

var doWhile_indexI = 0
do {
    doWhile_indexI++
} while false
println(doWhile_indexI)


// if else 分支语句
let a = 5, b = 8
if a > b {
    println("\(a) 比 \(b) 大")
} else {
    println("\(a) 不大于 \(b)")
}

// 级联式 if...else if ....else ...if ...else
var numberOfFriends = 10
if numberOfFriends == 1 {
    println("我们两个去打台球")
} else if numberOfFriends == 2 {
    println("我们去旅行")
} else if numberOfFriends == 3 {
    println("我们去爬山")
} else {
    println("我们去游泳")
}


// switch...case
var characterValue:Character = "a"
switch characterValue {
    case "a":
    println("a")
    case "b":
    println("b")
default:
    println("others")
}

// 匹配区间
let money = 99
switch money {
case 1...10:
    println("只有几块钱")
case 11..<100:
    println("有几十块钱")
default:
    println("我有好多钱")
}

// 元组匹配
var yzValue = (100, 200)
switch yzValue {
case (let x, 200):
    println("x = \(x)")
default:
    println("other")
}

// continue break
for var i = 0; i < 10; i++ {
    if i == 5 {
        continue    // 跳出本次循环
    }
    println(i)
}

for var i = 0; i < 10; i++ {
    if i == 5 {
        break     // 跳出本层循环
    }
    println(i)
}

// fallthrough 
var intValue = 18
switch intValue {
case 3:
    println("3")
case 18:
    println("18")
    fallthrough
default:
    println("其它")
}

// 标签语句, 标识我们的哪个循环
biaoqian: while true {
    for var i = 0; i < 10; i++ {
        if i == 5 {
            break biaoqian
        }
        println(i)
    }
}

// 9. 函数
// 语法: func 函数名(参数)->返回值 {}
// 无参无返回值
func printHelloWorld() {
    println("Hello, world")
}
// 函数调用
printHelloWorld()

// 无参有返回值
func returnAStr()->String {
    return "hello"
}
let funcValue = returnAStr()
println(funcValue)

// 有参有返回值
func returnAStringWithAString(str:String)->String {
    return str + " hello"
}
let funcValue2 = returnAStringWithAString("你好")
println(funcValue2)

// 有参无返回值
func printNameWithStr(str:String) {
    println(str)
}
printNameWithStr("小明")


// 如何返回多个返回值? 我们可以返回一个元组
func returnATupleValueWithStr(str:String)->(str1:String, str2:String) {
    var strValue1 = str.uppercaseString
    var strValue2 = str.lowercaseString
    return (strValue1, strValue2)
}
let (str1, str2) = returnATupleValueWithStr("abc")
println("str1 = \(str1), str2 = \(str2)")

// 函数的形参默认是常量, 我们不可以对它就行内容改变的操作, 如果我们想改变形参, 我们必须把它声明成var类型
func changeValue(var str:String)->String {
    str += "hello"
    return str
}
let funcValue3 = changeValue("小强")
println(funcValue3)

// 交换两个变量的值的函数
// 如果我们想修改外部变量的值, 在形参前面需要加inout关键字, 这样沃恩调用函数的时候, 就可以把外部变量的地址传递过来, 从而达到改变外部变量值的目的
func swapTwoNumber (inout num1:Int, inout num2:Int) {
    var temp = 0
    temp = num1
    num1 = num2
    num2 = temp
}
var a1 = 10, b1 = 20
swap(&a1, &b1)
println("a1 = \(a1), b1 = \(b1)")


// 10.闭包
// 闭包是字包含函数代码块, 可以在代码中被传递和使用
// 语法
/*
{
    (参数,...)->返回值 in
    执行语句
}
*/

// 例
let block = {
    (str:String)->String in
    return "hello " + str
}
let blockValue = block("world")
println(blockValue)




























