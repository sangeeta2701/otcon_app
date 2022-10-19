import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);
  
  get appUiDarkColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Column(
        children: [
          Text("Notifications",
            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: appUiDarkColor,
                              ),),

            SizedBox(height: 30,),
            
        ],
      ),),
    );
  }
}
