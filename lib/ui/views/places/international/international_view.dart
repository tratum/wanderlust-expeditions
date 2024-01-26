import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/international/international_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/international/international_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/international/international_view.tablet.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';

class InternationalView extends StackedView<PlaceViewModel> {
  const InternationalView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const InternationalViewMobile(),
      tablet: (_) => const InternationalViewTablet(),
      desktop: (_) => const InternationalViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
