import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/Convener/Screens/Login/convener_login.dart';

import '../../../utils/constants.dart';
import '../../../widgets/custom_text_field.dart';

class ConvenerRegisterPage extends StatefulWidget {
  const ConvenerRegisterPage({Key? key}) : super(key: key);

  @override
  State<ConvenerRegisterPage> createState() => _ConvenerRegisterPageState();
}

class _ConvenerRegisterPageState extends State<ConvenerRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.png"), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0,left: 20,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Register !!",
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
                  CustomTextField(
                      hintText: "Full Name",
                      type: TextInputType.name,
                      icon: Icons.person_outline_outlined),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                      hintText: "Email",
                      type: TextInputType.emailAddress,
                      icon: Icons.email_outlined),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    hintText: "Contact Number",
                    type: TextInputType.number,
                    icon: Icons.call_outlined,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    hintText: "Password",
                    type: TextInputType.text,
                    icon: Icons.lock_open_outlined,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
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
                            color: appUiBlueColor,
                          ),
                          child: Center(
                            child: Text(
                              "Register",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: appUiLightColor,
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ? ",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ConvenerLoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: appUiBlueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
