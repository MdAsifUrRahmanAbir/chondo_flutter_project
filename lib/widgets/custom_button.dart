import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key, required this.text}) : super(key: key);
   String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 152,
      decoration:   BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xffFC6A9F),
            blurRadius: 3,
            spreadRadius: 0,
            offset: Offset(0,0)
          )
        ],
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFF81AF),
                Color(0xffF12F76)
              ]
          ),
          borderRadius: BorderRadius.circular(15)
      ),

      child: Text(text,
        style: GoogleFonts.roboto(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700,),
        textAlign: TextAlign.center,),
    );
  }
}
