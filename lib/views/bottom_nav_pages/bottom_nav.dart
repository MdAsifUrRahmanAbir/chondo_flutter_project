import 'package:chondo_flutter_project/views/settings.dart';
import 'package:chondo_flutter_project/views/notification.dart';
import 'package:chondo_flutter_project/widgets/my_flutter_app_icons.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:chondo_flutter_project/models/all_views.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentPage = 2;
  DateTime date = DateTime(DateTime.now().day);
  String now = DateFormat('dd').format(DateTime.now());

  final List _pages = [
    CalanderPage(),
    BlogPage(),
    HomePage(),
    VideoPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF3F8),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text(now, style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xffF74D8B), fontWeight: FontWeight.w700,),
          textAlign: TextAlign.center,),
        centerTitle: true,
        leading:  IconButton(
          icon: const Icon(MyFlutterApp.settings, color: Color(0xffFF357D),),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
          },

          ),
        actions:  [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  NotificationPage()));
              },
              icon:const Icon(MyFlutterApp.bell, color: Color(0xffFF357D),),

          ),
          const SizedBox(width: 10,)
        ],
      ),
      body: _pages[currentPage],
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
