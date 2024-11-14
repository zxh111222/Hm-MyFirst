// 界面开发: build 里面写代码，预览器看效果

@Entry
@Component
struct Index {
  @State message: string = '一起学习 HarmonyOS 应用开发';
  // 构建 -> 界面
  build() {
    // 相对容器
    RelativeContainer() {
      // 文本  函数名(参数)  对象.方法名(参数) 枚举.常量名
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50) // 设置文本大小
        .fontWeight(FontWeight.Lighter) // 设置文本粗细
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}