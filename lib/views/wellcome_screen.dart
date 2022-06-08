import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:chondo_flutter_project/models/all_coltroller.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';


class WelcomeScreen extends StatelessWidget {
   WelcomeScreen({Key? key}) : super(key: key);

   int indexSlide = 0;
   final WelcomeController _controller = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    List welcomeImage = [
      'assets/logos/welcomelogo1.png',
      'assets/logos/welcomelogo2.png',
      'assets/logos/welcomelogo3.png'
    ];

    List welcomeText = [
      'Track Your Period',
      'Share Report With Your\nPartner & Doctor',
      'Know Your Body\nBetter Than Ever'
    ];

    List welcomeBar = [
      'assets/logos/welcomebar1.png',
      'assets/logos/welcomebar2.png',
      'assets/logos/welcomebar3.png'
    ];

    // List welcomeBar = [
    //   'assets/welcome/bar1.svg',
    //   'assets/welcome/bar2.svg',
    //   'assets/welcome/bar3.svg'
    // ];

    return ScaffoldGradientBackground(

        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFF1F6),
            Color(0xFFFFE3ED),
          ],
        ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),

          Container(
              margin: const EdgeInsets.symmetric( horizontal: 50),
              child: Obx(()=> Image.asset(welcomeImage[_controller.index.value],)),),

          const SizedBox(height: 70,),

          Column(
            children: [
              Obx(()=> Text(welcomeText[_controller.index.value], style: GoogleFonts.roboto( color: Colors.black, fontSize: 28),),),
              const SizedBox(height: 18,),
              SizedBox(
                height: 8,
                width: 20,
                child: Obx(()=> Image.asset(welcomeBar[_controller.index.value], fit: BoxFit.fitWidth),)
              ),
              // SizedBox(
              //   height:8,
              //   width:20,
              //   child: Obx(()=> SvgPicture.asset(
              //     welcomeBar[_controller.index.value], //asset location
              //     color: Colors.red, //svg color
              //   ),)
              // ),
            ],
          ),

          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(),
              Obx(()=> _controller.index.value == 2? _startNow(context): _next(context),),
            ],
          ),
          const SizedBox(height: 30,)

        ],
      )
    );
  }

  _next(BuildContext context){
    return InkWell(

      onTap: (){
        _controller.increment();
      },

      child: Container(
        margin: const EdgeInsets.only(left: 210, ),
        alignment: Alignment.bottomRight,
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/buttons/welcomebutton.png'))
        ),
      ),
    );
  }

  _startNow(BuildContext context){
    return InkWell(

      onTap: (){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>  LoginScreen()), (route) => false);
      },

      child: Container(
        alignment: Alignment.center,
        height: 59,
        width: 265,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/buttons/startnow.png'))
        ),
        child: const Text('Start Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
      ),
    );
  }
}
