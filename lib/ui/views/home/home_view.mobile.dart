import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/app/app.router.dart';
import 'package:wanderlust_expeditions/ui/common/ui_helpers.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';
import '../../common/app_functions.dart';
import '../../widgets/mouse_transforms/scale_on_hover.dart';
import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: const Color(0XFFfcf8ef),
      appBar: AppBar(
        backgroundColor: const Color(0XFFfcf8ef),
        shadowColor: const Color(0XFFfcf8ef),
        toolbarHeight: 80,
        title: Image.asset(
          'assets/gif/Wanderlust-unscreen.gif',
          fit: BoxFit.cover,
          height: 85,
          width: 160,
        ),
        iconTheme: const IconThemeData(
          color: Color(0XFF000000),
        ),
        flexibleSpace: Row(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: ScaleOnHover(
                scale: 12,
                child: ElevatedButton(
                  onPressed: () {
                    viewModel.showMobileAuthDialog();
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
            ),
            const SizedBox(
              width: 60,
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        width: 190,
        backgroundColor: const Color(0XFFfcf8ef),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Align(
            alignment: Alignment.center,
            child: ListView(
              children: [
                verticalSpaceLarge,
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
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Color(0XFF103850),
                      ),
                    ),
                  ),
                ),
                verticalSpaceSemiMedium,
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
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Color(0XFF103850),
                      ),
                    ),
                  ),
                ),
                verticalSpaceSemiMedium,
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
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Color(0XFF103850),
                      ),
                    ),
                  ),
                ),
                verticalSpaceSemiMedium,
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
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Color(0XFF103850),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25.0),
          child: Column(
            children: [
              ResponsiveWebLayout.buildMobileLayout(
                  context: context,
                  largeMobileLayout: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            verticalSpaceLarge,
                            Center(
                              child: Image.asset(
                                'assets/images/heroImg-bgremoved_deblurred_upscaled.png',
                                width: screenWidth(context),
                                height: screenHeight(context)/2.67,
                                alignment: Alignment.center,
                                fit: BoxFit.fill,
                                isAntiAlias: false,
                              ),
                            ),
                            verticalSpaceMedium,
                            const Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Never Stop Exploring The World',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'Afacad',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24,
                                      color: Color(0XFF103850),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                verticalSpaceTiny,
                                Text(
                                  "Discover with Wanderlust Expeditions: Never Stop Exploring the World. We guide your quest for new horizons in a vast tapestry of wonders. Start your journey today.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Afacad',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0XFF103850),
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  mediumMobileLayout: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            verticalSpaceLarge,
                            Center(
                              child: Image.asset(
                                'assets/images/heroImg-bgremoved_deblurred_upscaled.png',
                                width: screenWidth(context),
                                height: screenHeight(context)/2.9,
                                alignment: Alignment.center,
                                fit: BoxFit.fill,
                                isAntiAlias: false,
                              ),
                            ),
                            verticalSpaceMedium,
                            const Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Never Stop Exploring The World',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'Afacad',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24,
                                      color: Color(0XFF103850),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                verticalSpaceTiny,
                                Text(
                                  "Discover with Wanderlust Expeditions: Never Stop Exploring the World. We guide your quest for new horizons in a vast tapestry of wonders. Start your journey today.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Afacad',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0XFF103850),
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  smallMobileLayout: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            verticalSpaceLarge,
                            Center(
                              child: Image.asset(
                                'assets/images/heroImg-bgremoved_deblurred_upscaled.png',
                                width: screenWidth(context),
                                height: screenHeight(context)/3.5,
                                alignment: Alignment.center,
                                fit: BoxFit.fill,
                                isAntiAlias: false,
                              ),
                            ),
                            verticalSpaceMedium,
                            const Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Never Stop Exploring The World',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'Afacad',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24,
                                      color: Color(0XFF103850),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                verticalSpaceTiny,
                                Text(
                                  "Discover with Wanderlust Expeditions: Never Stop Exploring the World. We guide your quest for new horizons in a vast tapestry of wonders. Start your journey today.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Afacad',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0XFF103850),
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
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
                          UrlLauncher.launchUrlFunction('https://twitter.com/');
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
