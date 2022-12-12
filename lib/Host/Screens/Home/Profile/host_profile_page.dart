import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otcon/Host/Screens/Login/host_login_page.dart';

import '../../../../utils/constants.dart';
import '../../../../widgets/custom_text_field.dart';

class HostProfilePage extends StatefulWidget {
  const HostProfilePage({Key? key}) : super(key: key);

  @override
  State<HostProfilePage> createState() => _HostProfilePageState();
}

class _HostProfilePageState extends State<HostProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appUiLightColor,
        appBar: AppBar(
          backgroundColor: appUiLightColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                // Navigator.pop(context);
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HostLoginPage(),
                    ),
                  );
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
                CircleAvatar(
                  backgroundColor: appUigreyColor,
                  radius: 80,
                  child: Center(
                      child: Icon(
                    Icons.person,
                    size: 50,
                  )),
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
                    hintText: "Post",
                    type: TextInputType.text,
                    icon: Icons.article_outlined),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                    hintText: "Department",
                    type: TextInputType.text,
                    icon: Icons.article_outlined),
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
      ),
    );
  }
}
