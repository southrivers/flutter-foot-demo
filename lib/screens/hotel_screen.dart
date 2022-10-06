import 'package:flutter/cupertino.dart';
import 'package:hw/utils/app_layout.dart';

import '../utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  final String loc;
  const HotelScreen({Key? key, required this.loc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getScreenSize(context);
    return Container(
      width: size.width*0.6,
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        // color: Styles.primaryColor,
        image: DecorationImage(
          image: AssetImage(
            loc,
          )
        )
      ),
    );
  }
}
