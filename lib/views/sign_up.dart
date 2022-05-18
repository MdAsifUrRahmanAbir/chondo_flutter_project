import 'package:chondo_flutter_project/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/backgrounds/welcomescreen.png'),fit: BoxFit.cover)
          ),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment. center,
              children: [

                const SizedBox(height: 70,),


                containerButton(
                        (){

                    },
                    Colors.white,
                    'assets/logos/googlelogo.png',
                    "Signup with Google",
                    Colors.black,
                    280.0,
                    FontWeight.w500
                ),

                const SizedBox(height: 20,),

                containerButton(
                        (){

                    },
                    Colors.blue,
                    'assets/logos/fblogo.png',
                    "Signup with Facebook",
                    Colors.white,
                    280.0,
                    FontWeight.w500
                ),

                const SizedBox(height: 20,),

                Text('Or, sign up by providiing the following information',
                  style: GoogleFonts.roboto(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w700,),
                  textAlign: TextAlign.center,),

                const SizedBox(height: 30,),


                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  40),
                      child: TextFormField(
                       // controller: ,
                        textAlign: TextAlign.center,
                        decoration:  InputDecoration(
                            hintText: 'First Name',
                            hintStyle:  TextStyle(color: Colors.red.withOpacity(.5), fontSize: 15),
                            fillColor: Colors.redAccent.withOpacity(.1),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  40),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  InputDecoration(
                          hintText: 'Last Name',
                            hintStyle:  TextStyle(color: Colors.red.withOpacity(.5), backgroundColor: Color(0xFFDBE8),fontSize: 15),
                            filled: true,
                            fillColor: Colors.redAccent.withOpacity(.1),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  40),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  InputDecoration(
                            hintText: 'Chose Username',
                            hintStyle:  TextStyle(color: Colors.red.withOpacity(.5), fontSize: 15),
                            fillColor: Colors.redAccent.withOpacity(.1),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  40),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration:  InputDecoration(
                            hintText: 'Email Address',
                            hintStyle:  TextStyle(color: Colors.red.withOpacity(.5), fontSize: 15),
                            fillColor: Colors.redAccent.withOpacity(.1),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30,),

                InkWell(

                  onTap: (){

                  },

                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 152,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/buttons/buttonloin.png'))
                    ),

                    child: Text('signup',
                      style: GoogleFonts.roboto(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700,),
                      textAlign: TextAlign.center,),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),
                    TextButton(
                      onPressed: (){

                      },
                      child: Text('Login', style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w900,),textAlign: TextAlign.center,),

                    )
                  ],
                ),

              ],
            ),
          )

        ),
      ),
    );
  }
}
