
import 'package:flutter/material.dart';
import 'navigation_icon_view.dart';
import '../home/homepage.dart';
import '../market/marketpage.dart';
import '../my/mypage.dart';
import '../notice/noticepage.dart';
import '../idea/ideapage.dart';
import 'package:flutterstudy/GloblaConfig.dart';

class Index extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    return new _StateIndex();
  }
}

class _StateIndex extends State<Index> with TickerProviderStateMixin{
  
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override 
  void initState(){
    super.initState();
    _navigationViews =  <NavigationIconView>[
      NavigationIconView(
        icon: Icon(Icons.assignment),
        title: Text("首页"),
         vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.all_inclusive),
        title: Text("想法"),
         vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.add_shopping_cart),
        title: Text("市场"),
         vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.add_alert),
        title: Text("通知"),
         vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.perm_identity),
        title: Text("我的"),
         vsync: this,
      )
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new HomePage(),
      new IdeaPage(),
      new MarketPage(),
      new Noticepage(),
      new MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }
  void _rebuild(){
  setState(() {
  });
}

@override 
void dispose(){
  super.dispose();
  for (NavigationIconView view in _navigationViews) {
    view.controller.dispose();
  }
}

Widget build(BuildContext context) {
final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(  
  items: _navigationViews.map((NavigationIconView navigationIconView) => navigationIconView.item).toList(),
  currentIndex: _currentIndex,
  fixedColor: Colors.blue,
  type: BottomNavigationBarType.fixed,
  onTap:((int index) {
    setState(() {
      _navigationViews[_currentIndex].controller.reverse();
      _currentIndex = index;
      _navigationViews[_currentIndex].controller.forward();
      _currentPage = _pageList[_currentIndex];
    });
  }),
); 

    return new MaterialApp(
      home: Scaffold(
        body: Center(
          child: _currentPage
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: GloalConfigData.themeData,
    );
  }
}


