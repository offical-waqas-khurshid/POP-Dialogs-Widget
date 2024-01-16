import 'package:flutter/material.dart';

class PopDialog {
  /// Error Dialog that call alert dialog display fucntion
  static void errorDialog(
    BuildContext context, {
    String title = "Error",
    String description = "An error occurred",
    String positiveButtonText = "Ok",
    Function()? onPositiveTap,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Icon icon = const Icon(Icons.error, color: Colors.red);
      _displayDialog(context, title, description, icon, [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            if (onPositiveTap != null) {
              onPositiveTap();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(positiveButtonText),
          ),
        ),
      ]);
    });
  }

  /// Success Dialog that call alert dialog display function
  static void successDialog(
      BuildContext context, {
        String title = "Success",
        String description = "An Success occurred",
        String positiveButtonText = "Ok",
        Function()? onPositiveTap,
      }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Icon icon = const Icon(Icons.gpp_good_outlined, color: Colors.red);
      _displayDialog(context, title, description, icon, [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            if (onPositiveTap != null) {
              onPositiveTap();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(positiveButtonText),
          ),
        ),
      ]);
    });
  }

  /// Warning Dialog that call alert dialog display function
  static void warningDialog(
      BuildContext context, {
        String title = "Warning",
        String description = "An Warning occurred",
        String positiveButtonText = "Ok",
        String negativeButtonText = "Cancel",
        Function()? onPositiveTap,
        Function()? onNegativeTap,
      }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Icon icon = const Icon(Icons.warning, color: Colors.red);
      _displayDialog(context, title, description, icon, [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            if (onPositiveTap != null) {
              onPositiveTap();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(positiveButtonText),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            if (onNegativeTap != null) {
              onNegativeTap();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(negativeButtonText),
          ),
        ),
      ]);
    });
  }

  /// Warning Dialog that call alert dialog display function
  static void informationDialog(
      BuildContext context, {
        String title = "Information",
        String description = "An Information occurred",
        String positiveButtonText = "Ok",
        Function()? onPositiveTap,
        Function()? onNegativeTap,
      }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Icon icon = const Icon(Icons.info_outline_rounded, color: Colors.red);
      _displayDialog(context, title, description, icon, [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            if (onPositiveTap != null) {
              onPositiveTap();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(positiveButtonText),
          ),
        ),
      ]);
    });
  }

  /// View Function that Take multiple parameters
  static void _displayDialog(BuildContext context, String title,
      String description, Widget icon, List<Widget>? actions) {
    showDialog(
      barrierDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Align(alignment: Alignment.centerLeft, child: Text(title)),
          content: Text(description),
          actionsAlignment: MainAxisAlignment.center,
          actions: actions,
          icon: icon,
        );
      },
    );
  }
}
