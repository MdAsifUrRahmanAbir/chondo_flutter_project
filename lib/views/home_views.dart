import 'package:flutter/material.dart';


class HomeViews extends StatelessWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        child: Text('Home Page'),
      )
    );
  }
}
