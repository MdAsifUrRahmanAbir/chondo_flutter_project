import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
        title: Text('Notification',
          style: GoogleFonts.roboto(fontSize: 25, color: const Color(0xff22215B), fontWeight: FontWeight.w700,),
          textAlign: TextAlign.center,),
        backgroundColor: Colors.white,
      ),


      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
            itemBuilder: (context, index){
              return Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 5),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffFF80B3),
                ),
              );
            },
            itemCount: 5),
      ),
    );
  }
}
