import 'package:blooddonation_project/firebase_options.dart';
import 'package:blooddonation_project/homescreen.dart';
import 'package:blooddonation_project/receivedrequest.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation_project/founddonor.dart';
import 'package:blooddonation_project/login.dart';
import 'package:blooddonation_project/login_signup.dart';
import 'package:blooddonation_project/question.dart';
import 'package:blooddonation_project/questionfour.dart';
import 'package:blooddonation_project/questionthree.dart';
import 'package:blooddonation_project/questiontwo.dart';
import 'package:blooddonation_project/request.dart';
import 'package:blooddonation_project/searchdonor.dart';
import 'package:blooddonation_project/signup.dart';
import 'package:blooddonation_project/splash.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      // home: MyRequest(),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "splashScreen": (context) => LoginSignup(),
        "login": (context) => LoginApp(),
        "singup": (context) => SignUpPage(),
        "homescreen": (context) => HomeScreen(),
        "signup": (context) => HomeScreen(),
        "neardoctor": (context) => SearchDonor(),
        "founddonor": (context) => FoundDonor(),
        "eligibility": (context) => Question(),
        "yes": (context) => QuestionTwo(),
        "no": (context) => HomeScreen(),
        "yes3": (context) => QuestionThree(),
        "yes4": (context) => QuestionFour(),
        "yes5": (context) => Request(),
        "submit": (context) => HomeScreen(),
        "notification": (context) => ReceivedRequest(),
        "logout": (context) => LoginSignup(),
        "signup1": (context) => SignUpPage(),
        "bloodbank": (context) => SearchDonor(),
        "bloodbank1": (context) => SearchDonor(),
        "signin1": (context) => LoginApp(),
      },
    );
  }
}
