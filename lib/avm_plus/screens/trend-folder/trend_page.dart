import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';


class TrendPage extends StatefulWidget {
  const TrendPage({Key? key}) : super(key: key);

  @override
  State<TrendPage> createState() => _TrendPageState();
}

class _TrendPageState extends State<TrendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Trends")),
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
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 8.0,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Text(
                            'NIKE',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, bottom: 10),
                          child: Text(
                            'Nike Air Max',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 320,
                            child: ClipRect(
                                child: Image.asset(
                              "assets/Rectangle 73.png",
                              fit: BoxFit.cover,
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 15.0, bottom: 20),
                                child: Text('admin', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: FloatingActionButton.extended(
                                  heroTag: "1",
                                  elevation: 0.0,
                                  backgroundColor: Colors.black,
                                  label: Text('Visit'),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
