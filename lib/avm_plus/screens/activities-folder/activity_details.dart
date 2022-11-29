import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';

class ActivityDetails extends StatefulWidget {
  const ActivityDetails({Key? key}) : super(key: key);

  @override
  State<ActivityDetails> createState() => _ActivityDetailsState();
}

class _ActivityDetailsState extends State<ActivityDetails> {
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
                      child: Text("Rap Concert", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("hasdksjlksflsşdfdşlfdşsflkednflksdnffsedfdgdrgdfgedsfdsgddfasfsfasfdasfasasdasasfasf"),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Times", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
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
