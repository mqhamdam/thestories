import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    required this.body,
    Key? key,
  }) : super(key: key);
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: Dialog(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
        child: body,
      ),
    );
  }
}

class CustomAboutDialog extends StatelessWidget {
  const CustomAboutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: const AboutDialog(),
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog(
      {
      required this.title, 
      required this.body, 
      Key? key, 
      this.actions,})
      : super(key: key);
  final Widget title;
  final Widget body;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: AlertDialog(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
        title: title,
        content: body,
        actions: actions,
      ),
    );
  }
}
