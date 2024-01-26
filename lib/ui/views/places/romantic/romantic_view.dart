import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';
import 'package:wanderlust_expeditions/ui/views/places/romantic/romantic_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/romantic/romantic_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/romantic/romantic_view.tablet.dart';

class RomanticView extends StackedView<PlaceViewModel> {
  const RomanticView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const RomanticViewMobile(),
      tablet: (_) => const RomanticViewTablet(),
      desktop: (_) => const RomanticViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
