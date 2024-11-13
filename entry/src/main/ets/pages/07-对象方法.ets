// 定义一个对象

// 1.定义接口
interface Person {
  name: string
  age: number
  weight: number
  // 定义方法的类型
  sing: (song: string) => void
  dance: () => void
}

// 2.基于接口，定义对象
let zxh: Person = {
  name: 'zxh',
  age: 23,
  weight:150,

  // 定义方法
  sing: (song: string) => {
    console.log('zxh说', '我来唱首歌', song)
  },
  dance: () => {
    console.log('zxh说', '我来跳支舞')
  }
}

// 3.获取对象属性值   对象名.属性名
console.log('体重:', zxh.weight)
console.log('年龄:', zxh.age)
console.log('姓名:', zxh.name)

zxh.sing('小星星')
zxh.dance()






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