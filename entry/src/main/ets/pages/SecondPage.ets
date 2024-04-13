import CommonConstants from '../common/constants/CommonConstants'
import router from '@ohos.router';
import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@Component
struct SecondPage {
  @State message: string = CommonConstants.SECOND_MESSAGE;
  @State src: string = (router.getParams() as Record<string, string>)[CommonConstants.SECOND_SRC_PARAM];
  static readonly TAG = CommonConstants.TAG_NAME + ' SecondPage';

  aboutToAppear(): void {
    hilog.info(0x0000, SecondPage.TAG, '%{public}s', 'aboutToAppear');
  }

  onPageShow(): void {
    hilog.info(0x0000, SecondPage.TAG, '%{public}s', 'onPageShow');
  }

  onBackPress(): boolean | void {
    hilog.info(0x0000, SecondPage.TAG, '%{public}s', 'onBackPress');
  }

  onPageHide(): void {
    hilog.info(0x0000, SecondPage.TAG, '%{public}s', 'onPageHide');
  }

  aboutToDisappear(): void {
    hilog.info(0x0000, SecondPage.TAG, '%{public}s', 'aboutToDisappear');
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize('38fp')
          .opacity(0.6)
        Blank()
        Button($r('app.string.back'))
          .fontSize('38fp')
          .width('296vp')
          .height('40vp')
          .backgroundColor($r('app.color.page_bg'))
          .onClick(() => {
            router.back();
          })
      }
      .width('100%')
      .height('100%')
    }
    .height('100%')
    .backgroundColor($r('app.color.page_bg'))
  }
}