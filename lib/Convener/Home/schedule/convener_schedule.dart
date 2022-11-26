import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/Convener/Home/Profile/convener_profile_page.dart';
import 'package:otcon/Convener/Home/Summary/daily_summary_page.dart';
import 'package:otcon/Convener/Presentation/presentation_catagory_page.dart';
import 'package:otcon/utils/constants.dart';

class ConvenerSchedulePage extends StatefulWidget {
  const ConvenerSchedulePage({Key? key}) : super(key: key);

  @override
  State<ConvenerSchedulePage> createState() => _ConvenerSchedulePageState();
}

class _ConvenerSchedulePageState extends State<ConvenerSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      appBar: AppBar(
        backgroundColor: appUiLightColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConvenerProfilePage(),
                ),
              );
            },
            icon: Icon(
              Icons.person,
              color: appUiBlueColor,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DailySummaryPage(),
                ),
              );
            },
            icon: Icon(
              Icons.receipt,
              color: appUiBlueColor,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today's Schedule",
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
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: appUiBlueColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Inauguration Ceremony",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "10:00 A.M.",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: appUiLightColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PresentationCategoryPage(),
                  ),
                );
              },
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: appUiBlueColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Presentation",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: appUiLightColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "11:00 A.M.-1:00 P.M.",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: appUiLightColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: appUiBlueColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lunch Break",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1:00 P.M.-2:00 P.M.",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: appUiLightColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
