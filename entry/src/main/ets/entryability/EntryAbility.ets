import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import CommonConstants from '../common/constants/CommonConstants';

export default class EntryAbility extends UIAbility {

  static readonly TAG: string = CommonConstants.TAG_NAME + ' entry';

  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, EntryAbility.TAG, '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(0x0000, EntryAbility.TAG, '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, EntryAbility.TAG, '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, EntryAbility.TAG, 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, EntryAbility.TAG, 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, EntryAbility.TAG, '%{public}s', 'Ability onWindowStageDestroy');
  }


  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, EntryAbility.TAG, '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, EntryAbility.TAG, '%{public}s', 'Ability onBackground');
  }
}
