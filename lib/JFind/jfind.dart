import 'package:flutter/material.dart';

class JFindPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return JFindPageSate();
  }
}

class JFindPageSate extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color.fromRGBO(245, 245, 245, 1),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: TopAppBar(),
            ),
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(16.0), child: FirstSliverView()),
                  itemCount: 1,
            ),
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16), child: SecondSliverView()),
                  itemCount: 1,
            ),
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16), child: ThreeSliverView()),
                  itemCount: 1,
            ),
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16), child: FourSliverView()),
                  itemCount: 1,
            ),
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16), child: FiveSliverView()),
                  itemCount: 1,
            ),
          ],
        )
      );
    }
}

class FiveSliverView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.all(10),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(children: [Text( "常用功能",style: TextStyle(fontWeight: FontWeight.bold),)],),
              ),
              SizedBox(height: 10,),
              Wrap(
                spacing: 18,
                runSpacing: 10,
                children: [
                  Column(
                    children: [
                      Icon(Icons.money),
                      Text("省钱优惠券")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      Text("财富星课堂")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      Text("资产管家")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      Text("发票助手")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      Text("房贷计算器")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      Text("汇率计算器")
                    ],
                  )
                ],
              )
            ],
          ),
    );
  }
}

class FourSliverView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
             children: [
                Text(
                  "财富新课堂",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.skip_next)
              ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset("assets/images/avatar.jpg")
              ),
              SizedBox(width: 10,),
              const Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("小白理财训练营",style:TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ), 
                    Row(
                      children: [
                        Text("迈出理财训练第一步",style:TextStyle(color: Colors.grey),)
                      ],
                    ),
                    // Spacer(),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                         Text("共8讲",style:TextStyle(color: Colors.grey),),
                         Spacer(),
                         Text("6财富币",style: TextStyle(color: Colors.red),)
                      ],
                    )
                  ],
                )
              )
            ],
          )
        ],
      ),
    );
  }
}

class ThreeSliverView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
             children: [
                Text(
                  "资产管家",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.skip_next)
              ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                Text("净资产"),
                SizedBox(height: 4,),
                Text("0.00")
              ],),Column(children: [
                Text("净资产"),
                SizedBox(height: 4,),
                Text("0.00")
              ],),
              Column(children: [
                Text("净资产"),
                SizedBox(height: 4,),
                Text("0.00")
              ],)
            ],
          )
        ],
      ),
    );
  }
}

class SecondSliverView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(10),
      child: const Column(
        children: [
          Row(
            children: [
              Text("11月总预算",style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(),
              Text("设置总预算")
            ]
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                children: [
                  SizedBox(height: 10,),
                  CircularProgressIndicator(
                    color: Colors.grey,
                    value: 10,
                  ),
                  SizedBox(height: 10,),
                ],
              ),
              ),
              Expanded(
                flex: 3,
                child:Column(
                children: [
                  Row(
                    children: [
                      Text("剩余预算"),
                      Spacer(),
                      Text("0.00")
                    ],
                  ),
                  Row(
                    children: [
                      Text("本月预算"),
                      Spacer(),
                      Text("0.00")
                    ],
                  ),
                  Row(
                    children: [
                      Text("本月支出"),
                      Spacer(),
                      Text("0.00")
                    ],
                  )
                ],
              ) 
              )
              
            ],
          )
        ],
      ),
    );
  }
}

class FirstSliverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Row(
              children: [
                Text(
                  "账单",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.skip_next)
              ],
            ),
            Row(
              children: [
                Text("11月"),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [Text("收入"), Text("0.00")],
                    ),
                    Column(
                      children: [Text("收入"), Text("0.00")],
                    ),
                    Column(
                      children: [Text("收入"), Text("0.00")],
                    )
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TopAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.yellow,
      height: 80,
      child: Row(
        children: [
          Spacer(),
          Text("发现"),
          Spacer(),
        ],
      ),
    );
  }
}
