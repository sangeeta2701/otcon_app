// import 'package:flutter/material.dart';
// import 'package:otcon/User/Screens/Home%20Page/home_screen.dart';
// import 'package:otcon/User/Screens/Login/login_page.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (snapshot.hasData) {
//               return HomeScreen();
//             } else if (snapshot.hasError) {
//               return Center(
//                 child: Text("Something Went Wrong"),
//               );
//             } else {
//               return LoginPage();
//             }
//           }),
//     );
//   }
// }
