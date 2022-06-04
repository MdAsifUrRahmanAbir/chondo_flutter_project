import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:chondo_flutter_project/views/bottom_nav_pages/bottom_nav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:horizontal_picker/horizontal_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controllers/questions_controller.dart';

class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {


  QuestionsController con = QuestionsController();


  @override
  Widget build(BuildContext context) {

    con.set(true);
    goToBottom(context);

    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFBC6484),
          Color(0xFF000000),
        ],
      ),

      body: Center(
        child: Text('Analyzing ',
          style: GoogleFonts.roboto(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700,),
          textAlign: TextAlign.center,),
      )
    );
  }

  goToBottom(BuildContext context) async{

    await Future.delayed(const Duration(seconds: 3));
    con.set(true);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNav()));
  }

}
