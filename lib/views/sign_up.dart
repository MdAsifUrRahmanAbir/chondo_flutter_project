import 'package:chondo_flutter_project/widgets/container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);

   TextEditingController _emailController = TextEditingController();
   TextEditingController _passController = TextEditingController();
   TextEditingController _userNameController = TextEditingController();
   TextEditingController _firstNameController = TextEditingController();
   TextEditingController _lastNameController = TextEditingController();

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
                        textAlign: TextAlign.center,
                        controller: _firstNameController,
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
                        controller: _lastNameController,
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
                        controller: _userNameController,
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
                        controller: _emailController,
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

                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  40),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        controller: _passController,
                        decoration:  InputDecoration(
                            hintText: 'Password',
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
                    Signup(email: _emailController.text,
                        pass: _passController.text,
                        userName: _userNameController.text,
                        firstName: _firstNameController.text,
                        lastName: _lastNameController.text);
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

   Signup({required String email, required String pass, required String userName, required String firstName, required String lastName}) async{
     try {
       final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email,
         password: pass,
       );
       print("Success");
     } on FirebaseAuthException catch (e) {
       if (e.code == 'weak-password') {
         print('The password provided is too weak.');
       } else if (e.code == 'email-already-in-use') {
         print('The account already exists for that email.');
       }
     } catch (e) {
       print(e);
     }
   }
}
