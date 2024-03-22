import DataPrefab from './DataModel'
import ItemData from './ItemData'
import router from '@ohos.router';
@Builder function StudentList(){
  List() {
    ForEach(DataPrefab.getListItem(), (item: ItemData) => {
      ListItem() {
        Row() {
          Column(){
            Image(item.image)
              .width('30%')
              .height('85%')
              .borderRadius(15)
            Text(item.name)
              .fontSize(18)
              .fontColor('#fff')
              .fontWeight(FontWeight.Medium)
          }.margin({right:'5%'})
          Image(item.others)
            .width('65%')
            .borderRadius(15)
        }
      }.height(120)
      .margin({bottom:10})
    })
  }
}
@Component
export default struct StudentPage {
  build() {
    Column() {
      Blank(10)
      StudentList()
    }.height('100%')
    .width("100%")
  }
}