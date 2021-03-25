import 'package:flutter/material.dart';

class HomeScreenTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  final String thirdTab;
  final Function functionForTabs;

  const HomeScreenTab(
      {this.firstTab, this.secondTab, this.thirdTab, this.functionForTabs});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        isScrollable: false,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        indicator:
       ShapeDecoration(
        shape: UnderlineInputBorder(
          borderSide: BorderSide(width: 3, color: Color(0xFF3bb4c1), style: BorderStyle.solid),
        )
       ),
        onTap: functionForTabs,
        tabs: <Widget>[
          Tab(
            child: Text(
              firstTab,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              secondTab,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Tab(
            child: Text(
              thirdTab,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
