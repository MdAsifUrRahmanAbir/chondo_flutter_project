import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFBC6484),
          Color(0xFF000000),
        ],
      ),

      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   shadowColor: Colors.transparent,
      //   leading: const Icon(Icons.arrow_back, color: Colors.black, size: 24),
      // ),
      body: Center(
        child: InkWell(
          onTap: () async{
            await FirebaseAuth.instance.signOut();
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          },
          child: Text('Analyzing ',
            style: GoogleFonts.roboto(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700,),
            textAlign: TextAlign.center,),
        ),
      )
    );
  }
}
