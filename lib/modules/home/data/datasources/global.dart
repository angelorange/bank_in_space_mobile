import 'package:flutter/material.dart';

class MyColors {
  static Color green = Color(0xFF4CAF50),
      darkPurple = Color(0xFF6A1B9A),
      lighterBlue = Color(0xff4169d8),
      red = Color(0xfffa9d85);
}

class User {
  static String fullname = "jesus gau",
      profilePicture =
          "https://cdn.pixabay.com/photo/2019/11/19/21/44/animal-4638598_960_720.jpg";
}

class DestinationModel {
  final String placeName, imageUrl, date, hotelName;
  DestinationModel(
      {required this.placeName,
      required this.imageUrl,
      required this.date,
      required this.hotelName});
}

final List<DestinationModel> destinationsList = [
  DestinationModel(
    date: "22 Nov, 2019",
    hotelName: "InterContinental",
    imageUrl:
        "https://cdn.pixabay.com/photo/2014/09/11/18/23/london-441853_960_720.jpg",
    placeName: "London",
  )
];
