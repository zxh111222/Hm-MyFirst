class BannerClass {
  id: string = '';
  imageSrc: string = '';

  constructor(id: string, imageSrc: string) {
    this.id = id;
    this.imageSrc = imageSrc;
  }
}

@Entry
@Component
struct QuickStartPage {
  build() {
    Column() {
      Text('快速入门')
        .fontFamily('HarmonyHeiTi-Bold')
        .fontSize(24)
        .fontWeight(700)
        .lineHeight(33)
        .width("100%")
        .textAlign(TextAlign.Start)
        .margin({ left:16 })
      Banner()
      EnablementView()
    }
  }
}

@Preview
@Component
struct Banner {
  @State bannerList: BannerClass[] = [
    new BannerClass('1', 'app.media.banner_img1'),
    new BannerClass('2', 'app.media.banner_img2'),
    new BannerClass('3', 'app.media.banner_img3')
  ];
  private swiperController: SwiperController = new SwiperController();

  build() {
    Swiper(this.swiperController) {
      ForEach(this.bannerList, (item: BannerClass) => {
        Image($r(item.imageSrc))
          .objectFit(ImageFit.Contain)
          .width('100%')
          .padding({left: 16, right: 16 })
          .borderRadius(16)
      }, (item: BannerClass) => item.id)
    }
    .autoPlay(true)
    .loop(true)
  }
}

class ArticleClass {
  imageSrc: string;
  title: string;
  brief: string;

  constructor(imageSrc: string, title: string, brief: string) {
    this.imageSrc = imageSrc;
    this.title = title;
    this.brief = brief;
  }
}


@Preview
@Component
export struct EnablementView {
  @Prop enablementItem: ArticleClass = new ArticleClass('app.media.default_img', '标题1', '描述1');

  build() {
    Column() {
      Image($r(this.enablementItem.imageSrc))
        .width('100%')
        .objectFit(ImageFit.Cover)
        .height(96)
        .borderRadius({
          topLeft: 16,
          topRight: 16
        })
      Text(this.enablementItem.title)
        .height(19)
        .width('100%')
        .fontSize(14)
        .textAlign(TextAlign.Start)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
        .fontWeight(400)
        .padding({ left: 12, right: 12 })
        .margin({ top: 8 })
      Text(this.enablementItem.brief)
        .height(32)
        .width('100%')
        .fontSize(12)
        .textAlign(TextAlign.Start)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(2)
        .fontWeight(400)
        .fontColor('rgba(0, 0, 0, 0.6)')
        .padding({ left: 12, right: 12 })
        .margin({ top: 2 })
    }
    .width(160)
    .height(169)
    .borderRadius(16)
    .backgroundColor(Color.White)
  }
}
