import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
   WelcomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List welcomeImage = [
      'assets/logos/welcomelogo1.png',
      'assets/logos/welcomelogo2.png',
      'assets/logos/welcomelogo3.png'
    ];

    List welcomeText = [
      'Text1',
      'Text2',
      'Text3'
    ];

    List welcomeBar = [
      'assets/logos/welcomebar1.png',
      'assets/logos/welcomebar2.png',
      'assets/logos/welcomebar3.png'
    ];

    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/backgrounds/welcomescreen.png'),fit: BoxFit.cover)
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 145),
                      margin: EdgeInsets.symmetric( horizontal: 50),
                      child: Image.asset('assets/logos/welcomelogo1.png',)),
                  Text('Data'),
                  const SizedBox(height: 20,),

                  Container(
                    height: 8,
                    width: 20,
                    child: Image.asset(welcomeBar[index]),
                  ),

                  Container(
                    height: 20,
                    width: 50,
                    color: Colors.red,
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
