import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_app/models/nm_box.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:clay_containers/clay_containers.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  double _scale = 5.0;
  bool isSwitched = false;
  String _currentAnimation = '5+';
  void _onChanged(double value) {
    if (_scale == value) return;
    setState(() {
      var direction = _scale < value ? '+' : '-';
      _scale = value;
      _currentAnimation = '${value.round()}$direction';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xffF2F2F6),
      width: Get.width,
      height: Get.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.add,
                    color: Colors.black,
                  size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: MaterialButton(
                    shape: StadiumBorder(),
                    onPressed: () {},
                    child: Text(
                      "POST",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    color: Color(0xFF515DC7),
                  ),
                ),


              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Image.asset(
                    'images/user.png',
                    scale: 8,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ClayContainer(
                      emboss: true,
                      depth: 15,
                      spread: 3,
                      //   parentColor: Color(0xffF2F2F6),
                      surfaceColor: Colors.white70,
                      //s color: Color(0xffF2F2F6),
                      height: 150,
                      width: 150,
                      borderRadius: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: TextFormField(
                          minLines: 6,
                          maxLines: 8,
                          decoration: InputDecoration(
                            hintText: "Ask a question",
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(50)
//                            )
//                          ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    child: ClayContainer(
                        emboss: true,
                        depth: 15,
                        spread: 3,
                        surfaceColor: Color(0xffF2F2F6),
                        height: 50,
                        width: Get.width,
                        borderRadius: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Send To:",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              ClayContainer(
                                emboss: true,
                                depth: 15,
                                spread: 3,
                                surfaceColor: Colors.white,
                                height: 40,
                                width: 90,
                                borderRadius: 30,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                    ),
                                    Text(
                                      "Debate",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClayContainer(
                                emboss: true,
                                depth: 15,
                                spread: 3,
                                surfaceColor: Colors.white,
                                height: 40,
                                width: 90,
                                borderRadius: 30,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                    ),
                                    Text(
                                      "Debate",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClayContainer(
                                emboss: true,
                                depth: 15,
                                spread: 3,
                                surfaceColor: Colors.white,
                                height: 40,
                                width: 90,
                                borderRadius: 30,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                    ),
                                    Text(
                                      "Debate",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    child: ClayContainer(
                      emboss: true,
                      depth: 10,
                      spread: 3,
                      surfaceColor: Color(0xffF2F2F6),
                      height: 40,
                      width: Get.width,
                      borderRadius: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.add_location_alt,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    child: ClayContainer(
                      emboss: true,
                      depth: 10,
                      spread: 3,
                      surfaceColor: Color(0xffF2F2F6),
                      height: 40,
                      width: Get.width,
                      borderRadius: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 8, top: 8, bottom: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 15, right: 8, top: 8, bottom: 8),
                            hintText: "Option 1",
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(50)
//                            )
//                          ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    child: ClayContainer(
                      emboss: true,
                      depth: 10,
                      spread: 3,
                      surfaceColor: Color(0xffF2F2F6),
                      height: 40,
                      width: Get.width,
                      borderRadius: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 8, top: 8, bottom: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 15, right: 8, top: 8, bottom: 8),
                            hintText: "Option 2",
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(50)
//                            )
//                          ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: [
                  ClayContainer(
                    depth: 10,
                    spread: 3,
                    surfaceColor: Color(0xffF2F2F6),
                    height: 40,
                    width: Get.width,
                    borderRadius: 0,
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    child: ClayContainer(
                      emboss: true,
                      depth: 10,
                      spread: 3,
                      surfaceColor: Color(0xffF2F2F6),
                      height: 40,
                      width: Get.width,
                      borderRadius: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 8, top: 8, bottom: 8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 15, right: 8, top: 8, bottom: 8),
                            hintText: "Add Vibe",
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
//                          border: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(50)
//                            )
//                          ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 8, bottom: 8),
                  child: Text(
                    "Sexy",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Slider(
                  value: _scale,
                  min: 1,
                  max: 5,
                  divisions: 4,
                  onChanged: _onChanged,
                )
              ],
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    child: ClayContainer(
                        emboss: false,
                        depth: 12,
                        spread: 0,
                        surfaceColor: Color(0xffF2F2F6),
                        height: 50,
                        width: Get.width,
                        borderRadius: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              ClayContainer(
                                depth: 100,
                                spread: 0,
                                surfaceColor: Colors.white,
                                height: 40,
                                width: 90,
                                borderRadius: 30,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/user.png',
                                      scale: 8,
                                    ),
                                    Text(
                                      "Sexy",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClayContainer(
                                depth: 100,
                                spread: 0,
                                surfaceColor: Colors.white,
                                height: 40,
                                width: 90,
                                borderRadius: 30,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/user.png',
                                      scale: 8,
                                    ),
                                    Text(
                                      "Lovely",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClayContainer(
                                depth: 100,
                                spread: 0,
                                surfaceColor: Colors.white,
                                height: 40,
                                width: 90,
                                borderRadius: 30,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/user.png',
                                      scale: 8,
                                    ),
                                    Text(
                                      "Beauty",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 20, right: 15),
                width: Get.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Also Post To",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value){
                        setState(() {
                          isSwitched=value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.grey,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Twitter",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value){
                        setState(() {
                          isSwitched=value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.grey,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tumblr",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value){
                        setState(() {
                          isSwitched=value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.grey,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
