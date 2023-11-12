import 'package:flutter/material.dart';

/// 메인화면
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

/// stless
/// alt+enter -> remove 할 수 있음.
/// alt+enter -> wrap with Row ... 등 기능 추가도 가능!
/// ctrl+alt+L : 자동정렬
/// ctrl + .  : 코드 접기

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( // 탭 바
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('메인화면'),
          bottom: TabBar(tabs:[
            Tab(text: 'Tab1',),
            Tab(text: 'Tab2',),
            Tab(text: 'Tab3',)

          ]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('tab1 Content'),),
            Center(child: Text('tab2 Content'),),
            Center(child: Text('tab3 Content'),)
          ],
        ),
          drawer: Drawer(child: ListView(children: [
            DrawerHeader(child: Text('헤더 영역'),),
            ListTile(title:Text('홈 화면'),onTap:(){

            }),
            ListTile(title:Text('메인 화면'),onTap:(){

            }),
            ListTile(title:Text('서브 화면'),onTap:(){

            }),
        ],),),
      ),
    );
  }
}
