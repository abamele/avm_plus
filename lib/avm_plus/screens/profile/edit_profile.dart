import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: coralColor,
        elevation: 0.0,
        title: Center(child: Text("Profilim")),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: [
         Container(
           margin: EdgeInsets.only(top: 30),
           alignment: Alignment.center,
           child: Text("Şifre değiştir", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
         ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                  hintText: "Yeni Şifre",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(16)
            ),
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Yeni Şifre Tekrar",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
          SizedBox(height: 30,),
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

              },
              child: Container(
                child: Text(
                  "Kaydet",
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
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
