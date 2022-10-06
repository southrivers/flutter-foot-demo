import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hw/screens/hotel_screen.dart';
import 'package:hw/screens/ticket_view.dart';
import 'package:hw/utils/title_component.dart';

import '../utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bfColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "欢迎！",
                          style: Styles.textStyle
                              .copyWith(color: Styles.textColor),
                        ),
                        Gap(10),
                        Text("首页", style: Styles.headLineStyle1,)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/images/img_1.png"))),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Gap(10),
                      Text("搜索")
                    ],
                  ),
                ),
                Gap(30),
                TitleComp(leftTitle: "航班信息", rightTitle: "展开")
              ],
              //  后续列表
            ),
          ),
          Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TicketView(),
                TicketView()
              ],
            ),
          ),
          Gap(20),
          Container(
            child:TitleComp(leftTitle: "旅馆", rightTitle: "展开"),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
            ),
          ),
          // 存放图片
          Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HotelScreen(loc: "assets/images/one.png",),
                HotelScreen(loc: "assets/images/two.png",),
                HotelScreen(loc: "assets/images/three.png",)
              ],
            ),
          )
        ],
      ),
    );
  }
}

//keytool -genkey -v -keystore ~/workspace/flutter/apk.jks -keyalg RSA -keysize 2048 -validity 2000 -alias wesapk