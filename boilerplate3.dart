import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xff182949)));
  //상태바 색깔 = appBar 색깔
  runApp(const boilerPlate3());
}

enum Gender { Male, Female }

class boilerPlate3 extends StatelessWidget {
  const boilerPlate3({Key? key}) : super(key: key);

  static const String _title = 'boilerplate2';
  static const primaryColor = Color(0xFF182949);

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

class _boilerPlateState extends State<boilerPlate> {
  bool _isChecked = false;
  bool checkChecked = false;
  bool checkChecked2 = false;
  Gender _gender = Gender.Male;

  void showDatePickerPop() {
    Future<DateTime?> selectedDate = showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2001),
      lastDate: DateTime(2030),
    );
  }

  void _onItemTapped() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff182949),
        elevation: 0.0,
        title: const Text(
          'SODA',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: <Widget>[
          Switch(
              value: _isChecked,
              inactiveTrackColor: Color(0xff979797),
              activeColor: Colors.white,
              activeTrackColor: Color(0xff4B6EB1),
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    _isChecked = value;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('스위치를 ON 하였습니다.'),
                        action: SnackBarAction(
                          textColor: Color(0xfff99999),
                          label: 'OK',
                          onPressed: () {},
                        ),
                      ),
                    );
                  }
                  _isChecked = value;
                });
              }),
        ],
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
      body: Center(
        child: Column(
          children: [
            Padding(
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'NAME',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              padding: EdgeInsets.all(20.0),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff4B6EB1)),
                              focusColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff4B6EB1)),
                              value: Gender.Male,
                              groupValue: _gender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  _gender = value!;
                                });
                              }),
                          Expanded(
                              child: Text('Male',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.99027,
                                  ))),
                        ],
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff4B6EB1)),
                              focusColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff4B6EB1)),
                              value: Gender.Female,
                              groupValue: _gender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  _gender = value!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Female',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.99027,
                              ),
                            ),
                          ),
                        ],
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Color(0xff4b6eb1),
                            value: checkChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                checkChecked = value!;
                              });
                            },
                          ),
                          Expanded(
                              child: Text('Designer',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.99027,
                                  ))),
                        ],
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Color(0xff4b6eb1),
                            value: checkChecked2,
                            onChanged: (bool? value) {
                              setState(() {
                                checkChecked2 = value!;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              'Developer',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.99027,
                              ),
                            ),
                          ),
                        ],
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 12),
                  child: Text(
                    '버튼을 눌러 날짜를 선택해주세요.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.25,
                    ),
                  ),
                ),
                OutlinedButton(
                    onPressed: () {
                      showDatePickerPop();
                    },
                    child: Text(
                      'SELECT DATE',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        letterSpacing: 1.25,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: Color(0xff4b6eb1),
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ))
              ],
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('+ 버튼을 누르셨습니다.',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          )),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                      child: const Text(
                        '확인',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              );
            },
          );
          // showDialog(
          //     context: context,
          //     builder: (context) {
          //       return Dialog(child: Text('+ 버튼을 누르셨습니다.'));
          //     });
        },
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
    );
  }
}
