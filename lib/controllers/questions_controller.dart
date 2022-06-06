import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../views/bottom_nav_pages/bottom_nav.dart';

class QuestionsController extends GetxController{

  bool? b;

 load() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  b= pref.getBool('bl') ?? false;
  return b;
}

set(bool bll) async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  pref.setBool('bl', bll);
}



  var periodLength = 6.0.obs;
  var cycleLength = 28.0.obs;
  var lastPeriodStartDate = DateTime.now().obs;

 var isLoading = false.obs;

  var dataMap = <String, dynamic>{}.obs;

  @override
  void onInit() {
    loadData();
  }



  postDetailsToFireStore(BuildContext context) async {
    //  calling our firestore
    //  calling our user model
    //  sending these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;



    var reff = firebaseFirestore.collection('users').doc(user?.uid);
    final batch = firebaseFirestore.batch();

    batch.update( reff,{
      'periodL': periodLength.value.toString(),
      'cycleL': cycleLength.value.toString(),
      'date': lastPeriodStartDate.value,
      'isUpdate': true
    });

    batch.commit().then((value) => goToBottom(context));
  }


  loadData() {

    final docRef = FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid);
    docRef.get().then(
          (DocumentSnapshot doc)  {
         var data = doc.data() as Map<String, dynamic>;
         dataMap = data.obs;

         lastPeriodStartDate = dataMap['date'].obs;
         periodLength = dataMap['periodL'].obs;
         cycleLength = dataMap['cycleL'].obs;




        print('data loaded in controller');



      },
      onError: (e) => print("Error getting document: $e"),
    );

  }

  goToBottom(BuildContext context) async{

    await Future.delayed(const Duration(seconds: 3));
    //con.set(true);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNav()));
  }

}