import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp2/helper/authenticate.dart';
import 'package:quizapp2/helper/constants.dart';
import 'package:quizapp2/views/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isUserLoggedIn = false;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await Constants