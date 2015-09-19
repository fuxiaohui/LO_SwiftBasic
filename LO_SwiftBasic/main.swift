


/*
// 输出函数
print("Hello, world\n")

// 注释代码
// 单行注释 //
// 多行注释 /*  */
/*
    /*
    */
*/


// 1. Swift的基本数据类型
// 整型: Int, Int8, Int16, Int32, Int64
// 浮点型: Double, Float
// 布尔类型: Bool
// 字符型: Character
// 文本类型: String
// 集合类型: Array, Dictionary, Set
// 元组: 创建或者传递一组数据
// 可选类型: 用于处理值缺失的情况


// 2. 常量和变量
// 常量
let a:Int = 18
print("a = \(a)\n")

let charValue:Character = "a"
print("charValue = \(charValue)\n")

// 变量
var scoreOfStudent:Float = 95.5
print("scoreOfStudent = \(scoreOfStudent)\n")

// 分号
// Swift中我们不用写上分号来结束语句
let age:Int = 18; print("\(age)\n")

// 命名规则
let 你好:String = "你好, 世界"
print("\(你好)\n")

let 🐂:String = "牛"
print("\(🐂)\n")

// 类型安全与推断
//let ageOfPerson:Int = 19.5

let pageNumber = 10
let hello = "Hello"
var floatNumber = 9.6

// 数值字面量
// 十进制
let w = 20

// 二进制
let x = 0b101

// 八进制
let y = 0o17

// 十六进制
let z = 0xA

print("w = \(w), x = \(x), y = \(y), z = \(z)\n")

// 数值类型的转化
var intOfNumber = 10
var floatOfNumber = 55.5

let result = Int(floatOfNumber)
let result2 = intOfNumber + result
print("\(result2)\n")

// 取出Int8的最大值
print("\(Int8.max)")
// 最小值
print("\(Int8.min)\n")

// 类型别名的使用 typealias
typealias resultInt8 = Int8
print(resultInt8.max)
print("\n")

// 布尔值: Bool
let trueValue = true
let falseValue = false
print(trueValue)
print("\n")
print(falseValue)
print("\n")


// 3. 元组
let infoOfStudent = ("小明", 18, "男")
print("\(infoOfStudent)\n")

// 取出元组中的每个值
print(infoOfStudent.0)
print("\n")

let infoOfPerson = (name:"小强", age:18, gender:"男")
print(infoOfPerson.name)
print("\n")

// 元组的分解
let (name, age2, gender) = infoOfPerson
print(name)
print("\n")

let (_, ageOfPerson, _) = infoOfPerson
print(ageOfPerson)
print("\n")

// 4. 可选类型
// Int?, 暗示常量或者变量的结果可能是一个Int类型, 也可能是nil
let ageStr = "99"
let ageOfString = ageStr.toInt()
print("\(ageOfString!)\n")

// 强制解析
// 我们可以在可选类型常量或变量后面加!强制解析出数据

// 可选绑定
let optionalStr = "999"
if let constantNumber = optionalStr.toInt() {
    print("\(constantNumber)\n")
} else {
    print("没有值\n")
}

// 断言
let stringLenght = -1
// 设置断言
assert(stringLenght >= 0, "字符串的长度不可能小于零")

*/


// 5. 基本运算符
// 赋值运算符没有返回值
// 区间运算符
// 闭区间运算符
// (a...b)
// 例
for index in 1...5 {
    print("\(index)\n")
}

// 半开区间运算符(a..<b)
for index in 1..<5 {
    print("\(index)\n")
}

// 空合运算符 ??
// a ?? b
// 例:
var numberX:Int? = 15
let numberY = 10
let resultXY = numberX ?? numberY
print("\(resultXY)\n")

// 6. 字符串
var str = ""
var str2 = String()

str = "hello"
print("\(str)\n")

str += " world"
print("\(str)\n")

var charValue:Character = "a"
str.append(charValue)
print("\(str)\n")

// 遍历字符串
for value in str {
    print("\(value)\n")
}

