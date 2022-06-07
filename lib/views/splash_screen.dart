import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:chondo_flutter_project/models/all_coltroller.dart';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';


class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

   QuestionsController con = QuestionsController();
   bool isUpdated= false;
   final QuestionsController _controller = Get.put(QuestionsController());
   final UserInputController _userInputControllercontroller = Get.put(UserInputController());



   @override
  Widget build(BuildContext context) {
     //_userInputControllercontroller.loadData();
     _controller.loadData();
     gotohome( context);
    return ScaffoldGradientBackground(

      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffFF5F99),
          Color(0xffFF377F),
        ],
      ),

      body: Center(child: Image.asset('assets/logos/splashlogo.png')),
    );
  }



  Future gotohome(BuildContext context) async {

    await Future.delayed(const Duration(seconds: 2));
    if(FirebaseAuth.instance.currentUser != null){

      final docRef = FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid);
      docRef.get().then(
            (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;

          if(data['isUpdate']){

              // final docRef = FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid);
              // docRef.get().then(
              //       (DocumentSnapshot doc)  {
              //     var data = doc.data() as Map<String, dynamic>;
              //     _controller.dataMap = data.obs;
              //
              //
              //
              //     _controller.lastPeriodStartDate = _controller.dataMap['date'].obs;
              //     _controller.periodLength = _controller.dataMap['periodL'].obs;
              //     _controller.cycleLength = _controller.dataMap['cycleL'].obs;
              //
              //
              //
              //
              //     print('data loaded in controller');
              //
              //
              //
              //   },
              //   onError: (e) => print("Error getting document: $e"),
              // );

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
