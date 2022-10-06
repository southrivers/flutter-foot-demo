import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw/utils/app_style.dart';

class TitleComp extends StatelessWidget {
  final String leftTitle;
  final String rightTitle;

  const TitleComp({Key? key, required this.leftTitle, required this.rightTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leftTitle, style: Styles.headLineStyle2,),
        InkWell(
          // 这里是匿名函数，也可以单独定义具名函数
          onTap: () {
            print("hello");
          },
            child: Text(rightTitle, style: Styles.textStyle.copyWith(fontWeight: FontWeight.normal),)
        )
      ],
    );
  }
}
