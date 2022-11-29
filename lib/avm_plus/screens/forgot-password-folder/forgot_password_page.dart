import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/appbar_painter_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
    rememberMe = newValue!;
    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coralColor,
      appBar: AppBar(
        toolbarHeight: 180.0,
        backgroundColor: coralColor,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "New Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Confirme Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: coralColor,
                  minimumSize: Size(310, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  //controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
                  Navigator.pushNamed(context, "/onboarding_page");
                },
                child: Container(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
