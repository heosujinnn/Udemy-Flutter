import 'package:flutter/material.dart';
import 'package:study_flutter/screen/main_screen.dart';
import 'package:study_flutter/screen/splash_screen.dart';
import 'package:study_flutter/screen/sub_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => SplashScreen(),
        '/main': (context) => MainScreen(),
        // => 한줄로 끝내는 / {} return 이 필요. (같은 말)
      },
      onGenerateRoute: (settings){
        if(settings.name=='/sub'){
          String submsg=settings.arguments as String;
          return MaterialPageRoute(builder: (context){
            return SubScreen(submsg: submsg);
          },);
        }
      }
    );
  }
}