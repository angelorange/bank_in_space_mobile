import 'package:bank_in_space/modules/register/register.dart';
import 'package:bank_in_space/modules/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:bank_in_space/modules/home/presentation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Loader',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '': (BuildContext context) => HomePage(),
        '/login': (BuildContext context) => LoginPage(),
      },
    );
  }
}
