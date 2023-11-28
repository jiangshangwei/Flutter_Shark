import 'package:flutter/material.dart';
import 'package:flutter_dmeo/Find/find.dart';
import 'package:flutter_dmeo/Home/home.dart';
import 'package:flutter_dmeo/JFind/jfind.dart';
import 'package:flutter_dmeo/Mine/mine.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyStackPage(),
    );
  }
}

class MyStackPage extends StatefulWidget{
  const MyStackPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyStackPageState();
  } 
}

class MyStackPageState extends State{
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:_currentIndex,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          items: [
            createItem("home", "首页"),
            createItem("home", "记账"),
            createItem("home", "发现"),
            createItem("home", "我的"),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            HomePage(),
            FindPage(),
            JFindPage(),
            MinePage()
          ],
        ),
    );
  }

  BottomNavigationBarItem createItem(String iconName,String title){
    return BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: title      
      );
  }
}