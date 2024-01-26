import 'package:flutter/material.dart';
import 'package:wanderlust_expeditions/ui/apiParsers/travelMoods/travelPlacesModel.dart';
import 'package:wanderlust_expeditions/ui/common/app_functions.dart';

import '../../common/ui_helpers.dart';

class TravelMoodsCard extends StatelessWidget {
  final TravelMoodsModel data;
  final double? imgHeight;
  final double? imgWidth;
  final double? cardHeight;
  final double? cardWidth;
  final double? locFontSize;
  final double? descFontSize;
  final BoxFit? imgFit;

  const TravelMoodsCard({
    super.key,
    required this.data,
    this.imgHeight,
    this.imgWidth,
    this.cardHeight,
    this.cardWidth,
    this.locFontSize,
    this.descFontSize,
    this.imgFit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFF212121),
        borderRadius: BorderRadius.circular(20),
      ),
      height: cardHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Card(
          color: const Color(0XFF212121),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  data.imgLink,
                  height: imgHeight ?? 250,
                  width: imgWidth ?? 600,
                  fit: imgFit ?? BoxFit.cover,
                  alignment: Alignment.topLeft,
                ),
              ),
              verticalSpaceSmall,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  data.location,
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: locFontSize ?? 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFFfcf8ef),
                  ),
                ),
              ),
              verticalSpaceTiny,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  data.desc,
                  style: TextStyle(
                    fontFamily: 'Afacad',
                    fontSize: descFontSize ?? 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFFfcf8ef),
                  ),
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    try {
                      ExploreButtonNavigation.navigate([data.uid]);
                    } catch (e) {
                      debugPrint(
                          '-------------Error fetching travel places: $e');
                    }
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: const Color(0xFF40C4FF),
                      fixedSize: const Size(120, 40)),
                  child: const Text(
                    'Explore Now',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF40C4FF),
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
            ],
          ),
        ),
      ),
    );
  }
}
