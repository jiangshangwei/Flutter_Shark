import 'package:flutter/material.dart';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dmeo/Model/banner.dart';
// import 'package:flutter_dmeo/Model/rxbanner.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State{
  List bannerModelList = [].obs;  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color:Colors.red,
        child: Obx(() => ListView.builder(
          itemBuilder: (_,index){
            return Obx(() => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.network("${bannerModelList[index].imagePath}")
                ),
                Text(bannerModelList[index].desc)
              ],
            ));
          },
          itemCount: bannerModelList.length,
          // itemExtent: 80,
        ),
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>{
        bannerModelList.removeLast()
      }),
    );
  }

   @override
  void initState() {
    super.initState();
    requestForIndexData();
  }  
  
  // void requestForIndexData() async{
  //   final dio = Dio();
  //   final reponse = await dio.get("https://www.wanandroid.com/banner/json");
  //   if(reponse.statusCode == HttpStatus.ok){  
  //     List<RXBannerModel> currentBannerModelList = [];
  //     for (var sub in reponse.data["data"]) {
  //       RXBannerModel bannerModel =  RXBannerModel.fromJson(sub);
  //       currentBannerModelList.add(bannerModel);
  //     }
  //     setState(() {
  //         bannerModelList = currentBannerModelList;
  //     });
  //   }else{
  //     print("请求失败:${reponse.statusCode}");
  //   }
  // }

  void requestForIndexData() async{
    final dio = Dio();
    final reponse = await dio.get("https://www.wanandroid.com/banner/json");
    if(reponse.statusCode == HttpStatus.ok){  
      for (var sub in reponse.data["data"]) {
        BannerModel bannerModel =  BannerModel.fromJson(sub);
        bannerModelList.add(bannerModel);
      }
    }else{
      print("请求失败:${reponse.statusCode}");
    }
  }

  


}