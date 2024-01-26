import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/mountains/mountain_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/mountains/mountain_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/mountains/mountain_view.tablet.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';

class MountainView extends StackedView<PlaceViewModel> {
  const MountainView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const MountainViewMobile(),
      tablet: (_) => const MountainViewTablet(),
      desktop: (_) => const MountainViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
