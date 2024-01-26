import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/honeymoon/honeymoon_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/honeymoon/honeymoon_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/honeymoon/honeymoon_view.tablet.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';

class HoneymoonView extends StackedView<PlaceViewModel> {
  const HoneymoonView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const HoneyMoonViewMobile(),
      tablet: (_) => const HoneyMoonViewTablet(),
      desktop: (_) => const HoneyMoonViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
