import 'package:bank_in_space/modules/home/presentation/components/recent_transaction.dart';
import 'package:flutter/material.dart';
import 'package:bank_in_space/modules/home/presentation/components/decorations.dart';
import 'package:bank_in_space/modules/home/presentation/components/personal_home_view.dart';

class PersonalHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: _buildAppNavBar(context),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                child: PersonalHomeView(),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnalyticsScreen()));
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: RecentTransaction(),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildAppNavBar(BuildContext context) => Row(
        children: <Widget>[
          _buildAppBarButton(context, Icons.arrow_back_ios),
          Spacer(),
          _buildAppBarButton(context, Icons.menu),
        ],
      );

  Container _buildAppBarButton(BuildContext context, IconData icon) =>
      Container(
        width: 40.0,
        height: 40.0,
        child: Icon(
          icon,
          color: Colors.purple,
        ),
        decoration: getBoxDecoration(context, borderRadius: 8.0),
      );
}
