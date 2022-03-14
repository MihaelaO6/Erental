import './firstpage.dart';
import './thanks.dart';
import './signin.dart';
import './login.dart';
import './payment.dart';
import 'package:flutter/material.dart';
import './choose.dart';
import './waytocompute.dart';
import './waytopay.dart';
import './bikebrand.dart';
import './scooterbrand.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'firstpage',
    routes: {
      'firstpage': (context) => First(),
      'login': (context) => MyLogin(),
      'signin': (context) => MySignIn(),
      'choose': (context) => Choose(),
      'bikebrand': (context) => Bike(),
      'scooterbrand': (context) => Scooter(),
      'waytocompute': (context) => Bill(),
      //     'maps': (context) => MapsDemo1(),
      'waytopay': (context) => Pay(),
      'payment': (context) => Payment(),
      'thanks': (context) => Thanks(),
     // 'shake1': (context) => MainPage()
    },
  ));
}
