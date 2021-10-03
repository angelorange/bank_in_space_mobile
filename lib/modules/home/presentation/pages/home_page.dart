import 'package:bank_in_space/modules/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

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
            Center(
              child: ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontFamily: 'Righteous', fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    onPrimary: Colors.white,
                    fixedSize: Size(250, 70),
                    elevation: 5),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return LoginPage();
                  }));
                },
              ),
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
