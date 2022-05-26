import 'package:chondo_flutter_project/auth/facebook_auth_class.dart';
import 'package:chondo_flutter_project/auth/google_auth_class.dart';
import 'package:chondo_flutter_project/models/all_views.dart';
import 'package:chondo_flutter_project/models/user_model.dart';
import 'package:chondo_flutter_project/widgets/container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
   SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   final TextEditingController _emailController = TextEditingController();
   final TextEditingController _passController = TextEditingController();
   final TextEditingController _userNameController = TextEditingController();
   final TextEditingController _firstNameController = TextEditingController();
   final TextEditingController _lastNameController = TextEditingController();
   final TextEditingController _phoneNumberController = TextEditingController();

   int _value = 1;

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
                     signInWithGoogle(context);
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
                          signInWithFacebook(context);
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

                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.redAccent.withOpacity(.1),
                                borderRadius: BorderRadius.circular(28),
                                border: Border.all(color: Colors.black, width: .8)
                              ),
                              child: DropdownButton(
                                  value: _value,
                                  items:  [
                                    DropdownMenuItem(
                                      child: Text("+880", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.center,),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("+99", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.center,),
                                      value: 2,
                                    )
                                  ],

                                  onChanged: ( value){
                                    _value = _value;
                                  },
                                  hint:Text("+880")
                                ),
                            ),
                            ),

                          const SizedBox(width: 2,),
                          Expanded(
                            flex: 10,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: _phoneNumberController,
                              decoration:  InputDecoration(
                                  hintText: 'Phone Number',
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
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(.1),
                            borderRadius: BorderRadius.circular(28),
                            border: Border.all(color: Colors.black, width: .8)
                        ),
                        child: Container(
                          child: DropdownButton(
                            value: _value,
                            items:  [

                              DropdownMenuItem(
                                child: Text("Gender", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.right,),
                                value: 1,
                              ),

                              DropdownMenuItem(
                                child: Text("Female", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.right,),
                                value: 2,
                              ),

                              DropdownMenuItem(
                                child: Text("Male [who have period]", style: TextStyle(color: Colors.red.withOpacity(.5)),textAlign: TextAlign.right,),
                                value: 3,
                              ),

                            ],

                            onChanged: ( value){
                              _value = _value;
                            },
                          ),
                        )
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 30,),

                InkWell(

                  onTap: (){
                    Signup(email: _emailController.text,
                        pass: _passController.text,
                        );
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

   Signup({
     required String email,
     required String pass,
          }) async{
     try {
       final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email,
         password: pass,
       ).then((value) =>  postDetailsToFireStore() );
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

   postDetailsToFireStore() async {
     //  calling our firestore
     //  calling our user model
     //  sending these values

     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
     User? user = FirebaseAuth.instance.currentUser;
     FirebaseAuth.instance.currentUser!.sendEmailVerification();

     UserModel userModel = UserModel();

     //  writing all the values
     userModel.email = user!.email;
     userModel.uid = user.uid;
     userModel.firstName = _firstNameController.text;
     userModel.secondName = _lastNameController.text;
     userModel.userName = _userNameController.text;
     userModel.gender = 'Female';
     userModel.phoneNumber = _phoneNumberController.text;

     await firebaseFirestore
         .collection("users")
         .doc(user.uid)
         .set(userModel.toMap());
     //Fluttertoast.showToast(msg: "Account Created and a mail send for varification");

     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()),
             (route) => false);
   }
}
