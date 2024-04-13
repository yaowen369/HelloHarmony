import { router } from '@kit.ArkUI';
import CommonConstants from '../common/constants/CommonConstants';
import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello 123yaowen';
  static readonly TAG = CommonConstants.TAG_NAME + ' index';

  aboutToAppear(): void {
    hilog.info(0x0000, Index.TAG, '%{public}s', 'aboutToAppear');
  }

  onPageShow(): void {
    hilog.info(0x0000, Index.TAG, '%{public}s', 'onPageShow');
  }

  onBackPress(): boolean | void {
    hilog.info(0x0000, Index.TAG, '%{public}s', 'onBackPress');
  }

  onPageHide(): void {
    hilog.info(0x0000, Index.TAG, '%{public}s', 'onPageHide');
  }

  aboutToDisappear(): void {
    hilog.info(0x0000, Index.TAG, '%{public}s', 'aboutToDisappear');
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('跳转')
          .fontSize('38fp')
          .width('296vp')
          .height('40vp')
          .onClick(() => {
            router.pushUrl({
              url: CommonConstants.SECOND_URL, params: {
                src: CommonConstants.SECOND_SRC_MSG
              }
            }).catch((error: Error) => {
            });
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}