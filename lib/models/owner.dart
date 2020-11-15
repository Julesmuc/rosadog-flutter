import 'package:rosadog/models/base.dart';

import 'dog.dart';

class Owner extends Base {
  final String email;
  final List<Dog> dogs;
  Owner({
    id,
    name,
    this.dogs = const [],
    this.email,
  }) : super(
          id: id,
          name: name,
        );
}
