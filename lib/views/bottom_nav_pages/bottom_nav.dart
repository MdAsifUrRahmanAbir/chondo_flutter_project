import 'package:chondo_flutter_project/widgets/my_flutter_app_icons.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentPage = 0;
  DateTime date = DateTime(DateTime.now().day);
  String now = DateFormat('dd').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text(now, style: const TextStyle(color:  Color(0xffFF357D)),),
        centerTitle: true,
        leading: const Icon(MyFlutterApp.settings, color:  Color(0xffFF357D),),
        actions: const [
          Icon(MyFlutterApp.bell, color: Color(0xffFF357D),)
        ],
      ),
      body: Container(),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: 2,
        circleColor: const Color(0xffFF357D),
        inactiveIconColor: const Color(0xffFF357D),
        activeIconColor: Colors.white,

        tabs: [
          TabData(iconData: MyFlutterApp.bottom_calendar, title: '',),
          TabData(iconData: MyFlutterApp.bottom_menu, title: ''),
          TabData(iconData: MyFlutterApp.bottom_home, title: ''),
          TabData(iconData: MyFlutterApp.bottomplay, title: ''),
          TabData(iconData: MyFlutterApp.bottom_profile, title: '')
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}
