import 'package:get/get.dart';

class Provider extends GetConnect {
  Future<dynamic> getUser() async {
    final response = await get(
        'https://6159ff0a601e6f0017e5a380.mockapi.io/api/v1/users');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}
