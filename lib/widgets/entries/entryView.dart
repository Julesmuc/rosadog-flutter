import 'package:flutter/material.dart';
import 'package:rosadog/models/entry.dart';
import '../../helper.dart';

class EntryView extends StatelessWidget {
  static final routeName = "/entryEdit";
  const EntryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Entry entry = ModalRoute.of(context).settings.arguments as Entry;
    return Scaffold(
      appBar: AppBar(
        title: Text('detailed view: ' + entry.type),
      ),
      body: Container(
        child: Text(formatDate(entry.dateTime) + " - " + entry.type),
      ),
    );
  }
}
