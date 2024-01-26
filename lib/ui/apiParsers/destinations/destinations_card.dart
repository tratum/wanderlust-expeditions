import 'package:flutter/material.dart';
import 'package:wanderlust_expeditions/ui/apiParsers/destinations/destinationModel.dart';

import '../../common/ui_helpers.dart';

class DestinationsCard extends StatelessWidget {
  final DestinationModel destinationList;
  final double? imgHeight;
  final double? imgWidth;
  final double? cardHeight;
  final double? cardWidth;
  final double? locFontSize;
  final double? descFontSize;
  final BoxFit? imgFit;

  const DestinationsCard({
    super.key,
    required this.destinationList,
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
                  destinationList.imgLink,
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
                  destinationList.location,
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
                  destinationList.subText,
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
              verticalSpaceMedium,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  destinationList.desc,
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
              verticalSpaceSmall,
            ],
          ),
        ),
      ),
    );
  }
}