// 字符串可变性
// 字符串大小写
var aString = "hhh"
let uppercaseResult = aString.uppercaseString
print(uppercaseResult)
print("\n")

let lowercaseResult = aString.lowercaseString
print(lowercaseResult)
print("\n")

// 用== 来判断两个字符串是否相等


// 7. 集合类型
// Array
var emptyArray = [Int]()
var emptyArray2:[Int] = Array()
var emptyArray3:Array<Int> = Array()

emptyArray = [1, 2, 3, 4, 5]
print(emptyArray)
print("\n")

for element in emptyArray {
    print("\(element)\n")
}

for (index, intValue) in enumerate(emptyArray) {
    print("index = \(index), intValue = \(intValue)\n")
}

// 添加元素
emptyArray.append(7)
print(emptyArray)

// 插入元素
emptyArray.insert(8, atIndex: 0)
print(emptyArray)
print("\n")

// 取出数组中的元素
let aNumberOfArray:Int = emptyArray[0]
print(aNumberOfArray)
print("\n")

// 修改
emptyArray[0] = 9
print(emptyArray)
print("\n")

// 删除
emptyArray.removeLast()
print(emptyArray)
emptyArray.removeAll(keepCapacity: true)
print(emptyArray)
print("\n")

// 字典
// 初始化字典
var aDict = ["name": "小明", "age": "18"]
print(aDict)
print("\n")

var emptyDictionary:Dictionary<Int, Int> = Dictionary()
emptyDictionary = [1: 2, 2: 3]
print(emptyDictionary)
print("\n")

// 遍历字典
for (key, value) in emptyDictionary {
    print("key = \(key), value = \(value)\n")
}

// 添加元素
emptyDictionary[3] = 4
print(emptyDictionary)
print("\n")

// 通过updateValue()添加元素
emptyDictionary.updateValue(5, forKey: 1)
print(emptyDictionary)
print("\n")

emptyDictionary.updateValue(9, forKey: 5)
print(emptyDictionary)


// 控制流
// for循环
for var i = 0; i < 100; i++ {
    print("i = \(i)\n")
}

// while循环
var index_i = 0
var sumValueOfWhile = 0
while index_i < 100 {
    sumValueOfWhile += index_i
    index_i++
}
print("\(sumValueOfWhile)\n")


// do...while
var while_indexI = 0
do {
    print("hello\n")
} while while_indexI > 0

// if...else
let a = 5, b = 8
if a > b {
    print("\(a) 比 \(b) 大")
} else if  a == b {
    print("\(a) 和 \(b) 相等")
} else {
    print("\(a) 小于 \(b)")
}
print("\n")

// switch...case
var characterValue:Character = "a"
switch characterValue {
    case "a":
    print("a")
    case "b":
    print("b")
default:
    print("others")
}
print("\n")

// 匹配区间
let money = 99
switch money {
case 1...10:
    print("只有几块钱\n")
case 11..<100:
    print("有几十块钱\n")
    fallthrough
default:
    print("有好多钱\n")
}

// 9. 函数
// 语法: func 函数名(参数)->返回值 {}
// 无参无返回值
func printHelloWorld() {
    print("hello, world\n")
}
printHelloWorld()

// 无参有返回值
func returnAStr()->String {
    return "hello"
}
let resultFunc = returnAStr()
print(resultFunc)
print("\n")

// 有参有返回值
func retureAStringWithAString(str:String)->String {
    return str + " hello"
}
let funcValue = retureAStringWithAString("小明")
print(funcValue)
print("\n")

// 有参无返回值
func printNameWithStr(str:String) {
    print(str)
}
print("你好, 世界\n")

// 元组做为返回值
func returnATupleValueWithStr(str:String)->(str1:String, str2:String) {
    var strValue1 = str.uppercaseString
    var strValue2 = str.lowercaseString
    return (strValue1, strValue2)
}
let (value1, value2) = returnATupleValueWithStr("abc")
print("value1 = \(value1), value2 = \(value2)\n")

// 10. 闭包
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
let blockVlaue = block("world")
print(blockVlaue)



