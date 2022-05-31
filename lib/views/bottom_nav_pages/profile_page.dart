import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Container(
                height: 144,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.white
                ),

                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            CircleAvatar(
                              child: Image.asset('assets/logos/profileavatar.png', ),
                              radius: 50,
                            ),


                          const SizedBox(width: 10,),

                          Text('Megha Chawdhury',
                            style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: IconButton(
                        onPressed: (){

                        },
                        icon: Image.asset('assets/logos/editicon.png', ),
                      ),
                    )
                  ],
                ),

              ),

              const SizedBox(height: 13,),
              Container(
                height: 107,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white
                ),

                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20, right: 36),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text('Period Length',
                                style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                                textAlign: TextAlign.start,),
                              const Spacer(),
                              Text('5 Days',
                                style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w400,),
                                textAlign: TextAlign.start,),
                            ],
                          ),

                          Row(
                            children: [
                              Text('Cycle Length',
                                style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                                textAlign: TextAlign.start,),
                              const Spacer(),
                              Text('28 Days',
                                style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w400,),
                                textAlign: TextAlign.start,),
                            ],
                          )
                        ],
                      ),
                    ),

                    Positioned(
                      top: 1,
                      right: 1,
                      child: IconButton(
                        onPressed: (){

                        },
                        icon: Image.asset('assets/logos/editicon.png', ),
                      ),
                    )
                  ],
                ),

              ),

              const SizedBox(height: 17,),

              Row(
                children: [
                  Text('Reminders',
                    style: GoogleFonts.roboto(fontSize: 30, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.start,),

                  Image.asset('assets/logos/reminderlogo.png', ),
                ],
              ),

              const SizedBox(height: 7,),

              Container(
                padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
                height: 165,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                ),

                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Period Reminder',
                          style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                          textAlign: TextAlign.start,),

                        const Spacer(),

                        Switch(
                            value: true,
                            activeColor: const Color(0xff4FFFAA),
                            onChanged: (svalue){
                              //value == svalue;
                            }
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Medication Reminder',
                          style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                          textAlign: TextAlign.start,),

                        const Spacer(),

                        Switch(
                            value: true,
                            activeColor: const Color(0xff4FFFAA),
                            onChanged: (svalue){
                             // value == svalue;
                            }
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Water Intake Reminder',
                          style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                          textAlign: TextAlign.start,),

                        const Spacer(),

                        Switch(
                            value: true,
                            activeColor: const Color(0xff4FFFAA),
                            onChanged: (svalue){
                              // value == svalue;
                            }
                        )
                      ],
                    ),
                  ],
                ),

              ),

              SizedBox(height: 17,),

              Text('My Notes',
                style: GoogleFonts.roboto(fontSize: 30, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                textAlign: TextAlign.start,),
              const SizedBox(height: 7,),

              SizedBox(
                height: 90,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Container(
                        height: 87,
                        width: 195,
                        margin: const EdgeInsets.only(right: 5),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,

                        ),

                        child: Stack(
                          children: [
                            Positioned(
                              top: 1,
                              right: 1,
                              child: IconButton(
                                onPressed: (){

                                },
                                icon: Image.asset('assets/logos/editicon.png', ),
                              ),
                            )
                          ],
                        ),

                      );
                    },
                    itemCount: 5),
              ),


              const SizedBox(height: 20,),

              TextButton.icon(
                  onPressed: () async{
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  icon: const Icon(Icons.logout, color: Color(0xFFBC6484),),
                  label: Text('LOGOUT ',
                    style: GoogleFonts.roboto(fontSize: 30, color: const Color(0xFFBC6484), fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.center,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
