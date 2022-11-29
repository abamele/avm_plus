import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/appbar_painter_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: coralColor,
      appBar: AppBar(
        toolbarHeight: 180.0,
        backgroundColor:  coralColor,
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
                "Sign Up",
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
                    hintText: "Password",
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

            Center(child: TextButton(child: Text("Forgot Password"), onPressed: (){
              Navigator.pushNamed(context, "/forgot_password");
            },),)
          ],
        ),
      ),
    );
  }
}
