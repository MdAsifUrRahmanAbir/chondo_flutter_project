import 'dart:io';

import 'package:chondo_flutter_project/widgets/my_flutter_app_icons.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';


class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);


   final TextEditingController _noteTitleController = TextEditingController();
   final TextEditingController _noteBodyController = TextEditingController();

   double _progressValue1 = 16;
   double _progressValue2 = 8;
   double _progressValue3 = 8;


   @override
  Widget build(BuildContext context) {



    return Scaffold(
        backgroundColor: const Color(0xffFFF3F8),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(18),
                height: 161,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('16th Day of Cycle',
                      style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff000000), fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.start,),
                    Text('High Chances of Getting Pregnant',
                      style: GoogleFonts.roboto(fontSize: 10, color: const Color(0xff000000), fontWeight: FontWeight.w500,),
                      textAlign: TextAlign.start,),


                    const SizedBox(height: 10,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width -100)/2,
                          child: LinearProgressIndicator(
                            backgroundColor: const Color(0xffF74E8B),
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffFFE9F0)),
                            value: _progressValue1,
                          ),
                        ),


                        SizedBox(
                          width: (MediaQuery.of(context).size.width -100)/2,
                          child: LinearProgressIndicator(
                            backgroundColor: const Color(0xffF47249),
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffFFE7DF)),
                            value: _progressValue2,
                          ),
                        ),

                      ],


                    ),

                    const SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Container(
                          height: 35,
                          width: (MediaQuery.of(context).size.width -100)/2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Next Period',
                                style: GoogleFonts.roboto(fontSize: 10, color: const Color(0xff000000), fontWeight: FontWeight.w700,),
                                textAlign: TextAlign.start,),
                              Text('10th Aug',
                                style: GoogleFonts.roboto(fontSize: 12, color: const Color(0xff000000), fontWeight: FontWeight.w900,),
                                textAlign: TextAlign.start,),
                            ],
                          ),

                          decoration: BoxDecoration(
                              color: const Color(0xffFFE5EF),
                              borderRadius: BorderRadius.circular(7)
                          ),
                        ),


                        Container(
                          height: 35,
                          width: (MediaQuery.of(context).size.width -100)/2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Next Fertile',
                                style: GoogleFonts.roboto(fontSize: 10, color: const Color(0xff000000), fontWeight: FontWeight.w700,),
                                textAlign: TextAlign.start,),
                              Text('25th Aug',
                                style: GoogleFonts.roboto(fontSize: 12, color: const Color(0xff000000), fontWeight: FontWeight.w900,),
                                textAlign: TextAlign.start,),
                            ],
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xffFFE7DF),
                            borderRadius: BorderRadius.circular(7)
                          ),
                        ),

                      ],


                    ),

                    const SizedBox(height: 10,),

                    Row(
                      children: [
                        const Icon(Icons.person_rounded, size: 20, color: Color(0xffF74E8B),),

                        const SizedBox(width: 4,),

                        Text('May feel energetic today',
                          style: GoogleFonts.roboto(fontSize: 10, color: const Color(0xff000000), fontWeight: FontWeight.w500,),
                          textAlign: TextAlign.start,),
                      ],
                    )


                  ],
                ),
              ),

              const SizedBox(height: 12,),

              Container(
                height: 355,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(onPressed: (){}, icon: const Icon(Icons.edit,color: Colors.black,), label: const Text('Edit', style: TextStyle(color: Colors.black),)),
                    // SizedBox(
                    //   height: 300,
                    //   width: MediaQuery.of(context).size.width - 36,
                    //   child: ScrollableCleanCalendar(
                    //     calendarController: calendarController,
                    //     layout: Layout.BEAUTY,
                    //     calendarCrossAxisSpacing: 0,
                    //     daySelectedBackgroundColor: const Color(0xffF74D8B),
                    //     daySelectedBackgroundColorBetween: const Color(0xffFFC7DB),
                    //     dayRadius: 20,
                    //   ),
                    // ),

                    SizedBox(

                      height: 305,
                      //width: 327,
                      // decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(28)
                      // ),

                      child: TableCalendar(
                        firstDay: DateTime.now().add( const Duration(days: -10)),
                        lastDay: DateTime.now().add(const Duration(days: 30)),
                        //focusedDay: _selectedDay,
                        rowHeight: 35,

                        rangeStartDay: DateTime.now(),
                        rangeEndDay: DateTime.now().add(const Duration(days: 8)),
                        focusedDay: DateTime.now(),
                        //calendarStyle: ,


                        // selectedDayPredicate: (day) {
                        //   return isSameDay(_selectedDay, day);
                        // },
                        // onDaySelected: (selectedDay, focusedDay) {
                        //   setState(() {
                        //     _selectedDay = selectedDay;
                        //     _focusedDay = focusedDay; // update `_focusedDay` here as well
                        //   });
                        // },

                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Add Note, Mood &\nSymptoms',
                    style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.start,),

                  FloatingActionButton(
                      onPressed: (){
                        showDialog(

                            context: context,
                            builder: (context){
                              return Dialog(
                                alignment: Alignment.lerp(Alignment.bottomCenter, Alignment.center, .5),
                                backgroundColor: Colors.transparent,
                                elevation: 1,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  height: 255,
                                  width: 290,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF).withOpacity(.8),
                                    borderRadius: BorderRadius.circular(27),
                                  ),

                                  child: Column(
                                    children: [
                                      Row(
                                        children:  [
                                          const Spacer(),
                                          Image.asset('assets/logos/xcircle.png')
                                        ],
                                      ),

                                      const SizedBox(height: 10,),
                                      InkWell(
                                        onTap: (){
                                          _createNote(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 54,
                                          width: 265,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(25),
                                              border: Border.all(width: 2, color: const Color(0xff22215B))
                                          ),
                                          child: Text('Create Note',
                                            style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                                            textAlign: TextAlign.center,),
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      InkWell(

                                        onTap: (){
                                          _emojiPicker(context);
                                        },

                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 54,
                                          width: 265,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(25),
                                              border: Border.all(width: 2, color: const Color(0xff22215B))
                                          ),
                                          child: Text('Add Mood',
                                            style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                                            textAlign: TextAlign.center,),
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      InkWell(
                                        onTap: (){
                                          _createSymptoms(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 54,
                                          width: 265,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(25),
                                              border: Border.all(width: 2, color: const Color(0xff22215B))
                                          ),
                                          child: Text('Add Symptoms',
                                            style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                                            textAlign: TextAlign.center,),
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              );
                            }
                        );
                      },
                    backgroundColor: const Color(0xff212057),
                    child: const Icon(Icons.add,color: Colors.white,),
                  )
                ],
              ),

              const SizedBox(height: 18,),

            ],
          ),
        ),
      ),
    );
  }

  void _createNote(BuildContext context) {
    showDialog(

        context: context,
        builder: (context){
          return Dialog(
            alignment: Alignment.lerp(Alignment.bottomCenter, Alignment.center, .5),
            backgroundColor: Colors.transparent,
            elevation: 1,
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 500,
              width: 290,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF).withOpacity(.8),
                borderRadius: BorderRadius.circular(27),
              ),

              child: Column(
                children: [
                  Row(
                    children:  [
                      const Icon(Icons.arrow_back),
                      const Spacer(),
                      Image.asset('assets/logos/xcircle.png')
                    ],
                  ),

                  const SizedBox(height: 12,),
                  Text('Note Title',
                    style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.start,),
                  const SizedBox(height: 12,),
                  TextFormField(
                    textAlign: TextAlign.start,
                    controller: _noteTitleController,
                    //maxLines: 6,
                    decoration:  InputDecoration(
                        hintText: 'Enter email or username',
                        hintStyle:  const TextStyle(color: Color(0xff22215B), fontSize: 15),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(width: 2, color: Color(0xff22215B))
                        )
                    ),
                  ),

                  const SizedBox(height: 12,),
                  Text('Note Body',
                    style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.start,),
                  const SizedBox(height: 12,),

                  TextFormField(
                    textAlign: TextAlign.start,
                    controller: _noteBodyController,
                    maxLines: 8,
                    decoration:  InputDecoration(
                        hintText: 'Enter email or username',
                        hintStyle:  const TextStyle(color: Color(0xff22215B), fontSize: 15),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(width: 2, color: Color(0xff22215B))
                        )
                    ),
                  ),
                  const SizedBox(height: 12,),


                  InkWell(

                    onTap: (){
                      //Login(context: context, email: _emailController.text, pass: _passController.text);
                    },

                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 150,
                      decoration:  BoxDecoration(
                          color: const Color(0xffFF478A),
                        borderRadius: BorderRadius.circular(25)
                      ),

                      child: Text('Create',
                        style: GoogleFonts.roboto(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700,),
                        textAlign: TextAlign.center,),
                    ),
                  )
                ],
              ),

            ),
          );
        }
    );
  }
  void _createSymptoms(BuildContext context) {
    showDialog(

        context: context,
        builder: (context){
          return Dialog(
            alignment: Alignment.lerp(Alignment.bottomCenter, Alignment.center, .5),
            backgroundColor: Colors.transparent,
            elevation: 1,
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 500,
              width: 290,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF).withOpacity(.8),
                borderRadius: BorderRadius.circular(27),
              ),

              child: Column(
                children: [
                  Row(
                    children:  [
                      const Icon(Icons.arrow_back),
                      const Spacer(),
                      Image.asset('assets/logos/xcircle.png')
                    ],
                  ),
                  const SizedBox(height: 2,),

                  Text('How’s Your Health Today?',
                    style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.center,),

                  const SizedBox(height: 17,),

                  SizedBox(
                    width: (MediaQuery.of(context).size.width -100)/1.5,
                    child: LinearProgressIndicator(
                      backgroundColor: const Color(0xffF47249),
                      valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffFFE7DF)),
                      value: _progressValue3,
                    ),
                  ),



                  const SizedBox(height: 12,),

                  Text('Visit your doctor immediately\nif the meter above turns red',
                    style: GoogleFonts.roboto(fontSize: 15, color: const Color(0xff22215B), fontWeight: FontWeight.w400,),
                    textAlign: TextAlign.center,),

                  const SizedBox(height: 28,),

                  SizedBox(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Blood Flow',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ),
                        const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Dizziness',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ),
                        const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Acne',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Fever',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Nausea',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Shoulder Aches',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Tender Breast',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 2,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Neckaches',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 1,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Lower Back Pain',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 4,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Aabdominal Pain',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 5,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Headache',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            const RatingBar.readOnly(
                              isHalfAllowed: true,
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              halfFilledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: Color(0xffFF478A),
                              emptyColor: Color(0xffFF478A),
                              halfFilledColor: Color(0xffFF478A),
                              initialRating: 2,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                  const SizedBox(height: 12,),
                  InkWell(

                    onTap: (){
                      //Login(context: context, email: _emailController.text, pass: _passController.text);
                    },

                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 250,
                      decoration:  BoxDecoration(
                          color: const Color(0xffFF478A),
                        borderRadius: BorderRadius.circular(25)
                      ),

                      child: Text('Add Symptoms',
                        style: GoogleFonts.roboto(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700,),
                        textAlign: TextAlign.center,),
                    ),
                  )
                ],
              ),

            ),
          );
        }
    );
  }
  void _emojiPicker(BuildContext context) {
    showDialog(

        context: context,
        builder: (context){
          return Dialog(
            alignment: Alignment.lerp(Alignment.bottomCenter, Alignment.center, .5),
            backgroundColor: Colors.transparent,
            elevation: 1,
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 500,
              width: 290,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF).withOpacity(.8),
                borderRadius: BorderRadius.circular(27),
              ),

              child: Column(
                children: [
                  Row(
                    children:  [
                      const Icon(Icons.arrow_back),
                      const Spacer(),
                      Image.asset('assets/logos/xcircle.png')
                    ],
                  ),
                  const SizedBox(height: 2,),

                  Text('How Are Your Feeling Today?',
                    style: GoogleFonts.roboto(fontSize: 20, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                    textAlign: TextAlign.center,),

                  Text('(Can Select Multiple)',
                    style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w400,),
                    textAlign: TextAlign.center,),

                  const SizedBox(height: 17,),

                  SizedBox(
                    height: 260,

                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        EmojiPicker(
                          onEmojiSelected: (category, emoji) {
                            // Do something when emoji is tapped
                          },
                          onBackspacePressed: () {
                            // Backspace-Button tapped logic
                            // Remove this line to also remove the button in the UI
                          },
                          config: const Config(
                            columns: 7,
                            emojiSizeMax: 32,
                            verticalSpacing: 0,
                            horizontalSpacing: 0,
                            initCategory: Category.RECENT,
                            bgColor: Color(0xFFF2F2F2),
                            indicatorColor: Colors.blue,
                            iconColor: Colors.grey,
                            iconColorSelected: Colors.blue,
                            progressIndicatorColor: Colors.blue,
                            backspaceColor: Colors.blue,
                            skinToneDialogBgColor: Colors.white,
                            skinToneIndicatorColor: Colors.grey,
                            enableSkinTones: true,
                            showRecentsTab: true,
                            recentsLimit: 28,
                            noRecents: Text(
                              'No Resents',
                              style: TextStyle(fontSize: 20, color: Colors.black26),
                              textAlign: TextAlign.center,
                            ),
                            tabIndicatorAnimDuration: kTabScrollDuration,
                            categoryIcons: CategoryIcons(),
                            buttonMode: ButtonMode.MATERIAL,
                          ),
                        ),
                      ],
                    ),
                  ),



                  const SizedBox(height: 12,),
                  InkWell(

                    onTap: (){
                      //Login(context: context, email: _emailController.text, pass: _passController.text);
                    },

                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 250,
                      decoration:  BoxDecoration(
                          color: const Color(0xffFF478A),
                        borderRadius: BorderRadius.circular(25)
                      ),

                      child: Text('Add Mood',
                        style: GoogleFonts.roboto(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700,),
                        textAlign: TextAlign.center,),
                    ),
                  )
                ],
              ),

            ),
          );
        }
    );
  }
}


