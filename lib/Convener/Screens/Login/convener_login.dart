import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/Convener/Home/convener_home_scree.dart';
import 'package:otcon/Convener/Screens/Register/convener_register.dart';

import '../../../utils/constants.dart';
import '../../../widgets/custom_text_field.dart';

class ConvenerLoginPage extends StatefulWidget {
  const ConvenerLoginPage({Key? key}) : super(key: key);

  @override
  State<ConvenerLoginPage> createState() => _ConvenerLoginPageState();
}

class _ConvenerLoginPageState extends State<ConvenerLoginPage> {
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Log In!!",
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
              CustomTextField(
                hintText: "Email",
                type: TextInputType.emailAddress,
                icon: Icons.email_outlined,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "Password",
                type: TextInputType.visiblePassword,
                isObscure: true,
                icon: Icons.lock_open_outlined,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConvenerHomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: appUiBlueColor,
                      ),
                      child: Center(
                        child: Text(
                          "Login",
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Don't have an account ? ",
              //       style: GoogleFonts.poppins(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w500,
              //         color: Colors.black45,
              //       ),
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => ConvenerRegisterPage(),
              //           ),
              //         );
              //       },
              //       child: Text(
              //         "Register",
              //         style: GoogleFonts.poppins(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w500,
              //           color: appUiBlueColor,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
