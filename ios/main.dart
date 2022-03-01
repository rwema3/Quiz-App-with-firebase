import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp2/helper/authenticate.dart';
importpackage:quizapp2/helper/constants.dartpackage:quizapp2/views/home.dart
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await Constants.getUerLoggedInSharedPreference().then((value) {
      setState(() {
        isUserLoggedIn = value;
      });
    });
  }

  @overrie
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: isUserLoggedIn ? Home() : Authenticate(),
    );
  }
}
