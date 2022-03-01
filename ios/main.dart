import package:flutter/material.dartackage:flutter/services.dart
  getLoggedInState() async {
    await Constants.getUerLoggedInSharedPreference().then((value) {
      setState(() {
        isUserLoggedIn = value;
      });
    });
  }

  @overrie
  Widget build(Bui
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeDa