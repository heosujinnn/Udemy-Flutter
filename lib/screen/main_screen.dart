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
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인화면'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                //서브 화면으로 이동하는데 생성하면서 이동한다!
                //Navigator.pushNamed(context, '/sub');
                Navigator.pushNamed(context, '/sub', arguments: 'hello');

                //서브 화면에서 main화면을 없애고 이동한다. 스택을 지우고 이동
                /// Navigator.pushReplacementNamed(context, '/sub');
                //context 란? 현재 화면이나 객체에 담겨있는 모든 정보,
                // 내 화면이 어디다 라고 알리기 위해 넘김
              },
              child: Text('텍스트를 클릭하여 서브화면으로 이동')),
        ],
      ),
    );
  }
}
