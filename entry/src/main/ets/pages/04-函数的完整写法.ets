// 传入价格和数量，返回计算结果
function buy(price: number, num: number) {
  console.log('传入的数据', price, num)
  let result: number = price * num
  return result
}
// 2. 调用函数
let apple: number = buy(2, 3)
console.log('苹果', apple)

let banana: number = buy(4, 4)
console.log('香蕉', banana)














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