import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/appbar_painter_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;
  bool kvkkIsChecked = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
    rememberMe = newValue!;
    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

  void _checkKvkk(bool? newValue) => setState(() {
    kvkkIsChecked = newValue!;
    if (kvkkIsChecked) {
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
        title: ClipRect(


        ),
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
              margin: EdgeInsets.only(top: 60, left: 20),
              child: Text(
                "Login",
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
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: rememberMe,
                                  onChanged: _onRememberMeChanged
                              ),
                              Text("Remamber Me")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 20),
                      child: TextButton(
                        child: Text("Forgot Password"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/forgot_password");
                        },
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Checkbox(
                          value: kvkkIsChecked,
                          onChanged: _checkKvkk
                      ),
                      Text("Accept KVKK")
                    ],
                  ),
                ),
              ],
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
                  Navigator.pushNamed(context, "/home");
                },
                child: Container(
                  child: Text(
                    "Login",
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
