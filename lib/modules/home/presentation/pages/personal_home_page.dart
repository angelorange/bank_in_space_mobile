import 'package:bank_in_space/modules/home/presentation/widgets/gradient.dart';
import 'package:bank_in_space/modules/home/presentation/widgets/homebody.dart';
import 'package:flutter/material.dart';

class PersonalHomePage extends StatelessWidget {
  const PersonalHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: boxgrad),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: HomeBody(),
      ),
    );
  }
}
