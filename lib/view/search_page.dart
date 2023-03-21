import 'package:flutter/material.dart';
import 'package:weather_app/model/area_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  SearchArea? place;
  var isLoading = false;

  TextEditingController placeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: TextField(
        controller: placeController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
            hintText: 'Search the Place',
            icon: Icon(
              Icons.search,
              color: Colors.white,
            )),
      ),
    ));
  }
}
