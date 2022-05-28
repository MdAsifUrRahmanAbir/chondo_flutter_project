import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  final calendarController = CleanCalendarController(
    minDate: DateTime.now().add(Duration(days: -10)),
    maxDate: DateTime.now().add(const Duration(days: 30)),
    readOnly: true,
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
     initialDateSelected: DateTime.now().add(const Duration(days: -5)),
     endDateSelected: DateTime.now().add(const Duration(days: 3)),
  );




   @override
  Widget build(BuildContext context) {
     double _progressValue1 = 16;
     double _progressValue2 = 8;


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
                height: 350,
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
                      height: 300,
                      width: MediaQuery.of(context).size.width - 36,
                      child: ScrollableCleanCalendar(
                        calendarController: calendarController,
                        layout: Layout.BEAUTY,
                        calendarCrossAxisSpacing: 0,
                        daySelectedBackgroundColor: const Color(0xffF74D8B),
                        daySelectedBackgroundColorBetween: const Color(0xffFFC7DB),
                        dayRadius: 20,
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
}
