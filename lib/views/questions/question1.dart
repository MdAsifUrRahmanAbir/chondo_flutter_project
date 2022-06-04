import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:chondo_flutter_project/models/all_coltroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

 class Question1 extends StatelessWidget {


  final QuestionsController _controller = Get.put(QuestionsController());


  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFFF1F6),
          Color(0xFFFFE3ED),
        ],
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back, color: Colors.black, size: 24),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text('Let us get to know you better!',
                style: GoogleFonts.roboto(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700,),
                textAlign: TextAlign.center,),

              const SizedBox(height: 100,),
              Text('What’s Your Average ',
                style: GoogleFonts.roboto(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400,),
                textAlign: TextAlign.center,),

              Text('Period Length?',
                style: GoogleFonts.roboto(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w700,),
                textAlign: TextAlign.center,),


              const SizedBox(height: 28,),
              Obx(()=> Text(_controller.periodLength.value.toString(),
                style: GoogleFonts.roboto(fontSize: 30, color: const Color(0xffF74D8B), fontWeight: FontWeight.w700,),
                textAlign: TextAlign.center,),),
              const SizedBox(height: 8,),
              HorizontalPicker(
                //initialPosition: _controller.periodLength.value,
                minValue: 2,
                maxValue: 7,
                divisions: 5,
                suffix: "",
                showCursor: true,
                backgroundColor: Colors.transparent,
                activeItemTextColor: const Color(0xffF74D8B),
                passiveItemsTextColor: const Color(0xffF74D8B),
                onChanged: (value) {

                    _controller.periodLength.value= value;
                },
                height: 120,


              ),
              const SizedBox(height: 60,),

              InkWell(
                onTap: (){
                  print(_controller.periodLength.value);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Question2() ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 53,
                  width: 114,
                  decoration: BoxDecoration(
                      color: const Color(0xffFB699E),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Next',
                        style: GoogleFonts.roboto(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700,),
                        textAlign: TextAlign.center,),
                      const SizedBox(width: 5,),
                      const Icon(Icons.arrow_forward_ios, size: 20,color: Colors.white,)
                    ],
                  )
                ),
              ),

              const SizedBox(height: 60,),
              Container(
                height: 145,
                width: 270,
                decoration: BoxDecoration(
                  color: const Color(0xffFFF1F6),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Image.asset('assets/logos/alert.png', height: 20, width: 20,),
                          const SizedBox(width: 3,),
                          Text('Average Period Length',
                            style: GoogleFonts.roboto(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w700,),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 14, top: 2),
                      child: Text('''
Your Period cycle starts on the day you
start bleeding and ends on the day your
bleeding stops. Your period length can
vary from about 2 to 7 days.
                      ''',
                        style: GoogleFonts.roboto(fontSize: 12, color: const Color(0xff363636), fontWeight: FontWeight.w500,),
                        textAlign: TextAlign.left,),
                    ),

                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

}
