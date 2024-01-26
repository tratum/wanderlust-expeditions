import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wanderlust_expeditions/app/app.router.dart';
import 'package:wanderlust_expeditions/ui/apiParsers/travelMoods/travel_places_card.dart';
import 'package:wanderlust_expeditions/ui/common/app_functions.dart';
import 'package:wanderlust_expeditions/ui/common/gridSkeleton.dart';

import '../../../app/app.locator.dart';
import '../../apiParsers/travelMoods/travelPlacesModel.dart';
import 'destination_view_model.dart';

class DestinationViewDesktop extends ViewModelWidget<DestinationViewModel> {
  const DestinationViewDesktop({super.key});

  @override
  Widget build(BuildContext context, DestinationViewModel viewModel) {
    return Scaffold(
      backgroundColor: const Color(0XFF212122),
      body: Stack(
        children: [
          BuildContentBasedOnWidth.forDesktop(
            context,
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 50),
                    child: Text(
                      'Discover Your Perfect Escape: Explore Destinations Tailored to Every Mood!',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                        color: Color(0XFFfcf8ef),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, top: 10, right: 50),
                    child: Text(
                      "Welcome to our Explore page, where we invite you to immerse yourself in a tapestry of emotions and adventures. Whether you seek the allure of romance, the thrill of adventure, or the tranquility of a peaceful retreat, our curated selection awaits your wanderlust. Choose your mood, find your destination, and let the exploration begin. These are not just places; they are stories waiting to be lived. Discover, dream, and make memories that last a lifetime.",
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, top: 20, bottom: 20),
                    child: Text(
                      'Your Journey Starts Here.',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Color(0XFFfcf8ef),
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.travelPlaces(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<TravelMoodsModel> moods =
                                  snapshot.data as List<TravelMoodsModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 50,
                                      mainAxisSpacing: 80,
                                    ),
                                    itemCount: moods.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: moods[index],
                                        imgHeight: 240,
                                      );
                                    }),
                              );
                            }
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 50),
                    child: Text(
                      'Discover Your Perfect Escape: Explore Destinations Tailored to Every Mood!',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w900,
                        fontSize: 34,
                        color: Color(0XFFfcf8ef),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 10),
                    child: Text(
                      "Welcome to our Explore page, where we invite you to immerse yourself in a tapestry of emotions and adventures. Whether you seek the allure of romance, the thrill of adventure, or the tranquility of a peaceful retreat, our curated selection awaits your wanderlust. Choose your mood, find your destination, and let the exploration begin. These are not just places; they are stories waiting to be lived. Discover, dream, and make memories that last a lifetime.",
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, top: 20, bottom: 20),
                    child: Text(
                      'Your Journey Starts Here.',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0XFFfcf8ef),
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.travelPlaces(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<TravelMoodsModel> moods =
                                  snapshot.data as List<TravelMoodsModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 30,
                                    ),
                                    itemCount: moods.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: moods[index],
                                        imgHeight: 155,
                                        imgFit: BoxFit.fitWidth,
                                        descFontSize: 14,
                                        locFontSize: 18,
                                      );
                                    }),
                              );
                            }
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 50),
                    child: Text(
                      'Discover Your Perfect Escape: Explore Destinations Tailored to Every Mood!',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w900,
                        fontSize: 34,
                        color: Color(0XFFfcf8ef),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 10),
                    child: Text(
                      "Welcome to our Explore page, where we invite you to immerse yourself in a tapestry of emotions and adventures. Whether you seek the allure of romance, the thrill of adventure, or the tranquility of a peaceful retreat, our curated selection awaits your wanderlust. Choose your mood, find your destination, and let the exploration begin. These are not just places; they are stories waiting to be lived. Discover, dream, and make memories that last a lifetime.",
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, top: 20, bottom: 20),
                    child: Text(
                      'Your Journey Starts Here.',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0XFFfcf8ef),
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.travelPlaces(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<TravelMoodsModel> moods =
                                  snapshot.data as List<TravelMoodsModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 30,
                                    ),
                                    itemCount: moods.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: moods[index],
                                        imgHeight: 198,
                                        imgFit: BoxFit.fitWidth,
                                        descFontSize: 14,
                                        locFontSize: 18,
                                      );
                                    }),
                              );
                            }
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 50),
                    child: Text(
                      'Discover Your Perfect Escape: Explore Destinations Tailored to Every Mood!',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w900,
                        fontSize: 34,
                        color: Color(0XFFfcf8ef),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 10),
                    child: Text(
                      "Welcome to our Explore page, where we invite you to immerse yourself in a tapestry of emotions and adventures. Whether you seek the allure of romance, the thrill of adventure, or the tranquility of a peaceful retreat, our curated selection awaits your wanderlust. Choose your mood, find your destination, and let the exploration begin. These are not just places; they are stories waiting to be lived. Discover, dream, and make memories that last a lifetime.",
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, top: 20, bottom: 20),
                    child: Text(
                      'Your Journey Starts Here.',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0XFFfcf8ef),
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.travelPlaces(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<TravelMoodsModel> moods =
                                  snapshot.data as List<TravelMoodsModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 30,
                                    ),
                                    itemCount: moods.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: moods[index],
                                        imgHeight: 198,
                                        imgFit: BoxFit.fitWidth,
                                      );
                                    }),
                              );
                            }
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70, right: 70, top: 70, bottom: 10),
                    child: CustomBreadcrumbs.getCrumbs(
                      context,
                      ['Home', 'Destinations'],
                      [
                        () {
                          return locator<RouterService>().navigateToHomeView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToDestinationView();
                        },
                      ],
                      const Color(0XFFfcf8ef),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70),
                    child: Text(
                      'Discover Your Perfect Escape: Explore Destinations Tailored to Every Mood!',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w900,
                        fontSize: 34,
                        color: Color(0XFFfcf8ef),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, right: 70, top: 10),
                    child: Text(
                      "Welcome to our Explore page, where we invite you to immerse yourself in a tapestry of emotions and adventures. Whether you seek the allure of romance, the thrill of adventure, or the tranquility of a peaceful retreat, our curated selection awaits your wanderlust. Choose your mood, find your destination, and let the exploration begin. These are not just places; they are stories waiting to be lived. Discover, dream, and make memories that last a lifetime.",
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70, top: 20, bottom: 20),
                    child: Text(
                      'Your Journey Starts Here.',
                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0XFFfcf8ef),
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.travelPlaces(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<TravelMoodsModel> dataList =
                                  snapshot.data as List<TravelMoodsModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 30,
                                    ),
                                    itemCount: dataList.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: dataList[index],
                                        imgHeight: 248,
                                        imgFit: BoxFit.fitWidth,
                                      );
                                    }),
                              );
                            }
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color(0XFFfcf8ef),
              height: 90,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 60),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/gif/Wanderlust-unscreen.gif',
                      fit: BoxFit.cover,
                      height: 90,
                      width: 180,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
