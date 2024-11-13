## 基础语法
- ArkTS是一种为构建高性能应用而设计的编程语言。ArkTS在继承TypeScript语法的基础上进行了优化，以提供更高的性能和开发效率。
--- 
- 简单介绍其基本知识，但不会全部写全。将先写入基本且简单的语法，根据需要再进行添加
- 例如语句、修饰符等有使用过其他编程语言进行基本编程的内容并没讲解
- 本人认为了解了原先语言的基本知识和我列出的语法，对比差异和相似处，是较好掌握的

### 数据的存储
- 见 [01-数据的存储.ets]
#### 类型
- `number` 和 `Number` 类型，任何整数和浮点数都可以被赋值给此类型的变量。
- `boolean` 类型由 `true` 和 `false` 两个逻辑值组成。
- `string` 代表字符序列；可以使用转义字符来表示字符。由单引号(')或双引号(")之间括起来的零个或多个字符。
- 字符串字面量还有一特殊形式，是由反向单引号(`)括起来的模板字面量。
- `void` 类型用于指定函数没有返回值。
- 关于 `Object`、`Array`、`Enum`、`Union`、`Aliases`类型在讲完变量和常量再介绍。
#### 变量声明
以关键字 `let` 开头的声明引入变量，该变量在程序执行期间可以也具有不同的值。
```typescript
let hi: string = 'hello';
let num: number = 1;
let isLogin: boolean = true;
```
#### 常量声明
以关键字 `const` 开头的声明引入只读常量，该常量只能被赋值一次
```typescript
const hello: string = 'hello';
```

### 数组
见 [02-数组.ets]

### 函数
- 1.定义函数  2.调用函数  注意可根据返回值将函数输出赋值给变量
```typescript
// 定义函数
function 函数名(形参名: 形参类型) {
  函数体
}
// 调用函数
函数名(实参)
```
见 [03-函数的基本使用.ets]

#### 箭头函数
```typescript
let 函数名 = (形参名: 形参类型) => {
  函数体
}
函数名(实参)
``` 
见 [05-箭头函数.ets]

### 接口 & 对象
- 1.定义接口   2.基于接口，定义对象   3.获取对象属性值   对象名.属性名
```typescript
// 1.定义接口
interface 类名 {
  类的属性名: string
  类的属性名: number
  类的属性名: boolean
  // 定义方法的类型
  类的方法: (形参) => void // 假设没有返回值
}

// 2.基于接口，定义对象
let 对象名: 类名 = {
  类的属性名: 对象的属性值,
  类的属性名: 对象的属性值,
  类的属性名: 对象的属性值,
  // 定义方法
  类的方法: (形参) => {
    方法体
  }
}

// 3.获取对象属性值   对象名.属性名  对象名.方法名(实参)
```
见 [06-接口&对象.ets]
和 [07-对象方法.ets]

### `Union`类型 联合类型
- 由多个类型组成的引用类型。联合类型包含了变量可能的所有类型。
```typescript
class Cat {
  name: string = 'cat';
  // ...
}
class Dog {
  name: string = 'dog';
  // ...
}
class Frog {
  name: string = 'frog';
  // ...
}
type Animal = Cat | Dog | Frog | number;
// Cat、Dog、Frog是一些类型（类或接口）

let animal: Animal = new Cat();
animal = new Frog();
animal = 42;
// 可以将类型为联合类型的变量赋值为任何组成类型的有效值
```
见 [08-联合类型.ets]

### 枚举类型 `Enum`类型
- 是预先定义的一组命名值的值类型，其中命名值又称为枚举常量。
- 使用枚举常量时必须以枚举类型名称为前缀。
```typescript
enum ColorSet { Red, Green, Blue }
let c: ColorSet = ColorSet.Red;
```
- 常量表达式可以用于显式设置枚举常量的值。
```typescript
enum ColorSet { White = 0xFF, Grey = 0x7F, Black = 0x00 }
let c: ColorSet = ColorSet.Black;
```
见 [09-枚举类型.ets]


