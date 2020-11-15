import 'package:flutter/material.dart';
import '../../models/dog.dart';

class DogItem extends StatelessWidget {
  final Dog dog;
  final Function deleteEntry;
  DogItem(this.dog, this.deleteEntry);

  void selectDog(context) {
    Navigator.of(context).pushNamed(
      '/dogedit',
      arguments: {'dog': dog, "deleteEntry": deleteEntry},
    );
  }

  @override
  Widget build(BuildContext context) {
    var head6 = Theme.of(context).textTheme.button;
    return InkWell(
      onTap: () => selectDog(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ]),
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Text(
                dog.name,
                style: head6,
              ),
              Text(
                dog.breed,
                style: head6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
