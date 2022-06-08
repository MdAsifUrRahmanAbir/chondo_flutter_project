import 'package:chondo_flutter_project/auth/facebook_auth_class.dart';
import 'package:chondo_flutter_project/auth/google_auth_class.dart';
import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:chondo_flutter_project/widgets/container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../widgets/custom_button.dart';
import '../widgets/text_input_field.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passController = TextEditingController();

  Login({required BuildContext context, required String email, required String pass}) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: pass
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  LangPage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {

        print('Wrong password provided for that user.');
      }
    }
  }

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

      body: Container(
        alignment: Alignment.center,
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

              Text('Welcome back!\nLogin to your Chondo account',
                style: GoogleFonts.roboto(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700,),
                textAlign: TextAlign.center,),

              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                containerButton(
                    (){
                      signInWithGoogle(context);
                    },
                    Colors.white,
                    'assets/logos/googlelogo.png',
                    "Google",
                    Colors.black,
                    134.0,
                    FontWeight.w700
                ),


                containerButton(
                    (){
                      signInWithFacebook(context);
                    },
                    Colors.blue,
                    'assets/logos/fblogo.png',
                    "Facebook",
                    Colors.white,
                    134.0,
                    FontWeight.w700
                ),
              ],),

              const SizedBox(height: 30,),


              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:  40),
                    child: CustomTextInput(text: 'Enter email or username', controller: _emailController,),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:  40),
                    child: CustomTextInput(text: 'Enter Password', controller: _passController,),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account?', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  SignupScreen()));
                        },
                        child: Text('Signup', style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w900,),textAlign: TextAlign.center,),

                      )
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20,),

              InkWell(

                onTap: (){
                  Login(context: context, email: _emailController.text, pass: _passController.text);
                },

                child: CustomButton(text: 'Login',)
              )

            ],
          ),
        ),

      ),
    );
  }
}
