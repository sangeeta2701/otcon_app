import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otcon/User/Screens/Login/google_signin.dart';
import 'package:otcon/welcom/welcome_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomePge(),
      ),
    );
  }
}
