import 'package:flutter/material.dart';

Future<T?> showCustomDialog<T>(
  BuildContext context, {
  required Widget child,
}) async {
  return showDialog<T>(
    context: context,
    // backgroundColor: Colors.transparent,
    // constraints: BoxConstraints(
    //   maxHeight: context.height * 0.95,
    //   minHeight: context.height * 0.4,
    // ),
    // isDismissible: true,
    // isScrollControlled: true,
    // enableDrag: true,
    // elevation: 0,
    builder: (context) => child,
  );
}
