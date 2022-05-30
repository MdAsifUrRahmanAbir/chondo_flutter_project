import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chondo_flutter_project/models/all_views.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton.icon(
                onPressed: () async{
                  await FirebaseAuth.instance.signOut();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                },
                icon: const Icon(Icons.logout, color: Color(0xFFBC6484),),
                label: Text('LOGOUT ',
                  style: GoogleFonts.roboto(fontSize: 30, color: const Color(0xFFBC6484), fontWeight: FontWeight.w700,),
                  textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}
