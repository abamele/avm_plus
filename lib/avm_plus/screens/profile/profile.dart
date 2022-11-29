import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../widgets/bottom_appBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue!;
        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: coralColor,
        elevation: 0.0,
        title: Center(child: Text("Profilim")),
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(top: 40, left: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("assets/beautiful-rain-forest.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            "Ad Soyad",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Email"),
                        ),
                      )
                    ],
                  )),
              onTap: (){
                Navigator.pushNamed(context, "/profile_details");
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
                child: Text(
              "Favori AVM'ler",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    child: ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/beautiful-rain-forest.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/beautiful-rain-forest.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/beautiful-rain-forest.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Favori Ürünler",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/beautiful-rain-forest.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/beautiful-rain-forest.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/beautiful-rain-forest.jpg"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
