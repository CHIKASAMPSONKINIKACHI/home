import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Brand extends StatelessWidget {
  final Color color;
  // ignore: use_key_in_widget_constructors
  const Brand(this.color);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image(
        image: Svg('assets/svgs/logo.svg',
            size: const Size(121.65, 83.47), color: color),
      ),
      Text(
        'REPAIR HOME',
        style: TextStyle(
          color: color,
          fontSize: 32,
          fontFamily: 'GoboldThin',
          fontWeight: FontWeight.w400,
        ),
      ),
    ]);
  }
}