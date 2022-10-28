import 'package:flutter/material.dart';

class ConvenerNotificationPage extends StatefulWidget {
  const ConvenerNotificationPage({Key? key}) : super(key: key);

  @override
  State<ConvenerNotificationPage> createState() =>
      _ConvenerNotificationPageState();
}

class _ConvenerNotificationPageState extends State<ConvenerNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Notification"),
      ),
    );
  }
}
