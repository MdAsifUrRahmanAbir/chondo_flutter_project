import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/questions_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

   QuestionsController con = QuestionsController();
   bool isUpdated= false;
   final QuestionsController _controller = Get.put(QuestionsController());



   @override
  Widget build(BuildContext context) {
     _controller.loadData();
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

      final docRef = FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid);
      docRef.get().then(
            (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;

          if(data['isUpdate']){
            Navigator.pushReplacement(
                       context, MaterialPageRoute(builder: (context) => BottomNav()));
          }else{
            Navigator.pushReplacement(
                       context, MaterialPageRoute(builder: (context) => LangPage()));
          }
        },
        onError: (e) => print("Error getting document: $e"),
      );

      // if(isUpdated){
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute(builder: (context) => BottomNav()));
      // }else{
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute(builder: (context) => LangPage()));
      // }

    }else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
      //Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
    }
    // Navigator.pushReplacement(
    //            context, MaterialPageRoute(builder: (context) =>  WelcomeScreen()));
  }
}
