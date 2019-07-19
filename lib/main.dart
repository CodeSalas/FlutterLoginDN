import 'package:flutter/material.dart';
import 'package:logingoodnight/src/Page/LoginPageMorning.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes:{
        'login' : (BuildContext context) => LoginPageMorning(),
      },
    );
  }
}