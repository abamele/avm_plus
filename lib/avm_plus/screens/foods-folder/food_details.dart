import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Foods")),
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
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/beautiful-rain-forest.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    "Burger King",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(FontAwesomeIcons.locationDot),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(FontAwesomeIcons.phone),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Menü",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            elevation: 0.0,
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 200,
                    child: ListTile(
                  title: Text(
                    "Whopper Menü",
                    style: TextStyle(fontSize: 17),
                  ),
                      subtitle: Text("Fiyat: 49.99 TL"),
                )),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 15, top: 15, bottom: 15),
                  child: Container(
                    width: 80,
                    child: ClipRRect(

                      child: Image.asset("assets/indir.jfif"),
                    ),
                  ),
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
