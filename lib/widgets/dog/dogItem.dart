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
    return InkWell(
      onTap: () => selectDog(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/dog.png",
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                      colorBlendMode: BlendMode.modulate,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      width: 100,
                      color: Colors.black54,
                      padding: EdgeInsets.all(2),
                      child: Text(
                        dog.name,
                        style: TextStyle(fontSize: 26, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
