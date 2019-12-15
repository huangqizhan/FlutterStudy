
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './search_page.dart';
import 'package:flutterstudy/GloblaConfig.dart';
import 'ask_page.dart';
import 'fllow_page.dart';
import 'hot_page.dart';
import 'recommand.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{

Widget searchBar(){
  return new Container(
    child: Row(
      children: <Widget>[
        new Expanded(
          child : FlatButton.icon(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return new SearchPage();
                }));
              },
              icon: new Icon(
                Icons.search,
                color: GloalConfigData.fontColor,
                size: 16,
              ),
              label: new Text(
                "妖刀出窍",
                style: new TextStyle(color: GloalConfigData.fontColor),
              ),
            ),
          ),
        new Container(
          decoration: BoxDecoration(
            border: new BorderDirectional(
              start: BorderSide(
                color: GloalConfigData.fontColor,
                width: 1.0,
              )
            ), 
          ),
          width: 1.0,
          height: 14,
        ),
        new Container(
          child: FlatButton.icon(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return AskPage();
              }));
            },
            icon: new Icon(
              Icons.border_color,
             color: GloalConfigData.fontColor,
             size: 14.0,
            ),
            label: new Text(
              "提问",
              style: TextStyle(color: GloalConfigData.fontColor),
            ),
          ),
        ),
      ],
    ),
    decoration: new BoxDecoration(
      borderRadius: const BorderRadius.all(const Radius.circular(5.0)),
      color: GloalConfigData.searchBackgroundColor,
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: new AppBar(
          title: searchBar(),
          bottom: TabBar(
            labelColor: GloalConfigData.dark == true ? new Color(0xFF63FDD9) : Colors.blue,
            unselectedLabelColor: GloalConfigData.dark == true ? Colors.white : Colors.black,
            tabs: <Widget>[
              new Tab(text: "关注"),
              new Tab(text: "推荐"),
              new Tab(text: "热榜"),
            ],
          ),
        ),
        body: TabBarView(
         children: <Widget>[
            new FllowPage(),
            new RecommandPage(),
            new HotePage(),
         ],
        ),
      ),
    );
  }
}



