import 'package:rosadog/models/base.dart';
import 'package:rosadog/models/owner.dart';
import './entry.dart';

enum Sex { MALE, FEMALE }

class Dog extends Base {
  final Sex sex;
  final DateTime birthday;
  final String breed;
  final String description;
  final bool neutered;
  final List<Entry> entries;
  final Owner owner;
  Dog(
      {this.sex,
      this.birthday,
      this.breed,
      this.description,
      this.neutered,
      this.entries,
      this.owner,
      name,
      id})
      : super(
          name: name,
          id: id,
        );
}
