import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xff182949)));
  //상태바 색깔 = appBar 색깔
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'boilerplate2';
  static const primaryColor = Color(0xFF182949);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class Align {}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  void _onItemTapped() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff182949),
          elevation: 0.0,
          leading: Icon(Icons.menu),
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10), // card 외부에 여백을 줌
            child: ListTile(
                // 리스트 타일로 하나하나씩 배열
                leading: Icon(Icons.airplay_outlined),
                title: Text('This is List tile',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    )),
                subtitle: Text('List tile 1',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14, //다른거 한다고 결국 못 고쳤는데 다음엔 함수화해서..
                    ))),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
                leading: Icon(Icons.airplay_outlined),
                title: Text('This is List tile',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    )),
                subtitle: Text('List tile 2',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                    ))),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
                leading: Icon(Icons.airplay_outlined),
                title: Text('This is List tile',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    )),
                subtitle: Text('List tile 3',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                    ))),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Color(0xff182949),
              alignment: Alignment.center,
            ),
            onPressed: () {},
            child: Text('TEXT BUTTON'), //crossMainAxisAlignment.start로 좌측에 붙힘
          ), //위에 card는 여백으로 살짝 띄어준 것
          const Spacer(), // 아래로 쭉
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                //padding개념이 아직 잘 안잡힘. circleAvatar내에서 padding사용 안됨,
                //따라서 직접 Padding class 사용을 함.
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff182949),
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // 위와 마찬가지로 배치하기 위한 선언
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 44)),
                  OutlinedButton(
                      onPressed: () {},
                      child: Text('Outlined Button'),
                      style: OutlinedButton.styleFrom(
                          primary: Color(0xff182949),
                          backgroundColor: Color(0xffffe8e8),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))))),
                ], // 모서리를 살짝 둥글게 설정해줌.
              ),
            ],
          ),
          Divider(
            height: 0, //bottomnavigationbar윗부분 해주기 위함
            thickness: 1.0,
            indent: 10,
            endIndent: 10,
            color: Color(0xff000000),
          ),
          // Row(
          //   mainAxisSize: MainAxisSize.max,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 40)),
          //     Text(
          //       'Copyright 2022 SODA All rights reserved.',
          //       style: TextStyle(
          //         fontFamily: 'Roboto',
          //         fontSize: 14,
          //         color: Color.fromRGBO(0, 0, 0, 0.6),
          //       ),
          //       textAlign: TextAlign.center,
          //     ), 처음에는 Row Class를 사용해서 계속 시도함
          //   ],   결국에는 구현은 했으나 floatingActionButton의 위치 때문에 난감
          // ),     구글링 결과 custom한 위치를 사용하고 싶으면 floating X
          // 신후님한테서 힌트를 얻어 bottomNavigationbar를 사용해보기로 함
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff182949),
        child: const Icon(Icons.add),
      ),
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
    );
  }
}
