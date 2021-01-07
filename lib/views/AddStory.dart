import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStory extends StatefulWidget {
  @override
  _AddStoryState createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffF2F2F6),
        title: Text(
          "Send To",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        leading: GestureDetector(
          onTap: (){},
          child: Icon(Icons.arrow_back,
          color: Colors.black,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClayContainer(
              emboss: false,
              depth: 50,
              spread: 4,
              surfaceColor: Color(0xffF2F2F6),
              height: 10,
              width: Get.width/4,
              borderRadius: 30,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Text(
                    "Share",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  color: Color(0xffF2F2F6),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.only(left: 15,right: 10,top: 8),
        color: Color(0xffF2F2F6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/user.png',
                    scale: 8,
                  ),
                  SizedBox(width: 5,),
                  Text("write a message"),
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
