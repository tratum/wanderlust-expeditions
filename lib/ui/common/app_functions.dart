import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wanderlust_expeditions/app/app.router.dart';
import 'package:wanderlust_expeditions/ui/widgets/mouse_transforms/scale_on_hover.dart';

import '../../app/app.locator.dart';
import '../apiParsers/destinations/destinationModel.dart';
import '../apiParsers/travelMoods/travelPlacesModel.dart';

class AutoScrolling {
  static void scrollToPosition(double scrollPosition) {
    final ScrollController scrollController = ScrollController();
    scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 850),
      curve: Curves.easeInOut,
    );
  }
}

class UrlLauncher {
  static Future<void> launchUrlFunction(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('could not launch $uri');
    }
  }
}

class FetchFromAPI {
  static Future<List<DestinationModel>> destinations(String url) async {
    final dio = Dio();
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> responseList = response.data;
        final List<DestinationModel> travelMoodList = responseList
            .map((json) => DestinationModel.fromJson(json))
            .toList();
        return travelMoodList;
      } else {
        throw Exception(
            'Failed to load travel places. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('-----------------------------Error: $e');
    }
  }

  static Future<List<TravelMoodsModel>> travelPlaces() async {
    const url =
        "https://tratum.github.io/wanderlust-expeditions-api/travelPlaces.json";
    final dio = Dio();
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> responseList = response.data;
        final List<TravelMoodsModel> travelMoodList = responseList
            .map((json) => TravelMoodsModel.fromJson(json))
            .toList();
        return travelMoodList;
      } else {
        throw Exception(
            'Failed to load travel places. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('-----------------------------Error: $e');
    }
  }
}

class BuildContentBasedOnWidth {
  static Widget forDesktop(BuildContext context, Widget w1, Widget w2,
      Widget w3, Widget w4, Widget w5) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 1024 && screenWidth <= 1203) {
      return w1;
    } else if (screenWidth >= 1204 && screenWidth <= 1320) {
      return w2;
    } else if (screenWidth >= 1321 && screenWidth <= 1384) {
      return w3;
    } else if (screenWidth >= 1385 && screenWidth <= 1440) {
      return w4;
    } else {
      return w5;
    }
  }

  static Widget forTablet(
      BuildContext context, Widget w1, Widget w2, Widget w3) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 768 && screenWidth <= 945) {
      return w1;
    } else if (screenWidth >= 950 && screenWidth <= 1023) {
      return w2;
    } else {
      return w3;
    }
  }
}

class ExploreButtonNavigation {
  static void navigate(List<String> uidList) {
    for (String uid in uidList) {
      switch (uid) {
        case 'ec446417-1b55-4a5e-a2d1-508e3d82a8c8':
          locator<RouterService>().navigateToBeachView();
          break;
        case 'b3187c01-8f9f-419d-bd2c-7848411b0839':
          locator<RouterService>().navigateToMountainView();
          break;
        case 'de7fa7cf-9a68-49d2-ae31-a58827d65947':
          // Heritage Destinations
          break;
        case '3e110390-36ac-488a-bf79-9bcf700c1a7e':
          locator<RouterService>().navigateToHoneymoonView();
          break;
        case 'cecdacf7-fa7f-4ea2-94c7-1c7d45ecc87b':
          locator<RouterService>().navigateToWeekendView();
          break;
        case 'fb268254-4ed8-48bc-88bc-5cacdc95e4ec':
          locator<RouterService>().navigateToRomanticView();
          break;
        case 'a3e1319e-7e6a-474f-a0dd-eddeca0f5a21':
          locator<RouterService>().navigateToPilgrimageView();
          break;
        case 'f16403e3-6a7b-4bee-9335-8ee009ef54a2':
          locator<RouterService>().navigateToFoodieViewRoute();
          break;
        case '6beb5e94-202e-4720-bac2-4ea795a40a66':
          locator<RouterService>().navigateToAdventureView();
          break;
        case '20894aa7-4a82-4482-ac12-2b29d7e0a0f4':
          locator<RouterService>().navigateToTrekkingView();
          break;
        case '6503a6a1-2bb0-4700-8c46-b3a61ae8703a':
          locator<RouterService>().navigateToRelaxView();
          break;
        case '10342b83-d7f2-405a-98cb-589b47ba3581':
          locator<RouterService>().navigateToInternationalView();
          break;
        default:
          debugPrint("No matching UID found for navigation");
      }
    }
  }
}

class CustomBreadcrumbs {
  static Widget getCrumbs(BuildContext context, List<String> items,
      List<Future<dynamic> Function()> callbacks, Color breadcrumbColor) {
    assert(items.length == callbacks.length,
        'Items and callbacks lists must be of the same length.');

    return Wrap(
      spacing: 8,
      children: items
          .asMap()
          .map((index, item) => MapEntry(
                index,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (index != 0)
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 14,
                        color: breadcrumbColor,
                      ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () async {
                        callbacks[index]();
                      },
                      child: ScaleOnHover(
                        scale: 12,
                        child: Text(
                          item,
                          style: TextStyle(
                            color: breadcrumbColor,
                            fontFamily: 'Afacad',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
          .values
          .toList(),
    );
  }
}
