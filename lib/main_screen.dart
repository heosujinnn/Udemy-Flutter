import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인화면'),
      ),
      // alt+enter -> remove 할 수 있음.
      // ctrl+alt+L : 자동정렬
      body: const Column(
        //세로방향으로 쌓아나감
        mainAxisAlignment: MainAxisAlignment.center, // (세로에서 중앙)
        crossAxisAlignment: CrossAxisAlignment.start, // 가로에서 시작
        children: [
          Text('반갑습니다.'),
          Text('저는 유데미 강의를 듣고 있는 학생입니다.'),
          Text('저는 허수진 입니다.'),
          Row(
            //가로방향으로 쌓아나가는 것
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('안녕'),
              Text('신기하지'),
              Text('이것은 가로 방향으로 쌓는 위젯이야.')
              // const 제안: 경고 없어져요 -> 앱 실행되기 전부터 미리 생성을 끝내놓는다.
              // 무조건 넣는건 아닙니다. 코드가 완성 됐을 때 alt enter 하면 됨 !!! 앱 포파먼스 개선을 위해.
            ],
          ),
          Row(children: [
            //Expanded 위젯은 비율!! 2:1:1 이라는 뜻
            Expanded(flex:2, child: Text('홍길동'),),
            Expanded(child: Text('홍길동'),),
            Expanded(child: Text('홍길동'),),
          ],)
        ],
      ),
    );
  }
}
