import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/User/Screens/Home%20Page/home_screen.dart';
// import 'package:otcon/User/Screens/Login/google_signin.dart';
import 'package:otcon/User/Screens/Register/register_page.dart';
import 'package:otcon/widgets/custom_text_field.dart';
// import 'package:provider/provider.dart';

import '../../../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                hintText: "Paper Id",
                type: TextInputType.emailAddress,
                icon: Icons.article_outlined,
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
                        builder: (context) => HomeScreen(),
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
              // SizedBox(
              //   height: 5,
              // ),
              // Text(
              //   "OR",
              //   style: GoogleFonts.poppins(
              //     fontSize: 18,
              //     fontWeight: FontWeight.w500,
              //     color: Colors.black45,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
              //   child: GestureDetector(
              //     behavior: HitTestBehavior.translucent,
              //     onTap: () {
              //       final provider = Provider.of<GoogleSignInProvider>(context,
              //           listen: false);
              //       provider.googleLogin();
              //     },
              //     child: Container(
              //         height: 50,
              //         width: double.infinity,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           color: appUiLightColor,
              //         ),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Image(
              //               height: 35,
              //               width: 35,
              //               image: AssetImage("assets/google.png"),
              //             ),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Text(
              //               "Sign In  with Google",
              //               style: GoogleFonts.poppins(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.w500,
              //                 color: appUiDarkColor,
              //               ),
              //             ),
              //           ],
              //         )),
              //   ),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ? ",
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
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: appUiBlueColor,
                      ),
                    ),
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
