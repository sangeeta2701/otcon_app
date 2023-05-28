import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:otcon/User/Screens/Login/login_page.dart';
import 'package:otcon/widgets/custom_text_field.dart';

import '../../../utils/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  XFile? _image;

  getImagefromGallery() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
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
                    hintText: "Affliation",
                    type: TextInputType.text,
                    icon: Icons.school_outlined),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                    hintText: "Mode",
                    type: TextInputType.text,
                    icon: Icons.vpn_lock),
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
                  hintText: "Amount",
                  type: TextInputType.number,
                  icon: Icons.money,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Upload payment receipt",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {
                            getImagefromGallery();
                          },
                          icon: Icon(
                            Icons.create_new_folder_outlined,
                            size: 30,
                            color: Colors.black45,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: SizedBox(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: appUigreyColor, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: _image == null
                          ? Center(child: Text("No image is picked"))
                          : Image(
                              height: 80,
                              width: double.infinity,
                              image: FileImage(
                                File(_image!.path),
                              ),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
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
                              builder: (context) => LoginPage(),
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
    );
  }
}
