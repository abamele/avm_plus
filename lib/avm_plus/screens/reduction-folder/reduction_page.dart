import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';

class ReductionPage extends StatefulWidget {
  const ReductionPage({Key? key}) : super(key: key);

  @override
  State<ReductionPage> createState() => _ReductionPageState();
}

class _ReductionPageState extends State<ReductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("İndirimler")),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Mavi Jeans", style: TextStyle(fontSize: 17, color: blueColor),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("3 saat 27 dk"),
              ),
            ],
          ),
          Container(
              height: 180,
              child: Container(
                  margin: EdgeInsets.only(left: 15, right: 10),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/Rectangle 63.png",
                      fit: BoxFit.cover,
                    ),
                  ))),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Tavuk Dünyası", style: TextStyle(fontSize: 17, color: blueColor),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("3 saat 27 dk"),
              ),
            ],
          ),
          Container(
              height: 180,
              child: Container(
                  margin: EdgeInsets.only(left: 15, right: 10),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/k.png",
                      fit: BoxFit.cover,
                    ),
                  ))),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Burger King", style: TextStyle(fontSize: 17, color: blueColor),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("3 saat 27 dk"),
              ),
            ],
          ),
          Container(
              height: 180,
              child: Container(
                  margin: EdgeInsets.only(left: 15, right: 10),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/Rectangle 64.png",
                      fit: BoxFit.cover,
                    ),
                  ))),
        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
