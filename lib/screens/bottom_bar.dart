import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectIndex = 0;

  static final List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    Text("user List"),
    Text("settings")
  ];

  void _onTap(int index) {
    setState(() {
      _selectIndex = index;
    });
    // print('${index}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("同城订购"),
      ),
      body: Center(child: _widgetOption[_selectIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "通信录"),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts), label: "用户中心")
        ],
      ),
    );
  }
}
