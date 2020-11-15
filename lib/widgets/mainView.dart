import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rosadog/widgets/mainAppBar.dart';
import 'package:uuid/uuid.dart';

import '../models/entry.dart';
import 'dog/dogItem.dart';
import '../models/dog.dart';
import '../helper.dart';

class MainView extends StatefulWidget {
  static final routeName = "/dogs";
  MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  static randomNumber(i) {
    final random = new Random();
    return random.nextInt(i);
  }

  static get randomDay {
    final random = new Random();
    return random.nextInt(7);
  }

  List<Dog> dogs = [
    Dog(
      name: "Rosie",
      breed: "Pointer",
      id: Uuid().v4().toString(),
      entries: [],
    ),
    Dog(
      name: "Brutus",
      breed: "Terrier",
      id: Uuid().v4().toString(),
      entries: [],
    ),
  ];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 7; i++) {
      dogs[0].entries.add(new Entry(
          type: typeMap.entries.toList()[randomNumber(2)].value,
          dateTime: DateTime.now().subtract(Duration(days: randomDay)),
          note: "test ${randomNumber(1000)} test",
          dogId: dogs[0].id,
          id: Uuid().v4()));
    }
  }

  deleteEntry(String dogId, String id) {
    setState(() {
      print(dogId + " " + id);
      Dog dogtoremove = dogs.firstWhere((e) => e.id == dogId);
      dogtoremove.entries.removeWhere((e) => e.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: dogs.map((e) => DogItem(e, deleteEntry)).toList(),
      ),
    );
  }
}
