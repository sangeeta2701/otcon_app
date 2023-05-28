import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/Convener/Home/convener_home_scree.dart';
import 'package:otcon/widgets/snackbar.dart';
// import 'package:otcon/Convener/Screens/Register/convener_register.dart';

import '../../../utils/constants.dart';
import '../Register/convener_register.dart';

class ConvenerLoginPage extends StatefulWidget {
  const ConvenerLoginPage({Key? key}) : super(key: key);

  @override
  State<ConvenerLoginPage> createState() => _ConvenerLoginPageState();
}

class _ConvenerLoginPageState extends State<ConvenerLoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
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
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {

                      if (value!.isEmpty) {
                                                                                              return "Please Enter email";
                                                                                            } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                                                                              return "Enter Correct email";
                                                                                            } else {
                                                                                              return null;
                                                                                            }
                      
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "This field is required";
                      }
                      if (value.trim().length < 5) {
                        return "Password must be at least 8 characters";
                      }
                      if (value.trim().length > 15) {
                        return "Password should not be more than 15 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          showInSnackbar(context, "Login Successful!!");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConvenerHomeScreen(),
                            ),
                          );
                        }else{
                          showInSnackbar(context, "Something went wrong!!");
                        }
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
                              builder: (context) => ConvenerRegisterPage(),
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
        ),
      ),
    );
  }
}
