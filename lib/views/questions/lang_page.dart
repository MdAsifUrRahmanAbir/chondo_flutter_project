import 'package:chondo_flutter_project/controllers/questions_controller.dart';
import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LangPage extends StatefulWidget {
   LangPage({Key? key}) : super(key: key);

  @override
  State<LangPage> createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
   final QuestionsController _controller = Get.put(QuestionsController());

  dynamic _value = 1;

  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(.1),
                      borderRadius: BorderRadius.circular(28),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/logos/language.png'),
                      //const Spacer(),
                      DropdownButton(
                          value: _value,
                          items:  [
                            DropdownMenuItem(
                              child: Text("Select Language", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.center,),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("English", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.center,),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text("Bangla", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.center,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Question1()));
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
