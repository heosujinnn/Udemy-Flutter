import 'package:flutter/material.dart';

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
  TextEditingController idController = TextEditingController();
  String msg = '이 곳에 입력값이 업데이트 됩니다.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인화면'),
      ),
      body: Column(
        children: [
          TextField(
            controller: idController,
            decoration: InputDecoration(labelText: '아이디를 입력해주세요'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // widget 업데이트!! setState 안에 넣는것이 좋습니다. 값만 리로딩되니까 성능적으로 굿
                msg = idController.text.toString();
              });
            },
            child: Text('아이디 입력 값을 가져온다.'),
          ),
          Text(
            msg,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
