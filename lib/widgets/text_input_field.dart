import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInput extends StatelessWidget {
   CustomTextInput({Key? key, required this.text, required this.controller}) : super(key: key);

  String text;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller: controller,
      decoration:  InputDecoration(
          hintText: text,
          hintStyle: GoogleFonts.roboto(color: const Color(0xffFF8AB5), fontSize: 15, fontWeight: FontWeight.w500),
          filled: true,
          fillColor: const Color(0xffFFDBE8),
          disabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 1,color: Colors.transparent)
          ),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 1,color: Colors.transparent)
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent, width: 1),
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );
  }
}
