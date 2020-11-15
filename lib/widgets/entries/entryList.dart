import 'package:flutter/material.dart';
import 'package:rosadog/models/dog.dart';
import 'package:rosadog/widgets/entries/entryListItem.dart';

class EntryList extends StatelessWidget {
  static final routeName = "/dogedit";
  const EntryList();

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    var dog = (routeArgs['dog'] as Dog);
    var deleteEntry = (routeArgs['deleteEntry'] as Function);
    var entries = dog.entries;
    return Scaffold(
      appBar: AppBar(
        title: Text("Entries for ${dog.name}"),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          var entry = entries[i];
          return EntryListItem(
            key: ValueKey(entry.id),
            entry: entry,
            deleteEntry: deleteEntry,
          );
        },
        itemCount: entries.length == null ? 0 : entries.length,
      ),
    );
  }
}
