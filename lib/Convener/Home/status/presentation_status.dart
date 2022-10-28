import 'package:flutter/material.dart';

class PresentationStatusPage extends StatefulWidget {
  const PresentationStatusPage({Key? key}) : super(key: key);

  @override
  State<PresentationStatusPage> createState() => _PresentationStatusPageState();
}

class _PresentationStatusPageState extends State<PresentationStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Status"),
      ),
    );
  }
}
