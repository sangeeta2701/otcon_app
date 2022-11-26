import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/utils/constants.dart';

class DailySummaryPage extends StatefulWidget {
  const DailySummaryPage({Key? key}) : super(key: key);

  @override
  State<DailySummaryPage> createState() => _DailySummaryPageState();
}

class _DailySummaryPageState extends State<DailySummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appUiBlueColor,
        title: Text(
          "Daily Summary",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: appUiLightColor,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
