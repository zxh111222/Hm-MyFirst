// 枚举类型
// 1.定义枚举类型(常量列表)
enum ThemeColor {
  Red = '#ff0f29',
  Orange = 'ff7100',
  Green = '#30b30e'
}

// 2.给变量设定枚举类型
let color: ThemeColor = ThemeColor.Red
console.log('color', color)







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