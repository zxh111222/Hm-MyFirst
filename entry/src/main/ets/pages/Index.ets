// console.log('消息说明','打印的内容')
console.log('我说','HelloWorld!')

// 1. 变量存储
// 1.1 字符串 string 类型
let title: string = '麦辣鸡腿堡'
console.log('title', title)
// 1.2 数字 number 类型
let age:number = 18
console.log('age', age)
// 1.3 布尔 boolean 类型
let isLogin: boolean = false
console.log('是否登录成功', isLogin)

// 2.变量的修改
age = 40
console.log('age', age);

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}