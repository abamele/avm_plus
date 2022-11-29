import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';


class AnkamallPage extends StatefulWidget {
  const AnkamallPage({Key? key}) : super(key: key);

  @override
  State<AnkamallPage> createState() => _AnkamallPageState();
}

class _AnkamallPageState extends State<AnkamallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("ANKAmall")),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home_outlined),
                Icon(Icons.home_outlined),
                Icon(Icons.home_outlined),
                Icon(Icons.home_outlined),
              ],
            ),
          ),
          Container(
            child: Image.asset("assets/Rectangle 74.png"),
          ),
          Container(
              height: 80,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Cepa",
                        style: TextStyle(fontSize: 17),
                      ),
                    );
                  })),
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
          SizedBox(
            height: 20,
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
