import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xff182949)));
  //상태바 색깔 = appBar 색깔
  runApp(const boilerplate4());
}

class boilerplate4 extends StatelessWidget {
  const boilerplate4({Key? key}) : super(key: key);

  static const String _title = 'boilerplate4';
  static const primaryColor = Color(0xFF182949);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: boilerplate(),
    );
  }
}

class TooltipSample extends StatelessWidget {
  const TooltipSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<TooltipState> tooltipkey = GlobalKey<TooltipState>();
    return Tooltip(
      key: tooltipkey,
      triggerMode: TooltipTriggerMode.manual,
      showDuration: const Duration(seconds: 3),
      message: 'ToolTip',
    );
  }
}

class boilerplate extends StatefulWidget {
  const boilerplate({Key? key}) : super(key: key);

  @override
  State<boilerplate> createState() => _boilerplateState();
}

class _boilerplateState extends State<boilerplate> {
  int selectedChip = 0;

  Widget _myChip(int number, String name) {
    return new Padding(
      padding: EdgeInsets.only(left: 10),
      child: InkWell(
        child: Chip(
            label: Text(
              name,
              style: TextStyle(
                  color: selectedChip == number ? Colors.white : Colors.black),
            ),
            backgroundColor: selectedChip == number
                ? Color(0xff182949)
                : Color.fromRGBO(33, 33, 33, 0.08)),
        onTap: () {
          setState(() {
            selectedChip = number;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff182949),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.alarm),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
          title: const Text('SODA',
              style: TextStyle(
                color: Colors.white, //왜 title 바로뒤에 actions하면 오류?
                fontSize: 20,
                fontFamily: 'Roboto',
              ))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff182949),
              ),
              child: Text(
                'SODA',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.grey),
              title: Text(
                'Icon : favorite',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(19, 35, 0, 23),
            child: Text(
              'DAY 8',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                letterSpacing: 0.15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 349,
                height: 197,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12)),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 14, 16, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Boilerplate 4',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            letterSpacing: 0.15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.87),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: SizedBox(
                            width: 307,
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '어느덧 SODA 캠프 8일차가 되었네요!',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0.25,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                ),
                                Text(
                                  '여기까지 달려오시느라 수고 많으셨어요 :)',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0.25,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                ),
                                Text(' '),
                                Text(
                                  '아래 있는 CANCEL과 SUBMIT은 버튼입니다 !!',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    letterSpacing: 0.25,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text(
                                'CANCEL',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  letterSpacing: 1.25,
                                  color: Color(0xff4b6eb1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {},
                            ),
                            TextButton(
                              child: const Text(
                                'SUBMIT',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  letterSpacing: 1.25,
                                  color: Color(0xff4b6eb1),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Row(
              children: <Widget>[
                _myChip(1, 'SODA'),
                _myChip(2, 'CAMP'),
                _myChip(3, 'FUN'),
                _myChip(4, 'FLUTTER'),
              ],
            ),
          ),
          Spacer(),
          Divider(
            height: 0, //bottomnavigationbar윗부분 해주기 위함
            thickness: 1.0,
            indent: 10,
            endIndent: 10,
            color: Color(0xff000000),
          ),
        ],
      ),
      floatingActionButton: MyTooltip(),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0, //아이템을 사용하는 네비게이션바 대신  바텀 Appbar사용
        child: Container(
          color: Colors.transparent, // Appbar를 담는 Container를 투명하게 설정
          height: 50.0, // height 피그마 보고 설정
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CopyRight 2022 SODA All rights reserved.',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTooltip extends StatelessWidget {
  const MyTooltip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      decoration: BoxDecoration(
        color: Color(0xff707070),
        borderRadius: BorderRadius.circular(4),
      ),
      message: 'Tooltip',
      textStyle: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.4,
        color: Colors.white,
      ),
      verticalOffset: -53,
      showDuration: Duration(seconds: 3),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff182949),
        child: Icon(Icons.add, color: Color(0xffFFFFFF)),
      ),
    );
  }
}
