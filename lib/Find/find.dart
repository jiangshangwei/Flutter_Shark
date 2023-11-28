import 'package:flutter/material.dart';

class FindPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FindPageState();
  }
}

class FindPageState extends State{
  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification:(ScrollNotification notification){
          if(notification is ScrollStartNotification){
            print("statrt");
          }else if (notification is ScrollUpdateNotification){
            print("scrolling");
          } else if (notification is ScrollEndNotification) {
            print("结束滚动....");
          }
          return false;
      },
      child: Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
              expandedHeight: 200,
              flexibleSpace: Container(
                color: Colors.red,
                child: Center(
                  child: Row(
                  children: [
                    Text("xx"),
                    Spacer(),
                    Text("yy")
                  ],
                )
                )
              ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => 
                 Container(
                  color: Colors.red,
                  child: Text("$index"),
                )
                ,childCount: 10
              ), 
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5
                )
              ),
          ),
          SliverFixedExtentList(delegate: SliverChildBuilderDelegate((context, index) => 
              Container(
                color: Colors.red,
                child: Text("$index"),
              ),childCount: 10
          ), itemExtent: 50,)
        ], 
      )
    )
    );
  }
}
