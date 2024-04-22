import 'package:elections/pages/intro/introPage.dart';
import 'package:elections/pages/login/loginPage.dart';
import 'package:elections/pages/periode/periodePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MonApplication());
}
class MonApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage()
    );
  }
}