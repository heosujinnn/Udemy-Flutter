import 'package:flutter/material.dart';

/// 서브화면
class SubScreen extends StatelessWidget {
  String submsg;

  SubScreen({super.key, required this.submsg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('서브화면'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('서브화면 입니다. $submsg'),
          ),
          TextButton(
            onPressed: () {
              //화면 스택 제거됨
              Navigator.pop(context);
            },
            child: Text('뒤로가기'),
          ),
        ],
      ),
    );
  }
}
