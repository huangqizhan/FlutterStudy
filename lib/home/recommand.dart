
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/GloblaConfig.dart';
import 'Article.dart';
import 'reply_page.dart';


class RecommandPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RecommandPage();
  }
}

class _RecommandPage extends State<RecommandPage>{
Widget commandCard(Article article){
  Widget markWidget;
  if (article.imgUrl == null) {
    markWidget = Text(
      article.user + ":" + article.mark,
      style: new TextStyle(color: GloalConfigData.fontColor,height: 1.3),
    );
  }else{
    markWidget = Row(
      children: <Widget>[
        Expanded(
          flex: 2 ,
          child: Container(
            child: Text(
              article.user + ":" + article.mark,
              style: new TextStyle(color: GloalConfigData.fontColor,height: 1.3),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: new AspectRatio(
            aspectRatio: 3.0/2.0,
            child: Container(
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(article.headUrl),
                  centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                ),
                borderRadius: const BorderRadius.all(const Radius.circular(6.0))
              ),
            ),
          ),
        )
      ],
    );
  }
  return Container(
    color: GloalConfigData.cardBackgroundColor,
    margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
    child: FlatButton(
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: 
        (context){
          return Replypage();
        }));
      },
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              article.title, 
              style: TextStyle(color: GloalConfigData.fontColor,height: 1.3,fontWeight: FontWeight.bold,fontSize: 16.0),
              ),
              margin: EdgeInsets.only(top: 6.0,bottom: 2.0),
              alignment: Alignment.topLeft,
          ),
          Container(
            child: markWidget,
            margin: EdgeInsets.only(top:6.0,bottom:14.0),
            alignment: Alignment.topLeft,
          ),
          Container(
            child: Row(
              children: <Widget>[
                new Expanded(
                  child: Text(
                    article.agreeNum.toString() + "赞同" + article.commentNum.toString(),
                    style: TextStyle(color: GloalConfigData.fontColor),
                    ),
                ),
                Icon(Icons.linear_scale,color: GloalConfigData.fontColor,)
              ],
            ),
            padding: EdgeInsets.only(bottom: 10.0),
          ),
        ],
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: Column(
          children: <Widget>[
            commandCard(articleList[0]),
          ],
        ),
      ),
    );
  }
}
