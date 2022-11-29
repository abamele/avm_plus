import 'package:avm_plus/avm_plus/constants/tests-folder/same_variable_test.dart';
import 'package:avm_plus/avm_plus/constants/tests-folder/sequence_test.dart';
import 'package:avm_plus/avm_plus/constants/tests-folder/staggered_anim_test.dart';
import 'package:flutter/material.dart';


class HomePageTest extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePageTest> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Examples"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new ElevatedButton(onPressed: (){Navigator.pushNamed(context, 'sequence');}, child: new Text("Sequence"),),
              new ElevatedButton(onPressed: (){Navigator.pushNamed(context, 'StaggeredAnimationReplication');}, child: new Text("StaggeredAnimationReplication"),),
              new ElevatedButton(onPressed: (){Navigator.pushNamed(context, 'SameVariableAnimationPage');}, child: new Text("SameVariableAnimationPage"),),
            ],
          ),
        )
    );
  }
}