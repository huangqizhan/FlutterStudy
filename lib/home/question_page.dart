import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/GloblaConfig.dart';
import 'reply_page.dart';

class QuestionPage extends StatefulWidget{
@override
  State<StatefulWidget> createState()  => _QuestionPage();
}

class _QuestionPage extends State<QuestionPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GloalConfigData.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Common.searchInput(context),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: FlatButton(onPressed: (){},child: Text("数据解封",style: TextStyle(color: Colors.white70),),color: GloalConfigData.searchBackgroundColor,),
                      height: 30.0,
                      margin: EdgeInsets.only(right: 8.0),
                    ),
                    Expanded(
                     child: Container(
                       child:  FlatButton(onPressed: (){},child: Text("算法",style: TextStyle(color: Colors.white70),),color: GloalConfigData.searchBackgroundColor),
                       height: 30.0,
                       margin: EdgeInsets.only(right: 8.0),
                     )
                      
                    ),
                     Container(
                     child: FlatButton(onPressed: (){},child: Text("网络",style: TextStyle(color: Colors.white70),),color: GloalConfigData.searchBackgroundColor),
                     height: 30.0,
                    )
                  ],
                ),
                padding: EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0,right: 16.0),
                color: GloalConfigData.cardBackgroundColor,
              ),
             Container(
               child: Text("高手都是这样炼成的",style: TextStyle(color: GloalConfigData.dark == true ? Colors.white70:Colors.black),),
               padding: EdgeInsets.only(bottom: 8.0,left: 16.0,right: 16.0),
               alignment: Alignment.topLeft,
               color: GloalConfigData.cardBackgroundColor,
             )
            ],
          ),
        ),
      ),
    );
  }
}