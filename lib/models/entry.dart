import 'package:rosadog/models/base.dart';

class Entry extends Base {
  final String type;
  final String note;
  final DateTime dateTime;
  final String dogId;

  Entry({
    id,
    name,
    this.type,
    this.note,
    this.dateTime,
    this.dogId,
  }) : super(
          id: id,
          name: name,
        );
}
