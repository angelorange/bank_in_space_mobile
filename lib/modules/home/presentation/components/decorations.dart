import 'package:flutter/material.dart';
import 'package:bank_in_space/modules/home/presentation/components/hex_color.dart';

BoxDecoration getBoxDecoration(BuildContext context,
        {isPressed = false, borderRadius = 30.0, blurRadius = 6.0}) =>
    BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: isPressed ? HexColor('#D7E6F4') : Theme.of(context).primaryColor,
    );
