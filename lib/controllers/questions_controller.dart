import 'package:shared_preferences/shared_preferences.dart';

class QuestionsController{

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

}