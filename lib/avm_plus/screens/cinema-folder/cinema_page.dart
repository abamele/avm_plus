import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';
import 'cinema_details.dart';

class CinemaPage extends StatefulWidget {
  const CinemaPage({Key? key}) : super(key: key);

  @override
  State<CinemaPage> createState() => _CinemaPageState();
}

class _CinemaPageState extends State<CinemaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Sinemalar")),
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
            height: 300,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [

                      GestureDetector(
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
                                  builder: (context) => CinemaDetails()));
                        },
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Text("Hobbit", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        child: Text("Bugün"),
                      ),
                      Divider(color: Colors.black, thickness:1.0, ),
                    ],
                  );
                }),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),

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
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
