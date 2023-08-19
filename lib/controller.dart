import 'package:flutter_fetch/fetch.dart';
import 'package:flutter_fetch/model.dart';
import 'package:get/get.dart';

class Data extends GetxController {
  final data = Rx<User?>(null);

  void fetchData() async {
    try {
      User fetchedUser = await Fetch().fetchData();
      data.value = fetchedUser;
    } catch (e) {
      print("Veri çekilirken bir hata oluştu: $e");
    }
  }
}
