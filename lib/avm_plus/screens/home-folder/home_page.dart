
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

import '../../widgets/bottom_appBar.dart';
import '../ankamall-folder/ankamall_page.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// final ZoomDrawerController z = ZoomDrawerController();
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ZoomDrawer(
//       controller: z,
//       borderRadius: 24,
//       style: DrawerStyle.style3,
//       showShadow: true,
//       openCurve: Curves.fastOutSlowIn,
//       slideWidth: MediaQuery.of(context).size.width * 0.65,
//       duration: const Duration(milliseconds: 500),
//       angle: 0.0,
//       mainScreen: const MainScreen(),
//       menuScreen: const MenuScreen(),
//     );
//   }
// }
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   int _counter = 0;
//   final _tween = Tween(begin: const Duration(hours: 1), end: Duration.zero,);
//
//   Future<void> addShared() async {
//     // Obtain shared preferences.
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setInt('counter', _counter);
//     setState(() {});
//   }
//
//   Future<int> getValue() async {
//     // Obtain shared preferences.
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt('counter') ?? 0;
//   }
//
//   void _incrementCounter() {
//     _counter++;
//     addShared();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white.withOpacity(0.9),
//       appBar: AppBar(
//         title: Text("Test App"),
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: () {
//             z.toggle!();
//           },
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             TweenAnimationBuilder<Duration>(
//               duration: const Duration(hours: 1),
//               tween: _tween,
//               builder: (_, Duration value, __) => Text(value.toString()),
//             ),
//             FutureBuilder(
//               future: getValue(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   return Text(
//                     snapshot.data.toString(),
//                     style: Theme.of(context).textTheme.headline4,
//                   );
//                 }
//                 return const Text('noData');
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class MenuScreen extends StatelessWidget {
//   const MenuScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData.dark(),
//       child: const Scaffold(
//         backgroundColor: Colors.indigo,
//         body: Padding(
//           padding: EdgeInsets.only(left: 25),
//           child: Center(
//             child: Text(
//               'kkkk',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/*
* ---------------------------------------------------------
* */

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//
//   runApp(
//     EasyLocalization(
//       child: MyApp(),
//       path: 'assets/langs',
//       supportedLocales: MyApp.list,
//       saveLocale: true,
//       useOnlyLangCode: true,
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   static const list = [
//     Locale('en'),
//     Locale('ar'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Zoom Drawer Demo',
//       onGenerateTitle: (context) => tr("app_name"),
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         accentColor: Colors.orange,
//       ),
//       home: ChangeNotifierProvider(
//         create: (_) => MenuProvider(),
//         child: HomeScreen(),
//       ),
//     );
//   }
// }

/*
* ---------------------------------------------------------
* */

final ZoomDrawerController z = ZoomDrawerController();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      angle: 0.0,
      menuBackgroundColor: Color(0xff6D5EF7),
      mainScreen: const Body(),
      menuScreen: Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          backgroundColor: Color(0xff6D5EF7),
          body: Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              children: [
                DrawerHeader(
                    child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.futura-sciences.com/sources/images/dossier/773/01-intro-773.jpg"),
                        radius: 40,
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text("ad soyad", style: TextStyle(fontSize: 22)),
                        subtitle: Text("email"),
                      ),
                    )
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Anasayfa', style: TextStyle(fontSize: 22),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'İndirimler', style: TextStyle(fontSize: 22),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "/reduction");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Trendler', style: TextStyle(fontSize: 22),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "/trends");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Etkinlikler', style: TextStyle(fontSize: 22),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "/activities");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Billboard', style: TextStyle(fontSize: 22),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "/concert");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Ayarlar', style: TextStyle(fontSize: 22),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "/test");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Çıkış Yap', style: TextStyle(fontSize: 22),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
    value: -1.0,
  );


  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TwoPanels(
        controller: controller,
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  const TwoPanels({Key? key, required this.controller}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  static const _images = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  static const _headerHeight = 32.0;
  late TabController tabController = TabController(length: 3, vsync: this);



  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final _height = constraints.biggest.height;
    final _backPanelHeight = _height - _headerHeight;
    const _frontPanelHeight = -_headerHeight;

    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(
        0.0,
        _backPanelHeight,
        0.0,
        _frontPanelHeight,
      ),
      end: const RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: widget.controller, curve: Curves.linear),
    );
  }


  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            title: Center(child: Image.asset("assets/amv+ image.png")),
            elevation: 0.0,
            leading: InkWell(
                onTap: () => z.toggle!(),
                child: Icon(
                  Icons.menu,
                  color: Color(0xFF4F4F4F),
                )),
          ),
          body: ListView(
            shrinkWrap: true,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
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
                margin: EdgeInsets.all(15),
                child: SizedBox(
                      height: 164,
                      child: ScrollPageView(
                        controller: ScrollPageController(),
                        delay: const Duration(seconds: 4),
                        indicatorAlign: Alignment.bottomRight,
                        indicatorPadding:
                        const EdgeInsets.only(bottom: 130, right: 16),
                        indicatorWidgetBuilder: _indicatorBuilder,
                        children:
                        _images.map((image) => _imageView(image)).toList(),
                      ),
                    ),
              ),
    /*          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),*/
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text("Armada", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: LikeButton(
                                    likeBuilder: (bool isLiked) {
                                      return Icon(
                                        Icons.favorite,
                                        color: isLigit initked ? Colors.red : Colors.grey,
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: ClipRect(
                                    child: Image.asset(
                                      "assets/star.png",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),


                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AnkamallPage()));
                        },
                      ),
                    );
                  })
            ],
          ),
          bottomNavigationBar: BottomAppBarWidget(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }

  Widget _imageView(String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Image.network(image, fit: BoxFit.cover),
      ),
    );
  }
  ///[IndicatorWidgetBuilder]
  Widget? _indicatorBuilder(BuildContext context, int index, int length) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      child: RichText(
        text: TextSpan(
          text: '${index + 1}',
          style: const TextStyle(
              fontSize: 12, color: Color(0xFF6D5EF7
          ), fontWeight: FontWeight.w500),
          children: [
            const TextSpan(
              text: '/',
              style: TextStyle(fontSize: 14, color: Color(0xFF6D5EF7
              )),
            ),
            TextSpan(
              text: '$length',
              style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF6D5EF7
                  ),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  ///预加载图片
  Future<void> precache() async {
    for (var image in _images) {
      precacheImage(NetworkImage(image), context);
    }
  }
}
