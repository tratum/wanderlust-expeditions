import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/beach/beach_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/beach/beach_view.tablet.dart';

import '../places_view_model.dart';
import 'beach_view.desktop.dart';

class BeachView extends StackedView<PlaceViewModel> {
  const BeachView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const BeachViewMobile(),
      tablet: (_) => const BeachViewTablet(),
      desktop: (_) => const BeachViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
