import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';

class ConcertPage extends StatefulWidget {
  const ConcertPage({Key? key}) : super(key: key);

  @override
  State<ConcertPage> createState() => _ConcertPageState();
}

class _ConcertPageState extends State<ConcertPage> {
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
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, bottom: 10, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text("Cepa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  ),
                  Row(
                    children: [
                      Container(
                          height: 170,
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
                              ))),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(160, 40)
                                ),
                                child: Text("Şehinşah", style: TextStyle(color: Colors.grey),),
                                onPressed: (){},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: Size(160, 40)
                                ),
                                child: Text("17:00", style: TextStyle(color: Colors.grey)),
                                onPressed: (){},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: Size(160, 40)
                                ),
                                child: Text("Rezervasyon", style: TextStyle(color: Colors.grey)),
                                onPressed: (){},
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              );
            }
          ),

        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
