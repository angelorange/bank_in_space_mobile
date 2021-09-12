import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset("assets/logo.png"),
      ),
    );
  }
}
