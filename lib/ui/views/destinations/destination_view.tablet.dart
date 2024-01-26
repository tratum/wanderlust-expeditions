import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wanderlust_expeditions/ui/views/destinations/destination_view_model.dart';

import '../../apiParsers/travelMoods/travelPlacesModel.dart';
import '../../apiParsers/travelMoods/travel_places_card.dart';
import '../../common/app_functions.dart';
import '../../common/gridSkeleton.dart';

class DestinationViewTablet extends ViewModelWidget<DestinationViewModel> {
  const DestinationViewTablet({super.key});

  @override
  Widget build(BuildContext context, DestinationViewModel viewModel) {
    return Scaffold(
      backgroundColor: const Color(0XFF212122),
      body: Stack(
        children: [
          BuildContentBasedOnWidth.forTablet(
            context,
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 50),
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
                    padding: EdgeInsets.only(
                      left: 40,
                      right: 40,
                      top: 10,
                    ),
                    child: Text(
                      "Explore our page, where emotions and adventures await. Whether it's romance, adventure, or a peaceful retreat, our curated selection satisfies wanderlust. Choose your mood, find your destination, and let the exploration begin. These places aren't just locations; they're stories waiting to be lived. Discover, dream, and create lasting memories.",
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
                    padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
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
                  Flexible(
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
                                    horizontal: 20, vertical: 40),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 60,
                                    ),
                                    itemCount: dataList.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: dataList[index],
                                        imgHeight: 115,
                                        imgWidth: 300,
                                        locFontSize: 18,
                                        descFontSize: 14,
                                        imgFit: BoxFit.cover,
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
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 30,
                                    ),
                                    itemCount: moods.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: moods[index],
                                        imgHeight: 250,
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
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 50),
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
                    padding: EdgeInsets.only(
                      left: 40,
                      right: 40,
                      top: 10,
                    ),
                    child: Text(
                      "Explore our page, where emotions and adventures await. Whether it's romance, adventure, or a peaceful retreat, our curated selection satisfies wanderlust. Choose your mood, find your destination, and let the exploration begin. These places aren't just locations; they're stories waiting to be lived. Discover, dream, and create lasting memories.",
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
                    padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
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
                  Flexible(
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
                                    horizontal: 20, vertical: 40),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 60,
                                    ),
                                    itemCount: moods.length,
                                    itemBuilder: (context, index) {
                                      return TravelMoodsCard(
                                        data: moods[index],
                                        imgHeight: 115,
                                        imgWidth: 300,
                                        locFontSize: 18,
                                        descFontSize: 14,
                                        imgFit: BoxFit.cover,
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
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 70),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/gif/Wanderlust-unscreen.gif',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 120,
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
