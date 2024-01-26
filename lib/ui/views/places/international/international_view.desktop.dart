import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wanderlust_expeditions/app/app.router.dart';
import 'package:wanderlust_expeditions/ui/views/places/places_view_model.dart';

import '../../../../app/app.locator.dart';
import '../../../apiParsers/destinations/destinationModel.dart';
import '../../../apiParsers/destinations/destinations_card.dart';
import '../../../common/app_functions.dart';
import '../../../common/app_strings.dart';
import '../../../common/gridSkeleton.dart';
import '../../../common/ui_helpers.dart';

class InternationalViewDesktop extends ViewModelWidget<PlaceViewModel> {
  const InternationalViewDesktop({super.key});

  @override
  Widget build(BuildContext context, PlaceViewModel viewModel) {
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70, right: 70, top: 70, bottom: 20),
                    child: CustomBreadcrumbs.getCrumbs(
                      context,
                      ['Home', 'Destinations', 'International Destinations'],
                      [
                        () {
                          return locator<RouterService>().navigateToHomeView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToDestinationView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToInternationalView();
                        }
                      ],
                      const Color(0XFFfcf8ef),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                    internationalHeading1,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Image.asset(
                          'assets/images/india.png',
                          height: 40,
                          width: 30,
                        ),
                        horizontalSpaceSmall,
                        const Text(
                          internationalHeading2,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 70, top: 10, right: 50, bottom: 20),
                    child: Text(
                      internationalSubHeading,                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.destinations(
                              "https://tratum.github.io/wanderlust-expeditions-api/internationalPlaces.json"),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<DestinationModel> destinations =
                                  snapshot.data as List<DestinationModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 80,
                                    ),
                                    itemCount: destinations.length,
                                    itemBuilder: (context, index) {
                                      return DestinationsCard(
                                        destinationList: destinations[index],
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70, right: 70, top: 70, bottom: 10),
                    child: CustomBreadcrumbs.getCrumbs(
                      context,
                      ['Home', 'Destinations', 'International Destinations'],
                      [
                        () {
                          return locator<RouterService>().navigateToHomeView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToDestinationView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToInternationalView();
                        }
                      ],
                      const Color(0XFFfcf8ef),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                    internationalHeading1,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Image.asset(
                          'assets/images/india.png',
                          height: 40,
                          width: 30,
                        ),
                        horizontalSpaceSmall,
                        const Text(
                          internationalHeading2,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 70, top: 10, right: 50, bottom: 20),
                    child: Text(
                      internationalSubHeading,                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.destinations(
                              "https://tratum.github.io/wanderlust-expeditions-api/internationalPlaces.json"),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<DestinationModel> destinations =
                                  snapshot.data as List<DestinationModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 80,
                                    ),
                                    itemCount: destinations.length,
                                    itemBuilder: (context, index) {
                                      return DestinationsCard(
                                        destinationList: destinations[index],
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70, right: 70, top: 70, bottom: 20),
                    child: CustomBreadcrumbs.getCrumbs(
                      context,
                      ['Home', 'Destinations', 'International Destinations'],
                      [
                        () {
                          return locator<RouterService>().navigateToHomeView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToDestinationView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToInternationalView();
                        }
                      ],
                      const Color(0XFFfcf8ef),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                    internationalHeading1,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Image.asset(
                          'assets/images/india.png',
                          height: 40,
                          width: 30,
                        ),
                        horizontalSpaceSmall,
                        const Text(
                          internationalHeading2,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 70, top: 10, right: 50, bottom: 20),
                    child: Text(
                      internationalSubHeading,                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.destinations(
                              "https://tratum.github.io/wanderlust-expeditions-api/internationalPlaces.json"),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<DestinationModel> destinations =
                                  snapshot.data as List<DestinationModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 80,
                                    ),
                                    itemCount: destinations.length,
                                    itemBuilder: (context, index) {
                                      return DestinationsCard(
                                        destinationList: destinations[index],
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70, right: 70, top: 70, bottom: 20),
                    child: CustomBreadcrumbs.getCrumbs(
                      context,
                      ['Home', 'Destinations', 'International Destinations'],
                      [
                        () {
                          return locator<RouterService>().navigateToHomeView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToDestinationView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToInternationalView();
                        }
                      ],
                      const Color(0XFFfcf8ef),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                    internationalHeading1,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Image.asset(
                          'assets/images/india.png',
                          height: 40,
                          width: 30,
                        ),
                        horizontalSpaceSmall,
                        const Text(
                          internationalHeading2,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 70, top: 10, right: 50, bottom: 20),
                    child: Text(
                      internationalSubHeading,                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.destinations(
                              "https://tratum.github.io/wanderlust-expeditions-api/internationalPlaces.json"),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<DestinationModel> destinations =
                                  snapshot.data as List<DestinationModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 80,
                                    ),
                                    itemCount: destinations.length,
                                    itemBuilder: (context, index) {
                                      return DestinationsCard(
                                        destinationList: destinations[index],
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70, right: 70, top: 70, bottom: 20),
                    child: CustomBreadcrumbs.getCrumbs(
                      context,
                      ['Home', 'Destinations', 'International Destinations'],
                      [
                        () {
                          return locator<RouterService>().navigateToHomeView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToDestinationView();
                        },
                        () {
                          return locator<RouterService>()
                              .navigateToInternationalView();
                        }
                      ],
                      const Color(0XFFfcf8ef),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                    internationalHeading1,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Image.asset(
                          'assets/images/india.png',
                          height: 40,
                          width: 30,
                        ),
                        horizontalSpaceSmall,
                        const Text(
                          internationalHeading2,                          style: TextStyle(
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Color(0XFFfcf8ef),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 70, top: 10, right: 50, bottom: 20),
                    child: Text(
                      internationalSubHeading,                      style: TextStyle(
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0XFFfcf8ef),
                      ),
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0XFF121212),
                      child: FutureBuilder(
                          future: FetchFromAPI.destinations(
                              "https://tratum.github.io/wanderlust-expeditions-api/internationalPlaces.json"),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const GridSkelton();
                            } else if (snapshot.hasError) {
                              return Text(
                                  '----------------Error: ${snapshot.error}');
                            } else {
                              List<DestinationModel> destinations =
                                  snapshot.data as List<DestinationModel>;
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 50),
                                child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 30,
                                      mainAxisSpacing: 80,
                                    ),
                                    itemCount: destinations.length,
                                    itemBuilder: (context, index) {
                                      return DestinationsCard(
                                        destinationList: destinations[index],
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
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color(0XFFfcf8ef),
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 60),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/gif/Wanderlust-unscreen.gif',
                      fit: BoxFit.cover,
                      width: 140,
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
