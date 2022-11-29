import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController controller;
  int slideIndex = 0;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 12.0 : 8.0,
      width: isCurrentPage ? 12.0 : 8.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xFFF58D84) : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFF5F5F5),
          title: Container(
            alignment: Alignment.center,
            child: Text("Welcome", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
         margin: EdgeInsets.only(left: 20, right: 20),
          child: Text("dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRect(
          child:  Image.asset("assets/Image 2022.jpeg", fit: BoxFit.cover,)

        ),
        SizedBox(height: 40,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xFFF58D84), minimumSize: Size(290, 50)),
          onPressed: () {
            //controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
            Navigator.pushNamed(context, "/login");
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
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white, minimumSize: Size(290, 50)),
          onPressed: () {
            //controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
            Navigator.pushNamed(context, "/signup");
          },
          child: Container(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
        ),
      ],
    ));
  }
}
