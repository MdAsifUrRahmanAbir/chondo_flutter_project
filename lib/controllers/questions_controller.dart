import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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



  var periodLength = 5.0.obs;
  var cycleLength = 28.0.obs;
  var lastPeriodStartDate = DateTime.now().obs;




}