import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bank_in_space/app/routes/pages.dart';
import 'package:bank_in_space/app/routes/routes.dart';


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
      initialRoute: Routes.HOME,
      getPages: Pages.routes,
      // routes: {
      //   '/': (BuildContext context) => HomePage(),
      //   '/login': (BuildContext context) => LoginPage(),
      // },
      // getPages: Pages.routes,
    );
  }
}
