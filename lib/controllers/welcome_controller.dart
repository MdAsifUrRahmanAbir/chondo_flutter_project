import 'package:get/get.dart';

class WelcomeController extends GetxController{


  var index = 0.obs;

  void increment(){
    index.value++;
  }

}