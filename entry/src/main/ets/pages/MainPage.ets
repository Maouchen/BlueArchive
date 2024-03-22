import AreaPage from './AreaPage'
import StudentPage from './StudentPage'
import SettingPage from './SettingPage'
import router from '@ohos.router';
@Extend(Tabs) function tabStyle(){
  .shadow({radius:20,color:'rgba(0,0,0,.1)',offsetX:2,offsetY:1})
  .backgroundImage($r('app.media.9'))
  .backgroundImageSize(ImageSize.Cover)
  .height('100%')
  .width('100%')
  .backdropBlur(15)
  .barMode(BarMode.Fixed)
  .animationDuration(200)
  .scrollable(false)
}
@Entry
@Component
struct MainPage {
  @State currentIndex: number = 0
  @State fontColor: string = '#94ffffff'
  @State selectedFontColor: string = '#9f5cfdfd'

  @Builder TabBuilder(index: number,name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(18)
        .fontWeight(this.currentIndex === index ? 600 : 400)
        .lineHeight(22)
        .margin({ top: 20, bottom: 7 })
      Divider()
        .strokeWidth(2)
        .color('#ffb8fffe')
        .blur(10)
        .opacity(this.currentIndex === index ? 1 : 0)
    }
  }
  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        AreaPage()
        }.tabBar(this.TabBuilder(0,'地区'))
      TabContent(){
        StudentPage()
      }.tabBar(this.TabBuilder(1, '人物'))
      TabContent(){
        SettingPage()
      }.tabBar(this.TabBuilder(2, '信息'))
    }
    .tabStyle()
    .onChange((index: number) => {
      this.currentIndex = index
    })
}
}