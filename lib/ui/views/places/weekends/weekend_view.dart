import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';
import 'package:wanderlust_expeditions/ui/views/places/weekends/weekend_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/weekends/weekend_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/weekends/weekend_view.tablet.dart';

class WeekendView extends StackedView<PlaceViewModel> {
  const WeekendView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const WeekendViewMobile(),
      tablet: (_) => const WeekendViewTablet(),
      desktop: (_) => const WeekendViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
