import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    gotohome( context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/logos/splashlogo.png'),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/backgrounds/splashscreen.jpg', ), fit: BoxFit.cover )
        ),
      ),
    );
  }



  Future gotohome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    if(FirebaseAuth.instance.currentUser != null){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LangPage()));
    }else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
      //Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
    }
    // Navigator.pushReplacement(
    //            context, MaterialPageRoute(builder: (context) =>  WelcomeScreen()));
  }
}
