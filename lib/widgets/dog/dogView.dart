import 'package:flutter/material.dart';

class DogView extends StatefulWidget {
  static final routeName = "/dogview";
  DogView({Key key}) : super(key: key);

  @override
  _DogViewState createState() => _DogViewState();
}

class _DogViewState extends State<DogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
