import 'package:flutter/material.dart';

class PopDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double? elevation;
  final EdgeInsetsGeometry? contentPadding;
  final AlignmentGeometry? alignment;
  ShapeBorder? shape;
  final Color? iconColor;
  final Widget? icon;
  final MainAxisAlignment? actionsAlignment;
  EdgeInsetsGeometry? actionsPadding;
  TextStyle? contentTextStyle;
  EdgeInsetsGeometry? buttonPadding;
  EdgeInsetsGeometry? iconPadding;
  EdgeInsetsGeometry? titlePadding;
  final TextStyle? titleTextStyle;

  PopDialog(
      {Key? key,
      this.title,
      this.content,
      this.icon,
      this.actions,
      this.backgroundColor,
      this.actionsAlignment,
      this.actionsPadding,
      this.alignment,
      this.buttonPadding,
      this.contentPadding,
      this.contentTextStyle,
      this.elevation,
      this.iconColor,
      this.iconPadding,
      this.shape,
      this.titlePadding,
      this.titleTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
      contentPadding: contentPadding,
      backgroundColor: backgroundColor,
      elevation: elevation,
      alignment: alignment,
      shape: shape,
      iconColor: iconColor,
      icon: icon,
      actionsAlignment: actionsAlignment,
      actionsPadding: actionsPadding,
      contentTextStyle: contentTextStyle,
      buttonPadding: buttonPadding,
      iconPadding: iconPadding,
      titlePadding: titlePadding,
      titleTextStyle: titleTextStyle,
      actions: actions,
    );
  }

  /// Function for Success Pop_Up Dialog
  static void successDialog(
      BuildContext context, {
        String? title,
        Function? onTap,
        String? content,
        String? defaultButtonTitle,
        Widget? icon,
        List<Widget>? customActions,
      }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      List<Widget> actions = [];

      /// Add the default "Done" button if no custom actions are provided
      if (customActions == null || customActions.isEmpty) {
        actions.add(
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              if (onTap != null) {
                onTap();
              }
            },
            child: Text(defaultButtonTitle ?? "Done"),
          ),
        );
      } else {
        // Use the provided custom actions
        actions.addAll(customActions);
      }

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Align(alignment: Alignment.centerLeft, child: Text(title ?? "Success")),
            content: Text(content ?? "Successfully Delivered"),
            actions: actions,
            icon: icon ?? const Icon(Icons.check, color: Colors.green),
          );
        },
      );
    });
  }


/// Function For

}
