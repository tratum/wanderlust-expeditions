import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalSpaceLarge,
                Column(
                  children: [
                    Text(
                      'Hello, TABLET UI!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    verticalSpaceMedium,
                    // MaterialButton(
                    //   color: Colors.black,
                    //   onPressed: viewModel.incrementCounter,
                    //   child: Text(
                    //     viewModel.counterLabel,
                    //     style: const TextStyle(color: Colors.white),
                    //   ),
                    // ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     MaterialButton(
                //       color: kcDarkGreyColor,
                //       onPressed: viewModel.showDialog,
                //       child: const Text(
                //         'Show Dialog',
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     MaterialButton(
                //       color: kcDarkGreyColor,
                //       onPressed: viewModel.showBottomSheet,
                //       child: const Text(
                //         'Show Bottom Sheet',
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
