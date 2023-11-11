import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MainScreen2(),
    );
  }
}
/// statelessWidget : 상태가 없는 위젯 - 한 번 생성되면 내부데이터나 상태를 변경할 수 없고 UI를 그리기 위해 사용함.
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// 주요 기본 UI 기본 요소
    return Scaffold(appBar: AppBar(title: Text('나의 첫 앱'),), body: Text('hello'),);
  }
}
/// StatefulWidget : 상태를 가지는 위젯
/// 왜 두가지 종류의 State 를 가질까?
class MainScreen2 extends StatefulWidget {
  const MainScreen2({super.key});

  @override
  State<MainScreen2> createState() => _MainScreen2State();

}

class _MainScreen2State extends State<MainScreen2> {
  String msg='hello';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        msg='hello World';
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('나의 첫 앱'),), body: Text(msg),);
  }
}

