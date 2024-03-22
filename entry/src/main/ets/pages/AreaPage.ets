import DataPrefab from './DataModel'
import ItemData from './ItemData';
@Extend(Grid) function FirstGridStyle(){
  .rowsTemplate('1fr')
    .columnsGap('2')
    .rowsGap('2')
    .padding({ top: 2, bottom: 2 })
    .height('15%')
    .backgroundColor('rgba(0,0,0,0,0)')
    .borderRadius(10)
    .margin({top:20,bottom:20})
}
@Extend(Grid) function SecondGridStyle(){
  .rowsTemplate('1fr 1fr')
  .columnsGap(10)
  .rowsGap(10)
  .height('35%')
  .width('100%')
  .margin({top:5})
}
@Extend(GridItem) function SecondGridItemStyle(item:ItemData){
  .padding({ top: 10, left: 5 })
  .borderRadius(15)
  .align((Alignment.TopStart))
  .backgroundImage(item.image)
  .backgroundImageSize(ImageSize.Cover)
  .width('50%')
  .height('90%')
}
@Extend(Text) function SecondGridFontStyle(){
  .fontSize(16)
  .fontColor('#b9ffffff')
  .fontWeight(700)
  .fontStyle(FontStyle.Italic)
  .fontFamily('OptimusPrincepsSemiBold')
}
@Extend(Text) function FirstGridFontStyle(){
  .fontSize(14)
  .fontColor('#fff')
  .fontStyle(FontStyle.Italic)
  .fontWeight(FontWeight.Medium)
  .fontFamily('OptimusPrincepsSemiBold')
}
@Builder function Logo(){
  Flex({alignItems:ItemAlign.Start}){
    Image($rawfile('Site-logo.png'))
      .width('725px')
      .height('277px')
  }.width('100%')
}
@Builder function SwiperImg(){
  Swiper() {
    ForEach(DataPrefab.getSwiperImage(), (item: Resource) => {
      Image(item)
        .borderRadius(10)
    })
  }.autoPlay(true)
  .indicator(false)
  .margin(5)
  .width('100%')
  .height('30%')
}
@Builder function FirstGrid(){
  Grid() {
    ForEach(DataPrefab.getFirstGridData(), (item: ItemData) => {
      GridItem() {
        Column() {
          Image(item.image)
            .width(86)
            .height(79.875)
            .borderRadius(5)
          Text(item.name)
            .FirstGridFontStyle()

        }
      }.width(120)
    })
  }.FirstGridStyle()

}
@Builder function SecondGrid(){
  Grid() {
    ForEach(DataPrefab.getSecondGridData(), (item: ItemData) => {
      GridItem() {
        Column() {
          Text(item.name)
            .SecondGridFontStyle()
        }
        .alignItems(HorizontalAlign.Start)
      }.SecondGridItemStyle(item)
    })
  }.SecondGridStyle()

}
@Component
export default struct AreaPage {
  build() {
        Column( ) {
          Logo()
          SwiperImg()
          FirstGrid()
          SecondGrid()
        }.height('100%')
  }
}