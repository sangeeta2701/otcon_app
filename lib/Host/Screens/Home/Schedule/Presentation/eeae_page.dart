import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/constants.dart';

class EEAEPresentationPage extends StatefulWidget {
  const EEAEPresentationPage({Key? key}) : super(key: key);

  @override
  State<EEAEPresentationPage> createState() => _EEAEPresentationPageState();
}

class _EEAEPresentationPageState extends State<EEAEPresentationPage> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

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
                "Education Enviornment And Economics",
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
                              color: val1 == true
                                  ? appUiBlueColor
                                  : appUigreyColor,
                            ),
                            child: Center(
                              child: Text(
                                "Presentation 1",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: val1 == true
                                      ? appUiLightColor
                                      : appUiDarkColor,
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
                              color: val2 == true
                                  ? appUiBlueColor
                                  : appUigreyColor,
                            ),
                            child: Center(
                              child: Text(
                                "Presentation 2",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: val2 == true
                                      ? appUiLightColor
                                      : appUiDarkColor,
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
                              color: val3 == true
                                  ? appUiBlueColor
                                  : appUigreyColor,
                            ),
                            child: Center(
                              child: Text(
                                "Presentation 3",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: val3 == true
                                      ? appUiLightColor
                                      : appUiDarkColor,
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
                          Checkbox(
                              activeColor: appUiBlueColor,
                              value: this.val1,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.val1 = value!;
                                });
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Checkbox(
                              activeColor: appUiBlueColor,
                              value: this.val2,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.val2 = value!;
                                });
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Checkbox(
                              activeColor: appUiBlueColor,
                              value: this.val3,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.val3 = value!;
                                });
                              }),
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
