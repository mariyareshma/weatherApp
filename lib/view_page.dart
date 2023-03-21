import 'package:flutter/material.dart';
import 'view/current_page.dart';
import 'view/hour_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.pink,
                unselectedLabelStyle:
                    TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(text: 'Current'),
                  Tab(
                    text: 'Hour',
                  ),
                ]),
          ),
          body: const TabBarView(
            children: [CurrentPage(), HourlyPage()],
          )),
    );
  }
}
