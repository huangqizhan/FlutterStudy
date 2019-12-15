

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/GloblaConfig.dart';

class AskPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AskPage();
  }
}
 class _AskPage extends State<AskPage>{
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GloalConfigData.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
             child: Row(
               children: <Widget>[
                 FlatButton.icon(
                   onPressed: (){
                     Navigator.of(context).pop();
                   },
                   icon:Icon(Icons.clear,color: Colors.white70,),
                   label: Text(""),
                 ),
                 Expanded(
                  child: Container(
                     child: Text("提问",style: TextStyle(color: Colors.white70),),
                  ),
                 ),
                 FlatButton(
                   onPressed: (){},
                   child: Text("下一步",style:TextStyle(color: Colors.white12)),
                 )
               ],
             ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "请输入",
                    hintStyle: TextStyle(color: Colors.white70)
                  ),
                  onChanged: (str ){
                    print(str);
                  },
                  onEditingComplete: (){
                    print("onEditingComplete");
                  },
                ),
                margin: EdgeInsets.all(16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
 }