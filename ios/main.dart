import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
imporackage:quizapp2/helper/authenticate.dartpackage:quizapp2/helper/constant
  getLoggedInState() async {
    await Constants.getUerLoggedInSharedPreference().then((value) {
      setState(() {
        isUserLoggedIn = value;
      });
    });
  }

  @overrie
  Widget build(BuildConte
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: isUserLog
}
