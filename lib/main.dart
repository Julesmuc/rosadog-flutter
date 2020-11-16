import 'package:flutter/material.dart';
import 'package:rosadog/widgets/dog/dogAddView.dart';
import 'package:rosadog/widgets/dog/dogView.dart';
import 'package:rosadog/widgets/entries/entryList.dart';
import 'package:rosadog/widgets/settingsView.dart';
import 'package:rosadog/widgets/dog/dogListView.dart';
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
        '/': (ctx) => DogListView(),
        DogListView.routeName: (ctx) => DogListView(),
        EntryList.routeName: (ctx) => EntryList(),
        EntryView.routeName: (ctx) => EntryView(),
        SettingsView.routeName: (ctx) => SettingsView(),
        DogAddView.routeName: (ctx) => DogAddView(),
        DogView.routeName: (ctx) => DogView(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (ctx) => DogListView(),
      ),
    );
  }
}
