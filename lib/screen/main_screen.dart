import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List lstHello = ['허수진','ㅎㅇ','안녕','팅후루'] ;
  TextEditingController idController=TextEditingController();

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
          TextField(
            controller: idController,
            decoration: InputDecoration(labelText: '아이디를 입력해주세요'),
          ),
          ElevatedButton(onPressed: (){
            // 클릭 시 동작을 구현한다.
            print(idController.text.toString());
          }, child: Text('아이디 입력 값을 가져온다.'))
        ],
      ),
    );
  }
}
