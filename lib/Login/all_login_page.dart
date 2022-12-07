import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/Host/Screens/Login/host_login_page.dart';

import '../Convener/Screens/Login/convener_login.dart';
import '../User/Screens/Login/login_page.dart';
import '../utils/constants.dart';

class AllLoginPage extends StatefulWidget {
  const AllLoginPage({Key? key}) : super(key: key);

  @override
  State<AllLoginPage> createState() => _AllLoginPageState();
}

class _AllLoginPageState extends State<AllLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                }),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appUiBlueColor,
                    ),
                    child: Center(
                      child: Text(
                        "Login as User",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConvenerLoginPage(),
                    ),
                  );
                }),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appUiOrangekColor,
                    ),
                    child: Center(
                      child: Text(
                        "Login as Convener",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HostLoginPage(),
                    ),
                  );
                }),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appUiBlueColor,
                    ),
                    child: Center(
                      child: Text(
                        "Login as Host",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appUiLightColor,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
