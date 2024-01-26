import 'package:flutter/material.dart';
import 'package:wanderlust_expeditions/ui/common/skelton.dart';

class GridSkelton extends StatelessWidget {
  const GridSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70, top: 20),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 30,
        mainAxisSpacing: 80,
        children: const [
          Skelton(
            height: 40,
            width: 320,
          ),
          Skelton(
            height: 40,
            width: 320,
          ),
          Skelton(
            height: 40,
            width: 320,
          ),
        ],
      ),
    );
  }
}
