import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/destinations/destination_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/destinations/destination_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/destinations/destination_view.tablet.dart';
import 'package:wanderlust_expeditions/ui/views/destinations/destination_view_model.dart';

class DestinationView extends StackedView<DestinationViewModel> {
  const DestinationView({super.key});

  @override
  Widget builder(
    BuildContext context,
    DestinationViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const DestinationViewMobile(),
      tablet: (_) => const DestinationViewTablet(),
      desktop: (_) => const DestinationViewDesktop(),
    );
  }

  @override
  DestinationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DestinationViewModel();
}
