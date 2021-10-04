
import 'package:bank_in_space/app/data/bindings/data_binding.dart';
import 'package:bank_in_space/modules/home/presentation/pages/personal_home_page.dart';
import 'package:bank_in_space/modules/home/presentation/pages/wallet.dart';
import 'package:bank_in_space/modules/home/presentation/widgets/homebody.dart';
import 'package:bank_in_space/modules/home/presentation/widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bank_in_space/app/routes/pages.dart';
import 'package:bank_in_space/app/routes/routes.dart';

void main() {
  DataBinding().dependencies();
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
        primarySwatch: Colors.purple,
        accentColor: Colors.white,
        canvasColor: Colors.transparent,
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
