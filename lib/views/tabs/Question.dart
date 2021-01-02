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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF2F2F6),
        width: Get.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: MaterialButton(
                    shape: StadiumBorder(),
                    onPressed: () {},
                    child: Text("POST",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),),
                    color: Color(0xFF515DC7),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                children: [
                  Image.asset('images/user.png',
                  scale: 8,),
                  SizedBox(width: 15,),
                  Expanded(
                    child: ClayContainer(
                      emboss: true,
                      depth: 15,
                      spread: 3,
                   //   parentColor: Color(0xffF2F2F6),
                      surfaceColor: Color(0xffF2F2F6),
                     //s color: Color(0xffF2F2F6),
                      height: 150,
                      width: 150,
                      borderRadius: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,top: 10),
                        child: TextFormField(
                          minLines: 6,
                          maxLines: 8,
                          decoration:InputDecoration(
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
                          ),),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ));

  }
}
