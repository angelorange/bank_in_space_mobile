import 'package:bank_in_space/app/routes/routes.dart';
import 'package:bank_in_space/modules/register/register.dart';
import 'package:bank_in_space/modules/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bank_in_space/app/routes/pages.dart';
import 'package:bank_in_space/app/routes/routes.dart';
import 'package:bank_in_space/modules/home/presentation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevinSpace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: Pages.routes,
      // routes: {
      //   '/': (BuildContext context) => HomePage(),
      //   '/login': (BuildContext context) => LoginPage(),
      // },
      initialRoute: Routes.INITIAL,
      // getPages: Pages.routes,
    );
  }
}
