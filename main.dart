import 'package:flutter/material.dart';
import 'package:boilerplate5/Widget/slide1.dart';
import 'package:boilerplate5/Widget/slide2.dart';
import 'package:boilerplate5/Widget/slide3.dart';

void main() {
  runApp(const boilerPlate5());
}

class boilerPlate5 extends StatelessWidget {
  const boilerPlate5({Key? key}) : super(key: key);

  static const String _title = 'boilerPlate5';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: boilerPlate(),
    );
  }
}

class boilerPlate extends StatefulWidget {
  const boilerPlate({Key? key}) : super(key: key);

  @override
  State<boilerPlate> createState() => _boilerPlateState();
}

final List<Widget> introWidgetsList = <Widget>[
  slide1(),
  slide2(),
  slide3(),
];

class _boilerPlateState extends State<boilerPlate> {
  var currentPageValue;
  void getChangedPageAndMoveBar(int page) {
    currentPageValue = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 0,
    );
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: 3,
              onPageChanged: (int page) {
                getChangedPageAndMoveBar(page);
              },
              controller: controller,
              itemBuilder: (context, index) {
                return introWidgetsList[index];
              }),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 26),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      for (int i = 0; i < introWidgetsList.length; i++)
                        if (i == currentPageValue) ...[circleBar(true)] else
                          circleBar(false),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget circleBar(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: isActive ? 6 : 6,
    width: isActive ? 6 : 6,
    decoration: BoxDecoration(
        color: isActive ? Color(0xff182949) : Color(0xffd8d8d8),
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );
}
