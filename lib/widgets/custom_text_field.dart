import 'package:flutter/material.dart';
import 'package:otcon/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isObscure;
  final TextInputType type;
  final IconData icon;
  // final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.isObscure = false,
    required this.type,
    required this.icon,
    // required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: appUigreyColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              // controller: controller,
              keyboardType: type,
              obscureText: isObscure,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                prefixIcon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
