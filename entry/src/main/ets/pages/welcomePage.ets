// @ts-nocheck
import router from '@ohos.router'
class Item {
  name:string
  image:ResourceStr
  price:number

constructor(name:string,image:ResourceStr, price:number){
  this.name = name
  this.image = image
  this.price = price
}
}
@Entry
@Component
struct WelcomePage {
  @State message: string = 'Hello World'

  aboutToAppear() {
    setTimeout(function () {
      router.replaceUrl({
        url: 'pages/LoginPage'

      })
    }, 9000)
  }

  build() {
    Column() {
      Column() {
        Swiper() {
          Stack({ alignContent:Alignment.Top }) {
            Image($r('app.media.bk6'))
              .width("100%")
              .height("100%")
            Text("音乐APP")
              .fontSize("30fp")
              .fontColor("#fcfcfc")
              .padding(50)
            Text("更懂音乐")
              .fontSize("20fp")
              .fontColor("#fcfcfc")
              .padding(100)
          }

          Stack({ alignContent:Alignment.Top }) {
            Image($r('app.media.bk7'))
              .width("100%")
              .height("100%")
            Text("音乐APP")
              .fontSize("30fp")
              .fontColor("#fcfcfc")
              .padding(50)
            Text("热爱音乐")
              .fontSize("20fp")
              .fontColor("#fcfcfc")
              .padding(110)
          }

          Stack({ alignContent:Alignment.Top }) {
            Image($r('app.media.bk8'))
              .width("100%")
              .height("100%")
            Text("音乐APP")
              .fontSize("30fp")
              .fontColor("#fcfcfc")
              .padding(50)
            Text("倾听音乐")
              .fontSize("20fp")
              .fontColor("#fcfcfc")
              .padding(110)
          }

          }
          .width("100%")
          .height("100%")
          .autoPlay(true)
          .vertical(false)
        }
        .width("100%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
      }
      .width("100%")
      .height("100%")
    }

}