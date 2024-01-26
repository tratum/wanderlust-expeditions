import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/pilgrimage/pilgrimage_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/pilgrimage/pilgrimage_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/pilgrimage/pilgrimage_view.tablet.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';

class PilgrimageView extends StackedView<PlaceViewModel> {
  const PilgrimageView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const PilgrimageViewMobile(),
      tablet: (_) => const PilgrimageViewTablet(),
      desktop: (_) => const PilgrimageViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
