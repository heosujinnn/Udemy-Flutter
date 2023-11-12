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
      // stless
      // alt+enter -> remove 할 수 있음.
      // alt+enter -> wrap with Row ... 등 기능 추가도 가능!
      // ctrl+alt+L : 자동정렬
      // ctrl + .  : 코드 접기
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(32),
            width: 200,
            height: 70,
            child: ElevatedButton(
                onPressed: () {
                  // 클릭 되었을 때 동작하고 싶은 액션 정의
                  print('버튼이 클릭되었습니다!');
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.yellow,
                    elevation: 10 // 높이:그림자값
                    ),
                child: Text('눌러보세요.')),
          )
        ],
      ),
    );
  }
}
