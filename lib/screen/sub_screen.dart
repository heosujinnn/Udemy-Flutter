import 'dart:math';

import 'package:flutter/material.dart';

/// 서브화면
class SubScreen extends StatelessWidget {
  String submsg;

  SubScreen({super.key, required this.submsg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: false, //기본 백버튼 없애기
        leading: TextButton(
          onPressed: () {
            //화면 스택 제거됨
            Navigator.pop(context);
          },
          child: Text('뒤로가기',style: TextStyle(color: Colors.white),
          ),
        ),
        title: Text('서브화면'),
        actions: [
          Icon(Icons.accessibility_new_rounded),
          ]
      ),
      body: Column(
        children: [
          Center(
            child: Text('서브화면 입니다. $submsg'),
          ),
        ],
      ),
    );
  }
}
