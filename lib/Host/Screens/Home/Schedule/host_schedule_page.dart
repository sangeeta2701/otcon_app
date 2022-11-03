import 'package:flutter/material.dart';

class HostSchedulePage extends StatefulWidget {
  const HostSchedulePage({Key? key}) : super(key: key);

  @override
  State<HostSchedulePage> createState() => _HostSchedulePageState();
}

class _HostSchedulePageState extends State<HostSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Schedule Page"),
      ),
    );
  }
}
