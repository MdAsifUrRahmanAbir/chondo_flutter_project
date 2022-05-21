import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

class Question3 extends StatefulWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
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

              const SizedBox(height: 60,),
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
