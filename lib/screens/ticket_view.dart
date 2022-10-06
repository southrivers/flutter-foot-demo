import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw/utils/app_layout.dart';
import 'package:hw/utils/app_style.dart';
import 'package:hw/widgets/circle_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getScreenSize(context);
    return SizedBox(
      height: 200,
      width: size.width*.85,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Row(
                children: [
                  Text(
                    "NYC",
                    style: Styles.headLineStyle2.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  CircleContainer(),
                  Expanded(
                      child: Stack(children: [
                        SizedBox(
                          //layoutbuilder的好处在于能够获取对应的距离大小
                          height: 24,// 必须要设置height、否则会出现偏移的问题
                          child: LayoutBuilder(
                            builder: (BuildContext, BoxConstraints) {
                              print('${BoxConstraints.constrainWidth()}');
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    (BoxConstraints.constrainWidth() / 8).floor(),
                                        (index) => SizedBox(
                                      width: 4,
                                      height: 2,
                                      child: Container(
                                        decoration:
                                        BoxDecoration(color: Colors.white),
                                      ),
                                    )),
                              );
                            },
                          ),
                        ),
                        Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ))
                      ])),
                  CircleContainer(),
                  Spacer(),
                  Text(
                    "LDN",
                    style: Styles.headLineStyle2.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 20,
                  width: AppLayout.getScreenSize(context).width,
                  decoration: BoxDecoration(
                      color: Colors.pink
                  ),
                  child: SizedBox(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                    Expanded(child: SizedBox(
                      child: LayoutBuilder(
                        builder: (BuildContext , BoxConstraints ) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // TODO
                            children: List.generate((BoxConstraints.constrainWidth()/13).floor(), (index) =>
                                SizedBox(
                                  height: 1,
                                  width: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white
                                    ),
                                  ),
                                )),
                          );
                        },
                      ),
                    )),
                    Container(
                      height: 20,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                          )
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(10),
              width: AppLayout.getScreenSize(context).width,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
            )
          ],
        ),
      ),
    );
  }
}
