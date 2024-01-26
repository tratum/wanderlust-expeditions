import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';
import 'package:wanderlust_expeditions/ui/views/places/trekking/trekking_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/trekking/trekking_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/trekking/trekking_view.tablet.dart';

class TrekkingView extends StackedView<PlaceViewModel> {
  const TrekkingView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const TrekkingViewMobile(),
      tablet: (_) => const TrekkingViewTablet(),
      desktop: (_) => const TrekkingViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
