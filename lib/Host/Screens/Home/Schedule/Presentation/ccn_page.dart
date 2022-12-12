import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/constants.dart';

class CCNPresentationPage extends StatefulWidget {
  const CCNPresentationPage({Key? key}) : super(key: key);

  @override
  State<CCNPresentationPage> createState() => _CCNPresentationPageState();
}

class _CCNPresentationPageState extends State<CCNPresentationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      appBar: AppBar(
        backgroundColor: appUiLightColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: appUiBlueColor,
            size: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                "Communication Control And Networking",
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Presentation",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: appUiDarkColor,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appUiBlueColor,
                            ),
                            child: Center(
                              child: Text(
                                "Presentation 1",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
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
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appUigreyColor,
                            ),
                            child: Center(
                              child: Text(
                                "Presentation 2",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: appUiDarkColor,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appUigreyColor,
                            ),
                            child: Center(
                              child: Text(
                                "Presentation 3",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: appUiDarkColor,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Completed",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: appUiDarkColor,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 45,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appUigreyColor,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.done,
                                color: appUiDarkColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 45,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appUigreyColor,
                            ),
                            // child: Center(
                            //   child: Icon(
                            //     Icons.done,
                            //     color: appUiDarkColor,
                            //   ),
                            // ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 45,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appUigreyColor,
                            ),
                            // child: Center(
                            //   child: Icon(
                            //     Icons.done,
                            //     color: appUiDarkColor,
                            //   ),
                            // ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
