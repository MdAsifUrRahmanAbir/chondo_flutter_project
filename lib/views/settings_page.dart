import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class SettingsPage extends StatelessWidget {
   SettingsPage({Key? key}) : super(key: key);


  bool value = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(


      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFFFAFC),
          Color(0xFFFFF3F8),
        ],
      ),

      appBar: AppBar(
        elevation: 0,
        title: Text('Settings & Preference',
          style: GoogleFonts.roboto(fontSize: 25, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
          textAlign: TextAlign.start,),
        backgroundColor: Colors.white,
      ),


      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [

            Container(
              height: 26,
              width: double.infinity,
              alignment: Alignment.centerLeft,

              decoration: BoxDecoration(
                color: const Color(0xffFFD7E7),
                borderRadius: BorderRadius.circular(20)
              ),

              child: Container(
                height: 26,
                width: MediaQuery.of(context).size.width/2.5,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    color: const Color(0xffFF80B3),
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Text('General Settings',
                  style: GoogleFonts.roboto(fontSize: 15, color: const Color(0xff9E5273), fontWeight: FontWeight.w700,),
                  textAlign: TextAlign.start,),

              ),

            ),
            const SizedBox(height: 20,),

            Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/logos/language.png'),

                    const SizedBox(width: 15,),

                    Text('Language',
                      style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.left,),
                    //const Spacer(),

                  ],
                )
            ),

            const SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
              height: 115,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: .2
                  )
                ]
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('বাংলা (Bengali)',
                        style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                        textAlign: TextAlign.start,),

                      Spacer(),

                      Switch(
                          value: value,
                          onChanged: (svalue){
                            value == svalue;
                          }
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text('English (US)',
                        style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                        textAlign: TextAlign.start,),

                      const Spacer(),

                      Switch(
                          value: true,
                          activeColor: const Color(0xffF74E8B),
                          onChanged: (svalue){
                            value == svalue;
                          }
                      )
                    ],
                  ),
                ],
              ),

            ),

            const SizedBox(height: 20,),

            Container(
              height: 26,
              width: double.infinity,
              alignment: Alignment.centerLeft,

              decoration: BoxDecoration(
                  color: const Color(0xffFFD7E7),
                  borderRadius: BorderRadius.circular(20)
              ),

              child: Container(
                height: 26,
                width: MediaQuery.of(context).size.width/2.5,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    color: const Color(0xffFF80B3),
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Text('Data & Account',
                  style: GoogleFonts.roboto(fontSize: 15, color: const Color(0xff9E5273), fontWeight: FontWeight.w700,),
                  textAlign: TextAlign.start,),

              ),

            ),
            const SizedBox(height: 20,),

            Container(
              height: 105,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: .2
                    )
                  ]
              ),

              child: Padding(
                padding: const EdgeInsets.only(top: 14.0, bottom: 14, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Backup & Restore',
                      style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w500,),
                      textAlign: TextAlign.left,),

                    Text('Password',
                      style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w500,),
                      textAlign: TextAlign.left,),
                    Text('Switch Account',
                      style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w500,),
                      textAlign: TextAlign.left,),
                  ],
                ),
              ),

            ),
            const SizedBox(height: 20,),

            Container(
              height: 26,
              width: double.infinity,
              alignment: Alignment.centerLeft,

              decoration: BoxDecoration(
                  color: const Color(0xffFFD7E7),
                  borderRadius: BorderRadius.circular(20)
              ),

              child: Container(
                height: 26,
                width: MediaQuery.of(context).size.width/2.5,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    color: const Color(0xffFF80B3),
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Text('Support Chondo',
                  style: GoogleFonts.roboto(fontSize: 15, color: const Color(0xff9E5273), fontWeight: FontWeight.w700,),
                  textAlign: TextAlign.start,),

              ),

            ),
            const SizedBox(height: 20,),

            Container(
              height: 105,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: .2
                    )
                  ]
              ),

              child: Padding(
                padding: const EdgeInsets.only(top: 14.0, bottom: 14, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Feedback & Bug Report',
                      style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w500,),
                      textAlign: TextAlign.left,),

                    Text('Request a New Feature',
                      style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w500,),
                      textAlign: TextAlign.left,),
                    Text('Share with Friends',
                      style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w500,),
                      textAlign: TextAlign.left,),
                  ],
                ),
              ),

            ),


          ],
        ),
      ),
    );
  }
}
