import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/adventure/adventure_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/adventure/adventure_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/adventure/adventure_view.tablet.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';

class AdventureView extends StackedView<PlaceViewModel> {
  const AdventureView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const AdventureViewMobile(),
      tablet: (_) => const AdventureViewTablet(),
      desktop: (_) => const AdventureViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
