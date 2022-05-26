import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

containerButton( onPressed, color, icon, data, txColor, w, weight){
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: 41,
      width: w,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(icon),
          Text(data, style: GoogleFonts.roboto(color: txColor, fontWeight: weight),)
        ],
      ),
    ),
  );
}