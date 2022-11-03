import 'package:flutter/material.dart';

class HostStatusPage extends StatefulWidget {
  const HostStatusPage({Key? key}) : super(key: key);

  @override
  State<HostStatusPage> createState() => _HostStatusPageState();
}

class _HostStatusPageState extends State<HostStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Status Page"),
      ),
    );
  }
}
