import 'package:flutter/material.dart';
import 'package:rosadog/widgets/entries/entryList.dart';
import 'package:rosadog/widgets/settingsView.dart';
import 'package:rosadog/widgets/mainView.dart';
import 'package:rosadog/widgets/entries/entryView.dart';
import './theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rosadog',
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (ctx) => MainView(),
        MainView.routeName: (ctx) => MainView(),
        EntryList.routeName: (ctx) => EntryList(),
        EntryView.routeName: (ctx) => EntryView(),
        SettingsView.routeName: (ctx) => SettingsView(),
      },
    );
  }
}
