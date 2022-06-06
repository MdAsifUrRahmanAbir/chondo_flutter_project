import 'package:chondo_flutter_project/models/all_coltroller.dart';
import 'package:chondo_flutter_project/widgets/my_flutter_app_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';



class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final TextEditingController _noteTitleController = TextEditingController();

   final TextEditingController _noteBodyController = TextEditingController();

   double _progressValue1 = 45;
   double _progressValue2 = 40;
   double _progressValue3 = 21;

   double bloodFlowValue = 0.0;
   double dizzinessValue = 0.0;
   double acneValue = 0.0;
   double feverValue = 0.0;
   double nauseaValue = 0.0;
   double shoulderAchesValue = 0.0;
   double tenderBreastValue = 0.0;
   double neckachesValue = 0.0;
   double lowerBackPainValue = 0.0;
   double aabdominalPainValue = 0.0;
   double headacheValue = 0.0;

   final QuestionsController _controller = Get.put(QuestionsController());
   final UserInputController _userInputController = Get.put(UserInputController());

   int month = DateTime.now().month;

   List months = ['January', 'February', 'March', 'April', 'May','June','July','August','September','October','November','December'];

   int now = DateTime.now().day;

   String symptoms = 'You have';
   List symtomsString = [];

   addSymptoms(){

     for(int i =0; i<_userInputController.addSymtoms.length; i++){
       symptoms = "$symptoms ${_userInputController.addSymtoms[i]}, ";
     }

     symptoms = "$symptoms today";

   }




   // Timestamp? stamp ;
   // DateTime? date ;

   @override
  void initState() {
     //stamp = _controller.lastPeriodStartDate.value as Timestamp?;
     //addSymptoms();
    // TODO: implement initState
    super.initState();
  }

   @override
  Widget build(BuildContext context) {
     //_controller.loadData();


     print(_controller.periodLength.value);
     print(_controller.cycleLength.value);
     print(_controller.lastPeriodStartDate.value);
     print(_controller.dataMap['firstName']);
     print(_controller.dataMap['secondName']);






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
                padding: const EdgeInsets.all(18),
                height: 172,
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

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width -100)/2,
                          height: 5,
                          child: LinearProgressIndicator(
                            //backgroundColor: const Color(0xffF74E8B),
                            backgroundColor: const Color(0xffFFE9F0),
                            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffF74E8B)),
                            value: _progressValue1/100,
                          ),


                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width -100)/2,

                          child: Slider(
                            activeColor: const Color(0xffF47249),
                            inactiveColor: const Color(0xffFFE7DF),
                            thumbColor: const Color(0xffF74E8B),

                            value: _progressValue2,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            //label: _progressValue2.round().toString(),
                            onChanged: (double value) {

                            },
                          ),

                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Container(
                          height: 30,
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
                          height: 30,
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
                    const SizedBox(height: 5,),
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

                    SizedBox(
                      height: 305,
                      child: TableCalendar(

                        calendarStyle:  const CalendarStyle(

                          selectedDecoration: BoxDecoration(
                              color: Color(0xffF74E8B)
                          ),
                          rangeHighlightColor: Color(0xffFFC7DB),
                          withinRangeDecoration:  BoxDecoration(
                            color: Color(0xffFFC7DB),
                          ),
                          rangeStartDecoration:  BoxDecoration(
                              color: Color(0xffF74E8B),
                              shape: BoxShape.circle
                          ),
                          rangeEndDecoration:  BoxDecoration(
                              color: Color(0xffF74E8B),
                              shape: BoxShape.circle
                          ),
                          todayDecoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          todayTextStyle: TextStyle(color: Colors.black),

                        ),

                        firstDay: DateTime.now().add( const Duration(days: -30)),
                        lastDay: DateTime.now().add(const Duration(days: 30)),
                        rowHeight: 35,
                        rangeStartDay: _controller.lastPeriodStartDate.value,
                        rangeEndDay: _controller.lastPeriodStartDate.value.add( Duration(days: _controller.periodLength.value.toInt())),
                        focusedDay: DateTime.now(),

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

              _userInputController.addSymtoms.isEmpty ? Container(): Container(
                width: double.infinity,
                height: 200,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),

                child: Text(symptoms),

              )

            ],
          ),
        )
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        hintText: 'Write title here',
                        hintStyle:  const TextStyle(color: Color(0xff22215B), fontSize: 15),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
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
                        hintText: 'Write note here',
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

                    onTap: () async{

                        FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
                        User? user = FirebaseAuth.instance.currentUser;
                        FirebaseAuth.instance.currentUser!.sendEmailVerification();

                        //  writing all the values


                        await firebaseFirestore
                            .collection("users-notes-${user?.uid}")
                            .doc()
                            .set({
                                 'title': _noteTitleController.text,
                                  'body': _noteBodyController.text
                              });
                        //Fluttertoast.showToast(msg: "Account Created and a mail send for varification");

                    },

                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 250,
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
              height: 600,
              width: 300,
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
                    height: 320,
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


                             RatingBar(
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                bloodFlowValue = value;
                              },
                            ),


                            // RatingBar.builder(
                            //   initialRating: 1,
                            //   minRating: 1,
                            //   direction: Axis.horizontal,
                            //   //allowHalfRating: true,
                            //   itemCount: 5,
                            //   itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                            //   itemBuilder: (context, _) => const Icon(
                            //     MyFlutterApp.rating,
                            //     color: Colors.amber,
                            //   ),
                            //   onRatingUpdate: (rating) {
                            //     print(rating);
                            //   },
                            // )
                          ],
                        ),
                        const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Dizziness',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                             RatingBar(
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                               onRatingChanged: (double value) {
                                 dizzinessValue = value;
                               },
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


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                acneValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Fever',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                feverValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Nausea',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                  nauseaValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Shoulder Aches',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                shoulderAchesValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Tender Breast',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                tenderBreastValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Neckaches',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                neckachesValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Lower Back Pain',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                lowerBackPainValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Aabdominal Pain',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                aabdominalPainValue = value;
                              },
                            ),
                          ],
                        ), const SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('Headache',
                              style: GoogleFonts.roboto(fontSize: 18, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
                              textAlign: TextAlign.center,),


                            RatingBar(
                              alignment: Alignment.center,
                              filledIcon: MyFlutterApp.rattingfilled,
                              emptyIcon: MyFlutterApp.rating,
                              filledColor: const Color(0xffFF478A),
                              emptyColor: const Color(0xffFF478A),
                              initialRating: 0,
                              maxRating: 5,
                              size: 25,
                              onRatingChanged: (double value) {
                                headacheValue = value;
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                  const Spacer(),
                  InkWell(

                    onTap: (){
                      /*
                        double bloodFlowValue = 0.0;
                         double dizzinessValue = 0.0;
                         double acneValue = 0.0;
                         double feverValue = 0.0;
                         double nauseaValue = 0.0;
                         double shoulderAchesValue = 0.0;
                         double tenderBreastValue = 0.0;
                         double neckachesValue = 0.0;
                         double lowerBackPainValue = 0.0;
                         double aabdominalPainValue = 0.0;
                         double headacheValue = 0.0;
                       */
                      if(bloodFlowValue>1){
                        _userInputController.addSymtoms.value.add('Blood Flow');
                      }
                      if(dizzinessValue>1){
                        _userInputController.addSymtoms.value.add('Dizziness');
                      }
                      if(acneValue>1){
                        _userInputController.addSymtoms.value.add('Acne');
                      }
                      if(feverValue>1){
                        _userInputController.addSymtoms.value.add('Fever');
                      }
                      if(nauseaValue>1){
                        _userInputController.addSymtoms.value.add('Nausea');
                      }
                      if(shoulderAchesValue>1){
                        _userInputController.addSymtoms.value.add('Shoulder Aches');
                      }
                      if(tenderBreastValue>1){
                        _userInputController.addSymtoms.value.add('Tender Breast');
                      }
                      if(neckachesValue>1){
                        _userInputController.addSymtoms.value.add('Neckaches');
                      }
                      if(lowerBackPainValue>1){
                        _userInputController.addSymtoms.value.add('Lower Back Pain');
                      }
                      if(aabdominalPainValue>1){
                        _userInputController.addSymtoms.value.add('Abdominal Pain');
                      }
                      if(headacheValue>1){
                        _userInputController.addSymtoms.value.add('Headache');
                      }

                      setState(() {
                        addSymptoms();
                      });

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
                  ),
                  const SizedBox(height: 12,),
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
              height: 600,
              width: 310,
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
                    height: 370,

                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: 65,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/inlove.png')
                                    ),
                                    Text('In Love',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/happy.png')
                                    ),
                                    Text('Happy',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/flirty.png')
                                    ),
                                    Text('Flirty',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/blassed.png')
                                    ),

                                    Text('Blessed',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/annoyed.png')
                                    ),
                                    Text('Annoyed',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/angry.png')
                                    ),
                                    Text('Angry',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/anxious.png')
                                    ),
                                    Text('Anxious',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/furious.png')
                                    ),

                                    Text('Furious',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/bored.png')
                                    ),
                                    Text('Bored',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/confused.png')
                                    ),
                                    Text('Confused',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/goofy.png')
                                    ),
                                    Text('Goofy',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/sleepy.png')
                                    ),

                                    Text('Sleepy',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 68,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/sad.png')
                                    ),
                                    Text('Sad',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 68,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/depressed.png')
                                    ),
                                    Text('Depressed',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 68,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/scared.png')
                                    ),
                                    Text('Scared',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 68,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/lonly.png')
                                    ),

                                    Text('Lonly',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 80,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/mischievous.png')
                                    ),
                                    Text('Mischievous',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/cool.png')
                                    ),
                                    Text('Cool',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/surprised.png')
                                    ),
                                    Text('Surprised',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset('assets/emojis/sevil.png')
                                    ),

                                    Text('Evil',
                                      style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xffFF3980), fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              ),
                            ],
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


