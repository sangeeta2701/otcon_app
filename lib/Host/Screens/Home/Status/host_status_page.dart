import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/Host/Screens/Home/Schedule/Presentation/ccn_page.dart';
import 'package:otcon/Host/Screens/Home/Schedule/Presentation/reps_page.dart';
import 'package:otcon/Host/Screens/Home/Schedule/Presentation/track_presentation_page.dart';

import '../../../../utils/constants.dart';

class HostStatusPage extends StatefulWidget {
  const HostStatusPage({Key? key}) : super(key: key);

  @override
  State<HostStatusPage> createState() => _HostStatusPageState();
}

class _HostStatusPageState extends State<HostStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Presentation Status",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: appUiDarkColor,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Tracks",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: appUiDarkColor,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrackPresentationPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: appUiBlueColor,
                    ),
                    child: Center(
                      child: Text(
                        "Emerging And Intelligent Computing",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CCNPresentationPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: appUiBlueColor,
                    ),
                    child: Center(
                      child: Text(
                        "Communication Control And Networking",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => REPSPresentationPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: appUiBlueColor,
                    ),
                    child: Center(
                      child: Text(
                        "Renewable Energy And Power System",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: appUiBlueColor,
                  ),
                  child: Center(
                    child: Text(
                      "Bio Informatics And Health Care",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: appUiLightColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: appUiBlueColor,
                  ),
                  child: Center(
                    child: Text(
                      "IOT Automation And Manufacturing",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: appUiLightColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: appUiBlueColor,
                  ),
                  child: Center(
                    child: Text(
                      "Signal And Image Processing",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: appUiLightColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: appUiBlueColor,
                  ),
                  child: Center(
                    child: Text(
                      "Cyber Physical System And Metaverse",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: appUiLightColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: appUiBlueColor,
                  ),
                  child: Center(
                    child: Text(
                      "Education Enviornment And Economics",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: appUiLightColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
