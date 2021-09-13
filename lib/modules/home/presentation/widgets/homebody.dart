import 'package:bank_in_space/modules/home/presentation/widgets/profile.dart';
import 'package:bank_in_space/modules/home/presentation/widgets/tiles.dart';
import 'package:flutter/material.dart';
import 'package:bank_in_space/modules/utils/utils.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              'Bank in Space',
              style: CHeadingStyle,
            ),
            ProfilePic(),
            Text(
              "Hello Jev",
              style: CHeadingStyle,
            ),
            HomeTiles(option: 'Oc: \$200')
          ],
        ),
      ),
    );
  }
}
