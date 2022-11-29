import 'package:avm_plus/avm_plus/screens/home-folder/home_page.dart';
import 'package:avm_plus/avm_plus/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/color.dart';
import '../constants/test2.dart';
import '../screens/cinema-folder/cinema_page.dart';
import '../screens/foods-folder/food_page.dart';


class BottomAppBarWidget extends StatelessWidget {
  BottomAppBarWidget({Key? key}) : super(key: key);

  final ValueNotifier<int> selectButton = ValueNotifier<int>(0);
  List text = [
    "Anasayfa",
    "Sinema",
    "Harita",
    "Yemek",
    "Profil",
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 20.0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          selectItemWidget(1, Icons.home_outlined, text[0]),
          selectItemWidget(2, FontAwesomeIcons.film, text[1]),
          selectItemWidget(3, FontAwesomeIcons.locationDot, text[2]),
          selectItemWidget(4, FontAwesomeIcons.f, text[3]),
          selectItemWidget(5, FontAwesomeIcons.user, text[4]),
        ],
      ),
    );
  }

  Widget selectItemWidget(
    int index,
    IconData icon,
    String txt,
  ) {
    return ValueListenableBuilder(
      valueListenable: selectButton,
      builder: (BuildContext context, int value, Widget? child) {
        return Container(
          child: Row(
            children: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        icon,
                        color: value == index ? greyColor : Colors.grey,
                        size: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        txt,
                        style: TextStyle(
                            color: value == index ? greyColor : Colors.grey),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  if (index == 1) {
                    selectButton.value = index;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()));
                  } else if (index == 2) {
                    selectButton.value = index;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CinemaPage()));
                  } else if (index == 3) {
                    selectButton.value = index;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Container()));
                  } else if (index == 4) {
                    selectButton.value = index;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodPage()));
                  } else if (index == 5) {
                    selectButton.value = index;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
