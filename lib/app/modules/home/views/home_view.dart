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
                  showDialog(
                    context: context,
                    builder: (context) {
                      return PopDialog(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Warning'),
                            Icon(Icons.delete, color: Colors.red),
                          ],
                        ),
                        content:
                            const Text("This Transaction successfully Transfer"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Done"))
                        ],
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                      );
                    },
                  );
                },
                child: const Text("Success Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return PopDialog(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Success'),
                            Icon(Icons.delete, color: Colors.red),
                          ],
                        ),
                        content:
                        const Text("This Transaction successfully Transfer"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Done"))
                        ],
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                      );
                    },
                  );
                },
                child: const Text("Success Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return PopDialog(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Warning'),
                            Icon(Icons.delete, color: Colors.red),
                          ],
                        ),
                        content:
                        const Text("This Transaction successfully Transfer"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Done"))
                        ],
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                      );
                    },
                  );
                },
                child: const Text("Warning Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return PopDialog(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Error'),
                            Icon(Icons.delete, color: Colors.red),
                          ],
                        ),
                        content:
                        const Text("This Transaction successfully Transfer"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Done"))
                        ],
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                      );
                    },
                  );
                },
                child: const Text("Error Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return PopDialog(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Information'),
                            Icon(Icons.delete, color: Colors.red),
                          ],
                        ),
                        content:
                        const Text("This Transaction successfully Transfer"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Done"))
                        ],
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                      );
                    },
                  );
                },
                child: const Text("Information Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return PopDialog(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Alert'),
                            Icon(Icons.delete, color: Colors.red),
                          ],
                        ),
                        content:
                        const Text("This Transaction successfully Transfer"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Done"))
                        ],
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                      );
                    },
                  );
                },
                child: const Text("Alert")),
          ],
        ),
      ),
    );
  }
}
