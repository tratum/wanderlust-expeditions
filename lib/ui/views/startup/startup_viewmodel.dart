import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wanderlust_expeditions/app/app.locator.dart';
import 'package:wanderlust_expeditions/app/app.router.dart';

class StartupViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    await _routerService.replaceWith(const HomeViewRoute());
  }
}
