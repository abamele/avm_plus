import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';

class CinemaDetails extends StatefulWidget {
  const CinemaDetails({Key? key}) : super(key: key);

  @override
  State<CinemaDetails> createState() => _CinemaDetailsState();
}

class _CinemaDetailsState extends State<CinemaDetails> {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      height: 200,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tür",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: blueColor,
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Dram-Bilim Kurgu",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.slow_motion_video),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Süre: 1s30dk",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: blueColor,
                                  minimumSize: Size(150, 40)),
                              onPressed: () {},
                              child: Text(
                                "Rezervasyon Yap",
                                style: TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 20),
                child: Text(
                  "Hobbit",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "ajsdskjfbdsklfbdsbgdslkfnls.fnjkedbfkdsbgvkdfgşldsfndkjsbdlsfnsşlfjsdjbfsdnflsd.fbkvhjvwsdjavdhavsdjk",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Text(
                      "Bugün",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    height: 2,
                    width: 170,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, minimumSize: Size(160, 40)),
                      child: Text(
                        "17:00",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0, bottom: 10),
                    child: Text(
                      "Bugün",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    height: 2,
                    width: 170,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, minimumSize: Size(160, 40)),
                      child: Text(
                        "Seans Bulunamadı",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(left: 10, bottom: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: blueColor,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Icon(Icons.chevron_left)),
                onTap: (){
                  print("Tıkla");
                },
              ),
              InkWell(
                child: Container(
                    margin: EdgeInsets.only(right: 10, bottom: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Icon(Icons.chevron_right)),
                onTap: (){},
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
