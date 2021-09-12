import 'package:flutter/material.dart';
import 'package:bank_in_space/modules/utils/utils.dart';

class HomeTiles extends StatelessWidget {
  const HomeTiles({Key? key, required this.option}) : super(key: key);
  final String option;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.deepPurple, blurRadius: 20),
          ],
          borderRadius: BorderRadius.circular(30),
          color: Colors.purple,
        ),
        child: ListTile(
          title: Center(
            child: Text(
              option,
              style: CRegularHeadStyle,
            ),
          ),
        ),
      ),
    );
  }
}
