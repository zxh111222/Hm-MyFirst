// 需求: 定义一个变量，存放年终考试评价
// 考试评价: 可能是具体的分数，也可能是A、B、C、D等级
let judge: number | string = 100
judge = 'A+'
// judge = '优秀'
console.log('年终考试评价', judge)

let gender: 'man' | 'woman' | 'secret' = 'man'




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