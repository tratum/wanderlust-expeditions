import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wanderlust_expeditions/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:wanderlust_expeditions/ui/dialogs/auth_dialog/auth_dialog.dart';
import 'package:wanderlust_expeditions/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:wanderlust_expeditions/ui/views/destinations/destination_view.dart';
import 'package:wanderlust_expeditions/ui/views/home/home_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/adventure/adventure_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/beach/beach_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/foodie/foodie_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/honeymoon/honeymoon_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/international/international_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/mountains/mountain_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/pilgrimage/pilgrimage_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/relax/relax_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/romantic/romantic_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/trekking/trekking_view.dart';
import 'package:wanderlust_expeditions/ui/views/places/weekends/weekend_view.dart';
import 'package:wanderlust_expeditions/ui/views/startup/startup_view.dart';
import 'package:wanderlust_expeditions/ui/views/unknown/unknown_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(page: HomeView),
    CustomRoute(page: DestinationView),
    CustomRoute(page: BeachView),
    CustomRoute(page: AdventureView),
    CustomRoute(page: FoodieView),
    CustomRoute(page: HoneymoonView),
    CustomRoute(page: InternationalView),
    CustomRoute(page: MountainView),
    CustomRoute(page: PilgrimageView),
    CustomRoute(page: RelaxingView),
    CustomRoute(page: RomanticView),
    CustomRoute(page: TrekkingView),
    CustomRoute(page: WeekendView),
    // @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: AuthDialog),
    // @stacked-dialog
  ],
)
class App {}
