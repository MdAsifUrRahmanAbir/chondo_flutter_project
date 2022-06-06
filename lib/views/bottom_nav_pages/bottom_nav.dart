import 'package:chondo_flutter_project/views/notification.dart';
import 'package:chondo_flutter_project/views/settings_page.dart';
import 'package:chondo_flutter_project/widgets/my_flutter_app_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  int month = DateTime.now().month;
  List months =
  ['January', 'February', 'March', 'April', 'May','June','July','August','September','October','November','December'];

  int now = DateTime.now().day;


  final List _pages = [
    ReportPage(),
    BlogPage(),
    HomePage(),
    VideoPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF3F8),
      appBar: currentPage == 3? null: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text('$now ${months[month-1]}', style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xffF74D8B), fontWeight: FontWeight.w700,),
          textAlign: TextAlign.center,),
        centerTitle: true,
        leading:  IconButton(
          icon: const Icon(MyFlutterApp.settings, color: Color(0xffFF357D),),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsPage()));
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
