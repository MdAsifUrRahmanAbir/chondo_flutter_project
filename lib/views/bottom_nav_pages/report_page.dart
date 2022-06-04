import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

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

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
            itemBuilder: (context, index){
              return Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 5),
                padding: const EdgeInsets.all( 15),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFE9F0),
                    border: Border.all(
                        width: .5,
                        color: const Color(0xffF74E8B)
                    )
                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Notification',
                      style: GoogleFonts.roboto(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.center,),

                    Text('This month your period length is 8 days.',
                      style: GoogleFonts.roboto(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400,),
                      textAlign: TextAlign.center,),
                  ],
                ),


              );

            },
            itemCount: 5),
      ),
    );
  }
}
