import 'package:chondo_flutter_project/controllers/questions_controller.dart';
import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangPage extends StatefulWidget {
   LangPage({Key? key}) : super(key: key);

  @override
  State<LangPage> createState() => _LangPageState();

}

class _LangPageState extends State<LangPage> {
  dynamic _value = 1;

  late Future <bool> b ;
  final Future <SharedPreferences> preff = SharedPreferences.getInstance();


  set() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('bl', true);
  }

  @override
  void initState() {

    b = preff.then((SharedPreferences prefs) {
      return prefs.getBool('bl')!;
    });

    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    if(b==true){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNav()));
    }

    return Scaffold(

        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/backgrounds/welcomescreen.png'),fit: BoxFit.cover)
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(height: 200,),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.bottomCenter,
                  width: 270,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFDBE8),
                      borderRadius: BorderRadius.circular(28),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/logos/language.png'),
                      //const Spacer(),


                      DropdownButton(
                        alignment: Alignment.bottomLeft,
                        dropdownColor: const Color(0xffFFDBE8),
                        iconSize: 0,
                        borderRadius: BorderRadius.circular(28),
                        value: _value,
                        items:   [
                          DropdownMenuItem(
                            child: Container(
                              alignment: Alignment.center,
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xffFFDBE8),
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: const Text(
                                "Select Language",
                                style: TextStyle(color: Color(0xffFB699E)),textAlign: TextAlign.center,),
                            ),
                              value: 1,
                          ),
                          DropdownMenuItem(
                            child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFDBE8),
                                  borderRadius: BorderRadius.circular(28),
                                ),
                                child: const Text("English", style: TextStyle(color:  Color(0xffFB699E)),textAlign: TextAlign.center,)),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFDBE8),
                                  borderRadius: BorderRadius.circular(28),
                                ),
                                child: const Text("Bengali", style: TextStyle(color:  Color(0xffFB699E)),textAlign: TextAlign.center,)),
                            value: 3,
                          )
                        ],

                        onChanged: ( value){
                          _value = value;
                          setState(() {

                          });
                          print(value);
                        },
                      ),

                      const Icon(Icons.keyboard_arrow_down_outlined, color: Color(0xffFB699E),)

                    ],
                  )
                ),

                const SizedBox(height: 90,),

                Text('I want to track',
                  style: GoogleFonts.roboto(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w700,),
                  textAlign: TextAlign.center,),

                const SizedBox(height: 18,),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 83,
                    width: 270,
                    decoration: BoxDecoration(
                      color: const Color(0xffFB699E),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('My Period',
                      style: GoogleFonts.roboto(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.center,),
                  ),
                ),


                const SizedBox(height: 130,),

                InkWell(

                  onTap: (){
                    set();
                    if(_value!=1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Question1()));
                    }
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 83,
                      width: 270,
                      decoration: BoxDecoration(
                        //color: const Color(0xffFB699E),
                          gradient: _value ==1? const LinearGradient(
                            colors: [
                              Color(0xffC2C2C2),
                              Color(0xff8C8C8C)
                            ],
                            //stops: [0,3,10,0]
                          ):const LinearGradient(
                            colors: [
                              Color(0xffFF81AF),
                              Color(0xffF12F76)
                            ],
                            //stops: [0,3,10,0]
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Continue',
                            style: GoogleFonts.roboto(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700,),
                            textAlign: TextAlign.center,),
                          const SizedBox(width: 35,),
                          const Icon(Icons.arrow_forward_ios, size: 20,color: Colors.white,)
                        ],
                      )
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
