import 'package:flutter/material.dart';
import 'package:rosadog/models/entry.dart';
import 'package:rosadog/widgets/entries/entryView.dart';

import '../../helper.dart';

class EntryListItem extends StatelessWidget {
  final Entry entry;
  final Function deleteEntry;

  const EntryListItem({
    Key key,
    @required this.entry,
    @required this.deleteEntry,
  }) : super(key: key);

  void editEntry(BuildContext context) {
    Navigator.of(context).pushNamed(EntryView.routeName, arguments: entry);
  }

  @override
  build(BuildContext context) {
    const deleteIcon = const Icon(Icons.delete);
    const editIcon = const Icon(Icons.edit);

    return Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: ListTile(
        leading: Text(formatDate(entry.dateTime)),
        title: Text(
          entry.type,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          entry.note,
          style: Theme.of(context).textTheme.headline5,
        ),
        contentPadding: const EdgeInsets.all(10),
        trailing: MediaQuery.of(context).size.width > 600
            ? Wrap(
                children: [
                  FlatButton.icon(
                    icon: editIcon,
                    label: const Text("edit"),
                    textColor: Theme.of(context).accentColor,
                    onPressed: () => editEntry(context),
                  ),
                  FlatButton.icon(
                    icon: deleteIcon,
                    label: const Text("delete"),
                    textColor: Theme.of(context).errorColor,
                    onPressed: () => deleteEntry(
                      entry.dogId,
                      entry.id,
                    ),
                  ),
                ],
              )
            : Wrap(
                children: [
                  IconButton(
                      icon: editIcon,
                      color: Theme.of(context).accentColor,
                      onPressed: () => editEntry(context)),
                  IconButton(
                      icon: deleteIcon,
                      color: Theme.of(context).errorColor,
                      onPressed: () => deleteEntry(
                            entry.dogId,
                            entry.id,
                          )),
                ],
              ),
      ),
    );
  }
}
