import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';
import 'activity_details.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Etkinlikler")),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.only(left: 20, right: 40, top: 30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
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
            height: 200,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/Rectangle 53.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ActivityDetails()));
                    },
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 100,
                    child: Card(child: Center(child: Text("17:00"))),
                  )
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
