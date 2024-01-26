import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';
import 'package:wanderlust_expeditions/ui/views/places/relax/relax_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/relax/relax_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/relax/relax_view.tablet.dart';

class RelaxingView extends StackedView<PlaceViewModel> {
  const RelaxingView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const RelaxingViewMobile(),
      tablet: (_) => const RelaxingViewTablet(),
      desktop: (_) => const RelaxingViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
