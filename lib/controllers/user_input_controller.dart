import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserInputController extends GetxController{

  @override
  void onInit() {

    //loadData();

    // TODO: implement onInit
    super.onInit();
  }

  var addSymtoms = [].obs;

  var dataMap = [].obs;



  // loadData() async{
  //   User? user = FirebaseAuth.instance.currentUser;
  //
  //   //final docRef = FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid);
  //
  //
  //    var docRef = await FirebaseFirestore.instance.collection("users-notes-${user?.uid}").get().then((res) =>
  //       print("Successfully completed inputt user controller $res"),
  //       //dataMap = res as RxMap
  //
  //       onError: (e) => print("Error completing: $e"),
  //   );
  //
  //
  //
  //
  //   // for(int i=0; i< docRef.docs.length; i++){
  //   //   dataMap = docRef.docs[i].obs as RxMap  ;
  //   //   print(dataMap);
  //   // }
  //
  //
  //   // docRef.get().then(
  //   //       (DocumentSnapshot doc)  {
  //   //     var data = doc.data() as Map<String, dynamic>;
  //   //     dataMap = data.obs;
  //   //
  //   //     print('USER INPUT CONTROLLER: data loaded in user input controller');
  //   //
  //   //   },
  //   //   onError: (e) => print("USER INPUT CONTROLLER:  Error getting document: $e"),
  //   // );
  //
  // }

}