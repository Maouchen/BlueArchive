import DataPrefab from './DataModel'
import ItemData from './ItemData'
import animator from '@ohos.animator';

@Styles function iconStyles(){
  .width('141px')
  .height('141px')
}
//弹框
@CustomDialog
struct Store {
  controller: CustomDialogController
  build() {
    Column(){
      Flex({alignItems:ItemAlign.Start}){
        Button('X')
          .onClick(()=>this.controller.close())
          .backgroundColor('#56ffffff')
          .backgroundImage($r('app.media.Back'))
          .width('141px')
          .height('141px')
      }
      Grid(){
        ForEach(DataPrefab.getStoreItem(),(item:ItemData)=>{
          GridItem(){
            Column(){
              Image(item.image)
              Text(item.name)
                .fontColor('#fff')
                .fontSize(16)
                .fontWeight(500)
            }
          }
        })
      }.columnsTemplate('1fr 1fr 1fr')
      .columnsGap(5)
      .rowsGap(5)
      .backdropBlur(10)
    }.width('90%')
    .height('44%')
    .backgroundColor('#00fafafa')
    .borderRadius(15)
    }
  }

@Component
export default struct SettingPage {
  @State image:Resource =$rawfile('Rank/Raid_RankIcon_04.png')
  @State cdimage:Resource =$rawfile('CD/RG_Image_TellYourWorld.png')
  @State username:string='Hina'
  //音量
  @State voiceRank:number=0
  //进度条
  @State progress:number=0
  //下拉框下标
  private curIndex:number=0
  //列表下标
  private ListIndex:number=0
  //动画用
  private backAnimator: any = undefined
  private totalPlaytime=12000
  private totalProgress=720
  flag:Boolean=false
  //滚动控制器
  scroller: Scroller = new Scroller()
  //弹窗控制器
  dialogController: CustomDialogController = new CustomDialogController({
    builder: Store(),
    autoCancel: false,
    gridCount: 4,
    customStyle: true
  })
  @Builder  Message(){
  Flex({ alignItems: ItemAlign.Start }) {
    Row() {
      Image(this.image)
        .width('40%')
      Select([
        { value: '1' },
        { value: '2' },
        { value: '3' },
        { value: '4' },
      ])
        .selected(0)
        .value('4')
        .selectedOptionBgColor('#00ffffff')
        .optionBgColor('#00ffffff')
        .onSelect((index) => {
          this.curIndex = index
          switch (this.curIndex) {
            case 0:
              this.image = $rawfile('Rank/Raid_RankIcon_01.png')
              break
            case 1:
              this.image = $rawfile('Rank/Raid_RankIcon_02.png')
              break
            case 2:
              this.image = $rawfile('Rank/Raid_RankIcon_03.png')
              break
            case 3:
              this.image = $rawfile('Rank/Raid_RankIcon_04.png')
              break
          }
        })
        .backgroundColor('#6dffffff')
      Text(this.username)
        .margin({ left:20 })
        .fontColor('#fff')
        .fontSize(36)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
    }.height('20%')
  }
}
  @Builder CDicon(){
    List({scroller:this.scroller}){
      ForEach(DataPrefab.getCDItem(),(item:ItemData)=>{
        ListItem(){
          Image(item.image)
            .width('324.375px')
            .height('330.75px')
        }
      })
    }
    .width('324.375px')
    .height('330.75px')
    .borderRadius(90)
    .tabIndex(0)
    .onScrollStop(()=>{
      this.backAnimator.cancel()
      this.cdchange()
      if(this.flag){
        this.backAnimator.play()
      }
    })
    .onScrollIndex((end)=>{
      this.ListIndex=end
    })
    .margin({left:10,bottom:20})
  }
  @Builder  Audio(){
  Row({space:20}){
    this.CDicon()
    Row(){
      //上一首
      Button({type:ButtonType.Circle}){
        Image($r('app.media.last'))
          .iconStyles()
      }
      .backgroundColor('#00ffffff')
      .onClick(()=>{
        this.backAnimator.cancel()
        if(this.ListIndex!=0)
          this.ListIndex-=1
        else this.ListIndex=4
        this.cdchange()
        this.backAnimator.play()
        this.flag=true
      })
      //播放暂停
      Button({type:ButtonType.Circle}){
        Image($r('app.media.play'))
          .iconStyles()
      }
      .backgroundColor('#00ffffff')
      .onClick(()=>{
        if(!this.flag){
          this.backAnimator.play()
          this.flag=!this.flag
        }else {
          this.backAnimator.pause()
          this.flag=!this.flag
        }

      })
      //下一首
      Button({type:ButtonType.Circle}){
        Image($r('app.media.next'))
          .iconStyles()
      }
      .backgroundColor('#00ffffff')
      .onClick(()=>{
        this.backAnimator.cancel()
        if(this.ListIndex!=4)
          this.ListIndex+=1
        else this.ListIndex=0
        this.cdchange()
        this.backAnimator.play()
        this.flag=true
      })
    }
  }.width('100%')
  .height('330.75px')
}
  @Builder  CD(){
    Image(this.cdimage)
      .width('865px')
      .height('882px')
      .rotate({angle:this.progress})
  }
  @Builder  Volume(){
  Row(){
    Image(this.voiceRank===0? $r('app.media.jingyin'):$r('app.media.voice'))
      .iconStyles()
    Slider({style:SliderStyle.OutSet})
      .selectedColor('#aeacf3f3')
      .trackColor('#00ffffff')
      .blockColor('#baacf3f3')
      .trackThickness(5)
      .onChange((value)=>{
        this.voiceRank=value
      })
  }.margin({top:10})
}
  @Builder  Progress(){
  Progress({value:this.progress,type:ProgressType.Linear,total:this.totalProgress})
    .margin({top:10})
    .color('#baacf3f3')
    .backgroundColor('#00ffffff')

}
  @Builder  StoreBtn(){
  Button('Store')
    .width('100%')
    .onClick(() => {
      if (this.dialogController != undefined) {
        this.dialogController.open()
      }
    })
    .backgroundColor('#8b98fffd')
    .margin({top:10})
}
  //动画创建
  create() {
    let _this=this
    this.backAnimator = animator.create({
      duration: this.totalPlaytime,
      easing: "linear",
      delay: 0,
      fill: "none",
      direction: "normal",
      iterations: 1,
      begin: 0,
      end: this.totalProgress
    })
    this.backAnimator.onframe = function (value) {
      _this.progress=value
    }
    this.backAnimator.onfinish = function () {
      _this.backAnimator.cancel()
      if(_this.ListIndex!=4)
        _this.ListIndex+=1
      else _this.ListIndex=0
      _this.cdchange()
      _this.backAnimator.play()
      _this.flag=true
    }
    this.backAnimator.oncancel=function (){
      _this.progress=0
    }
  }
  //cd切换
  cdchange(){
    this.scroller.scrollToIndex(this.ListIndex)
    switch (this.ListIndex){
      case 0:this.cdimage=$rawfile('CD/RG_Image_TellYourWorld.png')
        break
      case 1:this.cdimage=$rawfile('CD/RG_Image_SummerBounce.png')
        break
      case 2:this.cdimage=$rawfile('CD/RG_Image_Mikumikuni.png')
        break
      case 3:this.cdimage=$rawfile('CD/RG_Image_TenchikaibyakuShinwa.png')
        break
      case 4:this.cdimage=$rawfile('CD/RG_Image_ColorfulBeach.png')
        break}
  }
  //创建实例
  aboutToAppear(){
    this.create()
  }
  //置空
  aboutToDisappear() {
    this.dialogController = undefined // 将dialogController置空
    this.backAnimator=undefined
  }

  build() {
    Column() {
      this.Message()
      Column({space:10}){
       this.Audio()
        this.CD()
        this.Progress()
        this.Volume()
        this.StoreBtn()
      }.height('70%')
    }.width('100%')
    .height('100%')
    .margin({ top: 5 })
  }
}