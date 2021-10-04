import 'package:bank_in_space/app/data/provider/auth_provider.dart';
import 'package:get/get.dart';

class DataController extends GetxController with StateMixin<dynamic>{

  @override
  void onInit() {
    super.onInit();
    Provider().getUser().then((value) {
      change(value, status: RxStatus.success());
    },onError: (error){
      change(null,status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}