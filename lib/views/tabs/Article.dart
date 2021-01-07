import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF2F2F6),
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Type a Title for Article",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    MaterialButton(
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
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ClayContainer(
                        emboss: true,
                        depth: 60,
                        spread: 5,
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
                              hintText: "Start typing your article",
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Article Helper",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black26,
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ClayContainer(
                        emboss: true,
                        depth: 40,
                        spread: 5,
                        //   parentColor: Color(0xffF2F2F6),
                        surfaceColor: Colors.white70,
                        //s color: Color(0xffF2F2F6),
                        height: 150,
                        width: 150,
                        borderRadius: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 8),
                          child: TextFormField(
                            minLines: 6,
                            maxLines: 8,
                            decoration: InputDecoration(
                              hintText: "Paragraph",
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
              ],
            ),
          ),
        ),
      )
    );
  }
}
