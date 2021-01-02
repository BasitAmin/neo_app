import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_app/views/tabs/Article.dart';
import 'package:neo_app/views/tabs/Question.dart';
import 'package:neo_app/views/tabs/Truth.dart';
class Newsfeed extends StatefulWidget {
  @override
  _NewsfeedState createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> with SingleTickerProviderStateMixin{

  TabController _tabController;
  ScrollController _scrollController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = new ScrollController();
    _tabController = new TabController(vsync: this, length: 3,initialIndex: 0);
    _tabController.addListener(_handleTabSelection);

  }

  void _handleTabSelection() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: Get.width,
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                tabs: [
                Tab(child: Text("Question",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabController.index == 0? Theme.of(context).primaryColor: Colors.black,
                  ),),),
                Tab(child: Text("Article",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabController.index == 1? Theme.of(context).primaryColor: Colors.black,
                  ),),),
                Tab(child: Text("Truth",
                  style: TextStyle(
                    fontSize: 12,
                    color: _tabController.index == 2? Theme.of(context).primaryColor: Colors.black,
                  ),),)
              ],),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                    children: [
                  Question(),
                  Article(),
                  Truth(),
            ]),
              )
            ],
          ),
        ),

      ),
    );
  }
}
