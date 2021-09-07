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
              image: AssetImage("assets/jex.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Image.asset("assets/logo.png",
                fit: BoxFit.cover, height: 400, width: 400),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(3.0),
                width: 60,
                height: 80,
                child: Text(
                  'Bem Vindo ao DevInSpace Bank!',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Righteous',
                      fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(3.0),
                width: 60,
                height: 80,
                child: Text(
                  'O seu Bank perto de você.',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Righteous',
                      fontSize: 30),
                ),
              ),
            ),
            ButtonText(
              color: Colors.purple,
              text: "Login",
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
