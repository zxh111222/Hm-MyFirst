// 箭头函数
let star = () => {
  console.log('星星', '*');
  console.log('星星', '**');
  console.log('星星', '***');
  console.log('星星', '****');
  console.log('星星', '*****');
}
star()

let buy = (price: number, weight: number) => {
  let result: number = price * weight
  return result
}
let apple: number = buy(2, 3)
console.log('苹果', apple);







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