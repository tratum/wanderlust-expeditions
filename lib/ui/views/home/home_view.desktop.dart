import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/app/app.router.dart';
import 'package:wanderlust_expeditions/ui/common/ui_helpers.dart';
import 'package:wanderlust_expeditions/ui/widgets/mouse_transforms/scale_on_hover.dart';

import '../../common/app_functions.dart';
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: const Color(0XFFfcf8ef),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScaleOnHover(
                          scale: 12,
                          child: GestureDetector(
                            onTap: () {
                              UrlLauncher.launchUrlFunction(
                                  'https://www.facebook.com/');
                            },
                            child: const Icon(
                              Icons.facebook_rounded,
                              color: Color(0XFF103850),
                              size: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        ScaleOnHover(
                          scale: 12,
                          child: GestureDetector(
                            onTap: () {
                              UrlLauncher.launchUrlFunction(
                                  'https://twitter.com/');
                            },
                            child: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Color(0XFF103850),
                              size: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        ScaleOnHover(
                          scale: 12,
                          child: GestureDetector(
                              onTap: () {
                                UrlLauncher.launchUrlFunction(
                                    'https://www.instagram.com/');
                              },
                              child: Image.asset(
                                'assets/images/instaIcon.png',
                                width: 28,
                                height: 30,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 160,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/heroImg-bgremoved_deblurred_upscaled.png',
                            width: screenWidth(context) / 2.325,
                            // height: screenHeight(context)/2,
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            isAntiAlias: false,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Column(
                          children: [
                            Text(
                              'Never Stop Exploring The World',
                              style: TextStyle(
                                fontFamily: 'Afacad',
                                fontWeight: FontWeight.w900,
                                fontSize: 28,
                                color: Color(0XFF103850),
                              ),
                            ),
                            verticalSpaceTiny,
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                '''
                               Discover with Wanderlust Expeditions: Never Stop Exploring the World. We guide
                               your quest for new horizons in a vast tapestry of wonders. Start your journey today.                        
                            ''',
                                style: TextStyle(
                                  fontFamily: 'Afacad',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0XFF103850),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: const Color(0XFFfcf8ef),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/gif/Wanderlust-unscreen.gif',
                      fit: BoxFit.cover,
                      height: 120,
                      width: 220,
                    ),
                    const Spacer(),
                    ScaleOnHover(
                      scale: 12,
                      child: TextButton(
                        onPressed: () {
                          viewModel.routerService.navigateToDestinationView();
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: const Color(0XFFfcf8ef),
                          foregroundColor: const Color(0XFFDAAB3E),
                          fixedSize: const Size(120, 35),
                        ),
                        child: const Text(
                          'Destinations',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Color(0XFF103850),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaceSemiMedium,
                    ScaleOnHover(
                      scale: 12,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: const Color(0XFFfcf8ef),
                          foregroundColor: const Color(0XFFDAAB3E),
                          fixedSize: const Size(70, 35),
                        ),
                        child: const Text(
                          'News',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Color(0XFF103850),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaceSemiMedium,
                    ScaleOnHover(
                      scale: 12,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: const Color(0XFFfcf8ef),
                          foregroundColor: const Color(0XFFDAAB3E),
                          fixedSize: const Size(70, 35),
                        ),
                        child: const Text(
                          'Blog',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Color(0XFF103850),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaceSemiMedium,
                    ScaleOnHover(
                      scale: 12,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: const Color(0XFFfcf8ef),
                          foregroundColor: const Color(0XFFDAAB3E),
                          fixedSize: const Size(70, 35),
                        ),
                        child: const Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Color(0XFF103850),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaceSemiMedium,
                    ScaleOnHover(
                      scale: 12,
                      child: ElevatedButton(
                        onPressed: () {
                          viewModel.showAuthDialog();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF103850),
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fixedSize: const Size(80, 35),
                        ),
                        child: const Text(
                          'Sign-in',
                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
