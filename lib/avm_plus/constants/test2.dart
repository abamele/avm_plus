import 'package:flutter/material.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';


class MyAppTest extends StatefulWidget {
  const MyAppTest({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppTest> {
  static const _images = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  void initState() {
    precache();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          brightness: Brightness.dark,
          backgroundColor: Colors.deepOrange,
          centerTitle: false,
          title: const Text('Scroll Page View Demo'),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            ///Default
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 24, top: 30),
              sliver: SliverToBoxAdapter(
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
            ),
          ],
        ),
    );
  }

  ///Image
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