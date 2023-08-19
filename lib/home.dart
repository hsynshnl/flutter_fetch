import 'package:flutter/material.dart';
import 'package:flutter_fetch/controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.put(Data());

    void handleClick() {
      user.fetchData();
      print(user.data.value?.name);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: handleClick,
        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green), elevation: MaterialStatePropertyAll(0)),
        child: const Text("TIKLA"),
      )),
    );
  }
}
