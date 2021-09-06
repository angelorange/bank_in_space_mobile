import 'package:flutter/material.dart';
import 'package:bank_in_space/modules/home/presentation/pages/button-text-icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/jex.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/logo.png", fit: BoxFit.cover),
            Text(
              "DevinSpace Bank",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            ButtonTextIcon(
              color: Colors.purple,
              text: "Login",
              iconData: Icons.add,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            )
          ],
        ),
      ),
    );
  }
}
