import 'package:flutter/material.dart';

class ConvenerTrackingPage extends StatefulWidget {
  const ConvenerTrackingPage({Key? key}) : super(key: key);

  @override
  State<ConvenerTrackingPage> createState() => _ConvenerTrackingPageState();
}

class _ConvenerTrackingPageState extends State<ConvenerTrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Tracking"),
      ),
    );
  }
}
