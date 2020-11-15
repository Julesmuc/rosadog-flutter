import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  static final routeName = "/settings";
  SettingsView({Key key}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("rosadog - settings"),
      ),
      body: const Text("settings"),
    );
  }
}
