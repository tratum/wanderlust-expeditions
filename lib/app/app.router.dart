// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i15;
import 'package:stacked/stacked.dart' as _i14;
import 'package:stacked_services/stacked_services.dart' as _i13;

import '../ui/views/destinations/destination_view.dart' as _i3;
import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/places/adventure/adventure_view.dart' as _i6;
import '../ui/views/places/beach/beach_view.dart' as _i5;
import '../ui/views/places/foodie/foodie_view.dart' as _i7;
import '../ui/views/places/honeymoon/honeymoon_view.dart' as _i8;
import '../ui/views/places/international/international_view.dart' as _i9;
import '../ui/views/places/mountains/mountain_view.dart' as _i10;
import '../ui/views/places/pilgrimage/pilgrimage_view.dart' as _i11;
import '../ui/views/places/relax/relax_view.dart' as _i12;
import '../ui/views/places/romantic/romantic_view.dart' as _i16;
import '../ui/views/places/trekking/trekking_view.dart' as _i17;
import '../ui/views/places/weekends/weekend_view.dart' as _i18;
import '../ui/views/startup/startup_view.dart' as _i1;
import '../ui/views/unknown/unknown_view.dart' as _i4;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i13.StackedService.navigatorKey);

class StackedRouterWeb extends _i14.RootStackRouter {
  StackedRouterWeb({_i15.GlobalKey<_i15.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DestinationViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.DestinationView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    BeachViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.BeachView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AdventureViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.AdventureView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    FoodieViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.FoodieView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HoneymoonViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.HoneymoonView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    InternationalViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.InternationalView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MountainViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.MountainView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    PilgrimageViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.PilgrimageView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    RelaxViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.RelaxingView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    RomanticViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i16.RomanticView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    TrekkingViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i17.TrekkingView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    WeekendViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i18.WeekendView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          StartupViewRoute.name,
          path: '/',
        ),
        _i14.RouteConfig(
          HomeViewRoute.name,
          path: '/home',
        ),
        _i14.RouteConfig(
          DestinationViewRoute.name,
          path: '/destinations',
        ),
        _i14.RouteConfig(
          BeachViewRoute.name,
          path: '/destinations/beach-destinations',
        ),
        _i14.RouteConfig(
          AdventureViewRoute.name,
          path: '/destinations/adventure-destinations',
        ),
        _i14.RouteConfig(
          FoodieViewRoute.name,
          path: '/destinations/foodie-destinations',
        ),
        _i14.RouteConfig(
          HoneymoonViewRoute.name,
          path: '/destinations/honeymoon-destinations',
        ),
        _i14.RouteConfig(
          InternationalViewRoute.name,
          path: '/destinations/international-destinations',
        ),
        _i14.RouteConfig(
          MountainViewRoute.name,
          path: '/destinations/hill-destinations',
        ),
        _i14.RouteConfig(
          PilgrimageViewRoute.name,
          path: '/destinations/pilgrimage-destinations',
        ),
        _i14.RouteConfig(
          RelaxViewRoute.name,
          path: '/destinations/relaxing-destinations',
        ),
        _i14.RouteConfig(
          RomanticViewRoute.name,
          path: '/destinations/romantic-destinations',
        ),
        _i14.RouteConfig(
          TrekkingViewRoute.name,
          path: '/destinations/trekking-destinations',
        ),
        _i14.RouteConfig(
          WeekendViewRoute.name,
          path: '/destinations/weekend-destinations',
        ),
        _i14.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i14.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i14.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i14.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/home',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.DestinationView]
class DestinationViewRoute extends _i14.PageRouteInfo<void> {
  const DestinationViewRoute()
      : super(
          DestinationViewRoute.name,
          path: '/destinations',
        );

  static const String name = 'DestinationsView';
}

/// generated route for
/// [_i5.BeachView]
class BeachViewRoute extends _i14.PageRouteInfo<void> {
  const BeachViewRoute()
      : super(
          BeachViewRoute.name,
          path: '/destinations/beach-destinations',
        );

  static const String name = 'BeachView';
}

/// generated route for
/// [_i6.AdventureView]
class AdventureViewRoute extends _i14.PageRouteInfo<void> {
  const AdventureViewRoute()
      : super(
          AdventureViewRoute.name,
          path: '/destinations/adventure-destinations',
        );

  static const String name = 'AdventureView';
}

/// generated route for
/// [_i7.FoodieView]
class FoodieViewRoute extends _i14.PageRouteInfo<void> {
  const FoodieViewRoute()
      : super(
          FoodieViewRoute.name,
          path: '/destinations/foodie-destinations',
        );

  static const String name = 'FoodieView';
}

/// generated route for
/// [_i8.HoneymoonView]
class HoneymoonViewRoute extends _i14.PageRouteInfo<void> {
  const HoneymoonViewRoute()
      : super(
          HoneymoonViewRoute.name,
          path: '/destinations/honeymoon-destinations',
        );

  static const String name = 'HoneymoonView';
}

/// generated route for
/// [_i9.InternationalView]
class InternationalViewRoute extends _i14.PageRouteInfo<void> {
  const InternationalViewRoute()
      : super(
          InternationalViewRoute.name,
          path: '/destinations/international-destinations',
        );

  static const String name = 'InternationalView';
}

/// generated route for
/// [_i10.MountainView]
class MountainViewRoute extends _i14.PageRouteInfo<void> {
  const MountainViewRoute()
      : super(
          MountainViewRoute.name,
          path: '/destinations/hill-destinations',
        );

  static const String name = 'MountainView';
}

/// generated route for
/// [_i11.PilgrimageView]
class PilgrimageViewRoute extends _i14.PageRouteInfo<void> {
  const PilgrimageViewRoute()
      : super(
          PilgrimageViewRoute.name,
          path: '/destinations/pilgrimage-destinations',
        );

  static const String name = 'PilgrimageView';
}

/// generated route for
/// [_i12.RelaxingView]
class RelaxViewRoute extends _i14.PageRouteInfo<void> {
  const RelaxViewRoute()
      : super(
          RelaxViewRoute.name,
          path: '/destinations/relaxing-destinations',
        );

  static const String name = 'RelaxView';
}

/// generated route for
/// [_i16.RomanticView]
class RomanticViewRoute extends _i14.PageRouteInfo<void> {
  const RomanticViewRoute()
      : super(
          RomanticViewRoute.name,
          path: '/destinations/romantic-destinations',
        );

  static const String name = 'RomanticView';
}

/// generated route for
/// [_i17.TrekkingView]
class TrekkingViewRoute extends _i14.PageRouteInfo<void> {
  const TrekkingViewRoute()
      : super(
          TrekkingViewRoute.name,
          path: '/destinations/trekking-destinations',
        );

  static const String name = 'TrekkingView';
}

/// generated route for
/// [_i18.WeekendView]
class WeekendViewRoute extends _i14.PageRouteInfo<void> {
  const WeekendViewRoute()
      : super(
          WeekendViewRoute.name,
          path: '/destinations/weekend-destinations',
        );

  static const String name = 'WeekendView';
}

/// generated route for
/// [_i4.UnknownView]
class UnknownViewRoute extends _i14.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

extension RouterStateExtension on _i13.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToDestinationView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const DestinationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToBeachView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const BeachViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAdventureView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AdventureViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToFoodieViewRoute(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const FoodieViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHoneymoonView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HoneymoonViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToInternationalView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const InternationalViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMountainView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MountainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToPilgrimageView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const PilgrimageViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToRelaxView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const RelaxViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToRomanticView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const RomanticViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToTrekkingView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const TrekkingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToWeekendView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const WeekendViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithDestinationView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const DestinationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithBeachView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const BeachViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAdventureView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AdventureViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i14.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }
}
