import 'package:bank_in_space/app/data/controller/data_controller.dart';
import 'package:get/get.dart';

class DataBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }

}