import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/User/Screens/Home%20Page/home_screen.dart';
import 'package:otcon/User/Screens/Register/register_page.dart';
import 'package:otcon/widgets/custom_text_field.dart';

import '../../../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
        ),
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
                fontSize: 30,
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
            SizedBox(
              height: 10,
            ),
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
    );
  }
}
