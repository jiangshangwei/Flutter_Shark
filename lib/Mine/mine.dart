import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return MinePageState();
  }
}

class MinePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Color.fromRGBO(245, 245, 245, 1),
      child: Column(
        children: [
          TopView(),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CenterView(),
          ),
          const BottomFirstView(),
        ],
      ),
    ));
  }
}

class CustomListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Container(
        color: Colors.white,
        child: const Row(
          children: [
            SizedBox(width: 5,),
            Icon(Icons.security),
            SizedBox(
              width: 10,
            ),
            Text("财务安全中心")
          ],
        ),
      ),
    );
  }
}

class BottomFirstView extends StatelessWidget {
  const BottomFirstView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child:ListView.builder(
              itemBuilder: (context, index) => CustomListItem(),
            itemCount: 5,
            itemExtent: 50,
          ) ,
        )
      );
  }
}



class CenterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: [
            SizedBox(
              height: 6,
            ),
            Icon(Icons.message),
            Text("消息"),
            SizedBox(
              height: 6,
            ),
          ]),
          Column(children: [
            SizedBox(
              height: 6,
            ),
            Icon(Icons.badge),
            Text("徽章"),
            SizedBox(
              height: 6,
            ),
          ]),
          Column(children: [
            SizedBox(
              height: 6,
            ),
            Icon(Icons.interests),
            Text("积分"),
            SizedBox(
              height: 6,
            ),
          ]),
          Column(children: [
            SizedBox(
              height: 6,
            ),
            Icon(Icons.face),
            Text("好友"),
            SizedBox(
              height: 6,
            ),
          ]),
          Column(children: [
            SizedBox(
              height: 6,
            ),
            Icon(Icons.settings),
            Text("设置"),
            SizedBox(
              height: 6,
            ),
          ])
        ],
      ),
    );
  }
}

class TopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        height: 200,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              top: 50,
              left: 16,
              right: 16,
              child: TopCenterView(),
            ),
            Positioned(top: 110, left: 0, right: 0, child: TopRecordView()),
            Positioned(top: 175, left: 16, right: 16, child: TopBottomView())
          ],
        ));
  }
}

class TopCenterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/images/avatar.jpg",
            width: 40,
            height: 40,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "jsw_cool",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Icon(Icons.time_to_leave),
                Text("打卡"),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class TopRecordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              "1",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("已连续打卡")
          ],
        ),
        Column(
          children: [
            Text(
              "10",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("记账总天数")
          ],
        ),
        Column(
          children: [
            Text(
              "8",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("记账总笔数")
          ],
        ),
      ],
    );
  }
}

class TopBottomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Icon(Icons.king_bed),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "升级为VIP",
                textAlign: TextAlign.left,
              ),
              Text(
                "畅享更多高级功能",
                textAlign: TextAlign.left,
              )
            ],
          ),
          Spacer(),
          Icon(Icons.skip_next),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
