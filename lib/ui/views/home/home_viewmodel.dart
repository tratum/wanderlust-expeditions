import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wanderlust_expeditions/app/app.dialogs.dart';
import 'package:wanderlust_expeditions/app/app.locator.dart';

class HomeViewModel extends BaseViewModel {
  final routerService = locator<RouterService>();
  final dialogService = locator<DialogService>();
  final bottomSheetService = locator<BottomSheetService>();

  //
  // String get counterLabel => 'Counter is: $_counter';
  //
  // int _counter = 0;
  //
  // void incrementCounter() {
  //   _counter++;
  //   rebuildUi();
  // }

  // void showDialog() {
  //   _dialogService.showCustomDialog(
  //     variant: DialogType.infoAlert,
  //     title: 'Stacked Rocks!',
  //     description: 'Give stacked $_counter stars on Github',
  //   );
  // }

  void showAuthDialog() {
    dialogService.showCustomDialog(
      variant: DialogType.authDialog,
    );
  }

  void showMobileAuthDialog() {
    dialogService.showCustomDialog(
      variant: DialogType.authDialogMobile,
    );
  }
//
// void showBottomSheet() {
//   _bottomSheetService.showCustomSheet(
//     variant: BottomSheetType.notice,
//     title: ksHomeBottomSheetTitle,
//     description: ksHomeBottomSheetDescription,
//   );
// }
}
