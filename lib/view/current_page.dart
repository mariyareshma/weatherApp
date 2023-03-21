import 'package:flutter/material.dart';

import '../model/current.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({Key? key, this.weather}) : super(key: key);
  final Main? weather;

  @override
  CurrentPageState createState() => CurrentPageState();
}

class CurrentPageState extends State<CurrentPage> {
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
