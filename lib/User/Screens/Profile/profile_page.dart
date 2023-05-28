import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:otcon/User/Screens/Login/login_page.dart';
import 'package:otcon/utils/constants.dart';
import 'package:otcon/widgets/custom_text_field.dart';
import 'package:otcon/widgets/snackbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  setProfilePic() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text(
                    "Choose existing photo",
                    style: TextStyle(fontSize: 16),
                  ),
                  minVerticalPadding: 0,
                  dense: true,
                  onTap: () {
                    Navigator.pop(context);
                    imagePickerGallery();
                  },
                ),
                ListTile(
                  title:
                      const Text("Take photo", style: TextStyle(fontSize: 16)),
                  minVerticalPadding: 0,
                  dense: true,
                  onTap: () {
                    Navigator.pop(context);
                    imagePickerCamera();
                  },
                ),
              ],
            ),
          );
        });
  }

  File? _image;
  final imagePick = ImagePicker();
  Future imagePickerGallery() async {
    final pick = await imagePick.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pick != null) {
        _image = File(pick.path);
        print("SANG: " + pick.path);
      } else {
        showInSnackbar(
          context,
          "No file selected",
        );
      }
    });
  }

  Future imagePickerCamera() async {
    final pick = await imagePick.pickImage(source: ImageSource.camera);
    setState(() {
      if (pick != null) {
        _image = File(pick.path);
        print("SANG: " + pick.path);
      } else {
        showInSnackbar(
          context,
          "No file selected",
        );
      }
    });
  }

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
              color: appUiDarkColor,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Row(
                children: [
                  Text(
                    "Logout",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: appUiBlueColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.logout,
                    color: appUiBlueColor,
                    size: 25,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 40.0, left: 20, right: 20.0, bottom: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setProfilePic();
                },
                child: _image == null
                    ? CircleAvatar(
                        backgroundColor: appUigreyColor,
                        radius: 60,
                        child: Center(
                            child: Icon(
                          Icons.person,
                          size: 50,
                        )),
                      )
                    : Container(
                        height: 130,
                        width: 140,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: appUigreyColor,
                            image: DecorationImage(
                                image: FileImage(_image!), fit: BoxFit.cover)),
                        // child: Image.file(_image!,fit: BoxFit.cover,),
                      ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                  hintText: "Name",
                  type: TextInputType.text,
                  icon: Icons.person_outline),
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
                  icon: Icons.call_outlined),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                  hintText: "Paper ID",
                  type: TextInputType.text,
                  icon: Icons.article_outlined),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                  hintText: "Paper Title",
                  type: TextInputType.text,
                  icon: Icons.article_outlined),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                  hintText: "Affiliation",
                  type: TextInputType.text,
                  icon: Icons.school_outlined),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => HomeScreen(),
                    //   ),
                    // );
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
                          "Save Changes",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: appUiLightColor,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
