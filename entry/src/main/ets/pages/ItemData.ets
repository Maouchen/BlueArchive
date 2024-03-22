export default class ItemData{

  name:string
  image:Resource
  others?:Resource

  constructor(name:string, image:Resource, others?:Resource) {
    this.name=name
    this.image=image
    this.others=others
  }
}