import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:otcon/Convener/Screens/Login/convener_login.dart';
import 'package:otcon/User/Screens/Login/login_page.dart';
import 'package:otcon/utils/constants.dart';

import '../Host/Screens/Login/host_login_page.dart';

class WelcomePge extends StatefulWidget {
  const WelcomePge({Key? key}) : super(key: key);

  @override
  State<WelcomePge> createState() => _WelcomePgeState();
}

class _WelcomePgeState extends State<WelcomePge> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 9), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ConvenerLoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome To",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: appUiDarkColor,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "OTCON 2.0",
              style: GoogleFonts.poppins(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: appUiBlueColor,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Organized By",
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: appUigreyColor,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/opju.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Sponsored By",
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: appUigreyColor,
                decoration: TextDecoration.none,
              ),
            ),
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/ieee.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            LoadingAnimationWidget.staggeredDotsWave(
                color: appUiOrangekColor, size: 40),
          ]),
    );
  }
}
