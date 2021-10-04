import 'package:flutter/material.dart';
import 'package:bank_in_space/app/data/controller/data_controller.dart';
import 'package:bank_in_space/app/data/bindings/data_binding.dart';
import 'package:get/get.dart';

class Data extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Network Call test'),
      ),
      body: controller.obx(
          (data) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(data['picture']),
                ),
                SizedBox(height: 20.0,),
                Text(data['name']),
                SizedBox(height: 10.0,),
                Text(data['email']),
                SizedBox(height: 10.0,),
                Text(data['company']),

              ],
            ),
          )
      ),
    );
  }
}