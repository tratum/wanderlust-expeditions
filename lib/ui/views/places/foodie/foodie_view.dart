import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/places/foodie/foodie_view.desktop.dart';
import 'package:wanderlust_expeditions/ui/views/places/foodie/foodie_view.mobile.dart';
import 'package:wanderlust_expeditions/ui/views/places/foodie/foodie_view.tablet.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';

class FoodieView extends StackedView<PlaceViewModel> {
  const FoodieView({super.key});

  @override
  Widget builder(
    BuildContext context,
    PlaceViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const FoodieViewMobile(),
      tablet: (_) => const FoodieViewTablet(),
      desktop: (_) => const FoodieViewDesktop(),
    );
  }

  @override
  PlaceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlaceViewModel();
}
