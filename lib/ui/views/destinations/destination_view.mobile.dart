import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/destinations/destination_view_model.dart';

class DestinationViewMobile extends ViewModelWidget<DestinationViewModel> {
  const DestinationViewMobile({super.key});

  @override
  Widget build(BuildContext context, DestinationViewModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
