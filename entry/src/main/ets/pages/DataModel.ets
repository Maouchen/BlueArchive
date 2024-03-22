import ItemData from './ItemData'

export class DataPrefab{
  getSwiperImage():Array<Resource> {
    let swiperImages: Resource[] = [
      $rawfile('loop/1.jpeg'),
      $rawfile('loop/2.jpeg'),
      $rawfile('loop/3.jpeg'),
      $rawfile('loop/4.jpeg'),
      $rawfile('loop/5.jpeg'),
      $rawfile('loop/6.jpeg'),
      $rawfile('loop/7.jpeg'),
      $rawfile('loop/8.jpeg'),
    ]
    return swiperImages
  }
  getFirstGridData():Array<ItemData> {
    let firstGridData: ItemData[] = [
      new ItemData('ABYDOS',$rawfile('icon/School_Icon_ABYDOS.png')),
      new ItemData('Arius',$rawfile('icon/School_Icon_Arius.png')),
      new ItemData('ETC',$rawfile('icon/School_Icon_ETC.png')),
      new ItemData('GEHENNA',$rawfile('icon/School_Icon_GEHENNA.png')),
      new ItemData('HYAKKIYAKO',$rawfile('icon/School_Icon_HYAKKIYAKO.png')),
      new ItemData('MILLENNIUM',$rawfile('icon/School_Icon_MILLENNIUM.png')),
      new ItemData('REDWINTER',$rawfile('icon/School_Icon_REDWINTER.png')),
      new ItemData('SHANHAIJING',$rawfile('icon/School_Icon_SHANHAIJING.png')),
      new ItemData('SRT',$rawfile('icon/School_Icon_SRT.png')),
      new ItemData('TRINITY',$rawfile('icon/School_Icon_TRINITY.png')),
      new ItemData('VALKYRIE',$rawfile('icon/School_Icon_VALKYRIE.png')),
      new ItemData('联邦学生会',$rawfile('icon/GSC B@4x.png')),
    ]
    return firstGridData
    }
  getSecondGridData():Array<ItemData> {
    let secondGridData: ItemData[] = [
      new ItemData('SRT',$rawfile('area/BG_SRT_Collection.png')),
      new ItemData('ARIUS',$rawfile('area/BG_Arius_Collection.png')),
      new ItemData('ABYDOS',$rawfile('area/BG_Abydos_Collection.png')),
      new ItemData('SAYA',$rawfile('area/BG_Saya_casual_Collection.png')),
      new ItemData('BunnyGirl',$rawfile('area/BG_BunnyGirl_Collection.png')),
      new ItemData('CH0066',$rawfile('area/BG_CH0066_Collection.png')),
      new ItemData('MILLENNIUM',$rawfile('area/BG_Millennium_Collection.png')),
      new ItemData('CHEERLEADING',$rawfile('area/BG_Cheerleading_Collection.png')),
      new ItemData('GEHENNA',$rawfile('area/BG_Gehenna_Collection.png')),
      new ItemData('CH9999',$rawfile('area/BG_CH9999_Collection.png')),
      new ItemData('REDWINTER',$rawfile('area/BG_Redwinter_Collection.png')),
      new ItemData('ONSEN',$rawfile('area/BG_Onsen_Collection.png')),
      new ItemData('NEWYEAR',$rawfile('area/BG_Newyear_Collection.png')),
      new ItemData('RIDINGSUIT',$rawfile('area/BG_Ridingsuit_Collection.png')),
      new ItemData('SHANHAIJING',$rawfile('area/BG_Sanhaijing_Collection.png')),
      new ItemData('HYAKKIYAKO',$rawfile('area/BG_Hyakkiyako_Collection.png')),
      new ItemData('TRINITY',$rawfile('area/BG_Trinity_Collection.png')),
      new ItemData('VALKYRIE',$rawfile('area/BG_Valkyrie_Collection.png')),
      new ItemData('SWIMSUIT',$rawfile('area/BG_Swimsuit_Collection.png')),
      new ItemData('SWIMSUIT2',$rawfile('area/BG_Swimsuit02_Collection.png')),
    ]
    return secondGridData
    }
  getListItem():Array<ItemData>{
    let listItems:ItemData[]=[
      new ItemData('Shiroko',$rawfile('student/Student_Portrait_Shiroko_ridingsuit.png'),$rawfile('live2D/Shiroko_Riding_Live2D.gif')),
      new ItemData('Hoshino',$rawfile('student/Student_Portrait_Hoshino_swimsuit.png',),$rawfile('live2D/Hoshino_Swimsuit_Live2D.gif')),
      new ItemData('Nonomi',$rawfile('student/Student_Portrait_CH0092.png',),$rawfile('live2D/Nonomi_Swimsuit_Live2D.gif')),
      new ItemData('Ayane',$rawfile('student/Ayane_Swimsuit_Icon.png',),$rawfile('live2D/Ayane_Swimsuit_Live2D.gif')),
      new ItemData('Serika',$rawfile('student/Student_Portrait_Serika.png',),$rawfile('live2D/Serika_Live2D.gif')),
      new ItemData('Makoto',$rawfile('student/Student_Portrait_CH0079.png',),$rawfile('live2D/Makoto_Live2D.gif')),
      new ItemData('Ibuki',$rawfile('student/Student_Portrait_Ibuki.png',),$rawfile('live2D/Ibuki_Live2D.gif')),
      new ItemData('Iroha',$rawfile('student/Student_Portrait_CH0156.png',),$rawfile('live2D/Iroha_Live2D.gif')),
      new ItemData('Hina',$rawfile('student/Hina_Dress_Icon.png',),$rawfile('live2D/Hina_Dress_Live2D.gif')),
      new ItemData('Ako',$rawfile('student/Ako_Dress_Icon.png',),$rawfile('live2D/Ako_Dress_Live2D.gif')),
      new ItemData('Iori',$rawfile('student/Student_Portrait_CH0064.png',),$rawfile('live2D/Iori_Swimsuit_Live2D.gif')),
      new ItemData('Chinatsu',$rawfile('student/Chinatsu_Icon.png',),$rawfile('live2D/Chinatsu_Live2D.gif')),
      new ItemData('Aru',$rawfile('student/Student_Portrait_Aru_Newyear.png',),$rawfile('live2D/Aru_New_Year_Live2D.gif')),
      new ItemData('Mutsuki',$rawfile('student/Student_Portrait_Mutsuki_Newyear.png',),$rawfile('live2D/Mutsuki_New_Year_Live2D.gif')),
      new ItemData('Kayoko',$rawfile('student/Student_Portrait_CH0086.png',),$rawfile('live2D/Kayoko_New_Year_Live2D.gif')),
      new ItemData('Haruka',$rawfile('student/Student_Portrait_CH0087.png',),$rawfile('live2D/Haruka_New_Year_Live2D.gif')),
      new ItemData('Yuuka',$rawfile('student/Student_Portrait_CH0184.png',),$rawfile('live2D/Yuuka_Gym_Live2D.gif')),
      new ItemData('Alice',$rawfile('student/Student_Portrait_Aris.png',),$rawfile('live2D/Alice_Live2D.gif')),
      new ItemData('Izuna',$rawfile('student/Student_Portrait_CH0179.png',),$rawfile('live2D/Izuna_Swimsuit_Live2D.gif')),
      new ItemData('Mika',$rawfile('student/Student_Portrait_CH0069.png',),$rawfile('live2D/Mika_Live2D.gif')),
      new ItemData('Miku',$rawfile('student/Student_Portrait_CH9999.png',),$rawfile('live2D/Miku_Live2D.gif')),
    ]
    return listItems
  }
  getStoreItem():Array<ItemData>{
    let storeItems:ItemData[]=[
      new ItemData('每周体力礼包',$rawfile('store/Goods_Icon_Biweekly_0.png')),
      new ItemData('新人补给包',$rawfile('store/Goods_Icon_Package_Newbie_0.png')),
      new ItemData('120青辉石',$rawfile('store/Goods_Icon_Gem_120.png')),
      new ItemData('490青辉石',$rawfile('store/Goods_Icon_Gem_490.png')),
      new ItemData('980青辉石',$rawfile('store/Goods_Icon_Gem_980.png')),
      new ItemData('1480青辉石',$rawfile('store/Goods_Icon_Gem_1480.png')),
      new ItemData('2940青辉石',$rawfile('store/Goods_Icon_Gem_2940.png')),
      new ItemData('4900青辉石',$rawfile('store/Goods_Icon_Gem_4900.png')),
      new ItemData('10000青辉石',$rawfile('store/Goods_Icon_Gem_10000.png')),
      new ItemData('每周礼包小',$rawfile('store/Goods_Icon_Monthly_1.png')),
      new ItemData('每周礼包大',$rawfile('store/Goods_Icon_Monthly_0.png')),
      new ItemData('三星自选礼包',$rawfile('store/Goods_Icon_Package_3Star_0.png')),
      new ItemData('武器升级补给包',$rawfile('store/Goods_Icon_Package_CharacterWeapon_0.png')),
      new ItemData('制造材料补给包A',$rawfile('store/Goods_Icon_Package_Craft_0.png')),
      new ItemData('制造材料补给包B',$rawfile('store/Goods_Icon_Package_Craft_1.png')),
      new ItemData('制造材料补给包C',$rawfile('store/Goods_Icon_Package_Craft_2.png')),
      new ItemData('装备补给包A',$rawfile('store/Goods_Icon_Package_Equipment_0.png')),
      new ItemData('装备补给包B',$rawfile('store/Goods_Icon_Package_Equipment_1.png')),
      new ItemData('装备补给包C',$rawfile('store/Goods_Icon_Package_Equipment_2.png')),
      new ItemData('装备补给包D',$rawfile('store/Goods_Icon_Package_Equipment_3.png')),
      new ItemData('经验补给包',$rawfile('store/Goods_Icon_Package_Exp_0.png')),
      new ItemData('礼物自选包',$rawfile('store/Goods_Icon_Package_Favor_0.png')),
      new ItemData('技能补给包A',$rawfile('store/Goods_Icon_Package_Growth_Gehenna_0.png')),
      new ItemData('技能补给包B',$rawfile('store/Goods_Icon_Package_Growth_Gehenna_1.png')),
      new ItemData('技能补给包C',$rawfile('store/Goods_Icon_Package_Growth_Millennium_0.png')),
      new ItemData('技能补给包D',$rawfile('store/Goods_Icon_Package_Growth_Millennium_1.png')),
      new ItemData('技能补给包E',$rawfile('store/Goods_Icon_Package_Growth_Trinity_0.png')),
      new ItemData('成长补给包B',$rawfile('store/Goods_Icon_Package_Growth_Trinity_1.png')),
      new ItemData('物资补给包A',$rawfile('store/Goods_Icon_Package_Halfanniversary_0.png')),
      new ItemData('物资补给包B',$rawfile('store/Goods_Icon_Package_Halfanniversary_1.png')),
      new ItemData('物资补给包C',$rawfile('store/Goods_Icon_Package_Halfanniversary_2.png')),
      new ItemData('成长补给包A',$rawfile('store/Goods_Icon_Package_Growth_0.png')),

      ]
    return storeItems
  }
  getCDItem():Array<ItemData>{
    let cdAr:ItemData[]=[
      new ItemData('1',$rawfile('CD/RG_Image_TellYourWorld.png')),
      new ItemData('1',$rawfile('CD/RG_Image_SummerBounce.png')),
      new ItemData('1',$rawfile('CD/RG_Image_Mikumikuni.png')),
      new ItemData('1',$rawfile('CD/RG_Image_TenchikaibyakuShinwa.png')),
      new ItemData('1',$rawfile('CD/RG_Image_ColorfulBeach.png')),
    ]
    return cdAr
  }
}
export default new DataPrefab()
