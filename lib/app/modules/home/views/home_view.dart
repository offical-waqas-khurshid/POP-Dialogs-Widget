import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pop_up_dialogs/app/modules/home/views/pop_up_dialog.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  PopDialog.successDialog(context,
                      // title: "Waqas",
                      // content: "Khurshid Alaam",
                      // icon: Icon(Icons.delete),
                      // buttonTitle: "Done Success");
                  );
                },
                child: const Text("Success Dialog")),
          ],
        ),
      ),
    );
  }


}
