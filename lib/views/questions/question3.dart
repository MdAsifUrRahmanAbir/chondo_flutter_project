import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import 'package:table_calendar/table_calendar.dart';

class Question3 extends StatefulWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {

  // final calendarController = CleanCalendarController(
  //   minDate: DateTime.now(),
  //   maxDate: DateTime.now().add(const Duration(days: 365)),
  //   onRangeSelected: (firstDate, secondDate) {},
  //   onDayTapped: (date) {},
  //   readOnly: false,
  //   onPreviousMinDateTapped: (date) {},
  //   onAfterMaxDateTapped: (date) {},
  //   weekdayStart: DateTime.monday,
  //   // initialDateSelected: DateTime(2022, 3, 15),
  //   // endDateSelected: DateTime(2022, 3, 20),
  // );
  //String _date = "";



  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();



  // _selectDate(BuildContext context) async {
  //   final DateTime? selected = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(2010),
  //     lastDate: DateTime(2025),
  //   );
  //   if (selected != null && selected != selectedDate) {
  //     setState(() {
  //       selectedDate = selected;
  //     });
  //   }
  // }



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
              Text('When Did Your',
                style: GoogleFonts.roboto(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400,),
                textAlign: TextAlign.center,),

              Text('Last Period Start?',
                style: GoogleFonts.roboto(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w700,),
                textAlign: TextAlign.center,),

              const SizedBox(height: 33,),

              // Text(_selectedDay.toString(),
              //   style: GoogleFonts.roboto(fontSize: 30, color: const Color(0xffF74D8B), fontWeight: FontWeight.w700,),
              //   textAlign: TextAlign.center,),

              Container(

                height: 350,
                width: 327,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28)
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),


                 child: TableCalendar(
                   firstDay: DateTime.now().add( const Duration(days: -60)),
                   lastDay: DateTime.now().add(const Duration(days: 60)),
                   focusedDay: _selectedDay,
                   rowHeight: 40,
                   selectedDayPredicate: (day) {
                     return isSameDay(_selectedDay, day);
                   },
                   onDaySelected: (selectedDay, focusedDay) {
                     setState(() {
                       _selectedDay = selectedDay;
                       _focusedDay = focusedDay; // update `_focusedDay` here as well
                     });
                   },

                 )

                  // child: CalendarTimeline(
                  //   initialDate: DateTime.now(),
                  //   firstDate: DateTime.now().add( const Duration(days: -60)),
                  //   lastDate: DateTime.now().add(const Duration(days: 60)),
                  //   onDateSelected: (date) {
                  //     // setState(() {
                  //     //   //_date = date as String;
                  //     // });
                  //   },
                  //   leftMargin: 20,
                  //   monthColor: Colors.black,
                  //   dayColor: Colors.grey,
                  //   activeDayColor: Colors.white,
                  //   activeBackgroundDayColor: const Color(0xffFB699E),
                  //   dotsColor: const Color(0xFF333A47),
                  //   //selectableDayPredicate: (date) => date.day != 23,
                  //   locale: 'en_ISO',
                  // ),
                ),
              ),






              // InkWell(
              //
              //   onTap: (){
              //     _selectDate(context);
              //   },
              //
              //   child: Container(
              //     height: 316,
              //     width: 327,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(28)
              //     ),
              //
              //
              //     // child: DatePickerDialog(
              //     //   initialDate: DateTime.now(),
              //     //   lastDate: DateTime.now().add(const Duration(days: 365)),
              //     //   firstDate: DateTime(2022, 3, 15),
              //     //
              //     // ),
              //   ),
              // ),
              const SizedBox(height: 38,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Question4()));
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 53,
                    width: 214,
                    decoration: BoxDecoration(
                        color: const Color(0xffFB699E),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Start Tracking',
                      style: GoogleFonts.roboto(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
