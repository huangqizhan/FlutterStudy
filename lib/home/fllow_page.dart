
import 'package:flutter/material.dart';
import 'package:flutterstudy/GloblaConfig.dart';
import 'Article.dart';
import 'reply_page.dart';

class FllowPage extends StatefulWidget{

@override
  State<StatefulWidget> createState() {
    return new _FllowPage();
  }
}

class _FllowPage extends State<FllowPage>{

Widget wordCard(Article article){
Widget markWidget;
if(article.imgUrl == null){
  markWidget = Text(
    article.mark,
    style: TextStyle(height: 1.3,color: GloalConfigData.fontColor),
  );
}else{
  markWidget = new Row(
    children: <Widget>[
      new Expanded(
        flex: 2,
        child: Container(
          child: Text(
            article.mark,
            style: TextStyle(height: 1.3 ,color: GloalConfigData.fontColor),
          ),
        ),
      ),
      new Expanded(
        flex: 1,
        child: AspectRatio(
          aspectRatio: 3.0/2.0,
          child: new Container(
            foregroundDecoration: new BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(article.imgUrl),
                centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                ),
                borderRadius: const BorderRadius.all(const Radius.circular(6.0)),
            ),
          ),
        ),
      )
    ],
  );
 }
 return Container(
   color: GloalConfigData.cardBackgroundColor,
   margin: EdgeInsets.only(top: 5.0 , bottom: 5.0),
   child: Column(
     children: <Widget>[
       new FlatButton(
         onPressed: (){
           Navigator.of(context).push(new MaterialPageRoute(builder: (context){
             return Replypage();
           }
           ));
         },
         child: Column(
           children: <Widget>[
             /// 头像跟名称
             new Container(
               child: new Row(
                 children: <Widget>[
                   new Container(
                     child: CircleAvatar(
                       backgroundImage: NetworkImage(article.headUrl),
                       radius: 11.0,
                     ),
                   ),
                   Text(
                     "   " + article.user + " " + article.action + "  "+ article.time,
                     style: TextStyle(color: GloalConfigData.fontColor),
                   )
                 ],
               ),
               padding: EdgeInsets.only(top: 10.0),
             ),
             /// 标题
             new Container(
               child: Text(
                 article.title,
                 style: TextStyle(color: GloalConfigData.fontColor,fontWeight: FontWeight.bold,height: 1.3,fontSize: 16.0),
                 ),
                 margin: new EdgeInsets.only(top: 5.0,bottom: 2.0),
                 alignment: Alignment.topLeft,
             ),
             /// 内容 + 图片 
             new Container(
               child: markWidget,
               margin: EdgeInsets.only(top: 5.0),
               alignment: Alignment.topLeft,
             ),
             /// 评论 
             new Container(
               child: Row(
                 children: <Widget>[
                   new Expanded(
                     child: Text(
                       article.agreeNum.toString() + " 赞同 " + article.commentNum.toString() + " 评论 ",
                       style: TextStyle(color: GloalConfigData.fontColor),
                       ),
                   ),
                   new PopupMenuButton(
                     icon: Icon(Icons.linear_scale,color: GloalConfigData.fontColor),
                     itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                       new PopupMenuItem<String>(
                         child: Text("屏蔽此问题"),
                         value: "1",
                         ),
                      new PopupMenuItem<String>(
                        child: Text("取消关注"),
                        value: "2",
                      ),
                      new PopupMenuItem<String>(
                        child: Text("举报"),
                        value: "3",
                      )
                     ],
                   ),
                 ],
               ),
               padding: const EdgeInsets.only(),
             )
           ],
         ),
       ),
     ],
   ),
 );
}
Widget billBoard(){
  return new Container(
    margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
    color: GloalConfigData.cardBackgroundColor,
    child: FlatButton(
      onPressed: (){},
      child: Column(
        children: <Widget>[
          new Container(
            child: new Row(
              children: <Widget>[
                new CircleAvatar(
                  backgroundImage: NetworkImage("https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg"),
                  radius: 11.0,
                ),
                Text(
                  "迷你网",
                  style: TextStyle(color: GloalConfigData.fontColor),
                ),
              ],
            ),
            padding: EdgeInsets.only(top: 10.0),
          ),
          new Container(
            child: Text(
              "屌丝逆袭班课程",
              style: TextStyle(fontWeight: FontWeight.bold, height: 1.3,fontSize: 16.0,color: GloalConfigData.fontColor)
            ),
            margin: EdgeInsets.only(top: 10.0, bottom: 2.0),
            alignment: Alignment.topLeft,
          ),
          new Container(
            child: AspectRatio(
              aspectRatio: 3.0/1.0,
              child: Container(
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg"),
                    centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(6.0))
                ),
              )
            ),
            margin: EdgeInsets.only(top: 6.0,bottom: 14.0),
            alignment: Alignment.topLeft,
          ),
          new Container(
            child: Text("身受无间者永不死，寿长乃无间地狱中之大劫",style: TextStyle(color: GloalConfigData.fontColor,height: 1.3)),
            padding: const EdgeInsets.only(bottom: 8.0),
          ),
          new Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "广告",
                    style: TextStyle(color: GloalConfigData.fontColor,fontSize: 10.0)
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: GloalConfigData.fontColor),
                      borderRadius: BorderRadius.all(const Radius.circular(2.0))
                    ),
                    padding: EdgeInsets.only(top: 2.0,left: 2.0,bottom: 3.0,right: 3.0),
                ),
                Container(
                  child: Text(
                    "查看详情",
                    style: TextStyle(color: GloalConfigData.fontColor),
                  ),
                ),
                Icon(Icons.clear, color: GloalConfigData.fontColor),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

List<Widget> listItems(){
  List<Widget> wlist = []; 
  for (var i = 0; i < 5; i++) {
    wlist.add(wordCard(articleList[0]));
    wlist.add(wordCard(articleList[1]));
    wlist.add(wordCard(articleList[2]));
    wlist.add(billBoard());
    wlist.add(wordCard(articleList[3])); 
  } 
  return wlist;
}
@override
 Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Container(
       margin: EdgeInsets.only(top : 5.0),
       child: Column(
         children: listItems(),
       ),
     )
   );
  }
}