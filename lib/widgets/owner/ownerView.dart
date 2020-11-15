import 'package:flutter/material.dart';

class OwnerView extends StatefulWidget {
  OwnerView({Key key}) : super(key: key);

  @override
  _OwnerViewState createState() => _OwnerViewState();
}

class _OwnerViewState extends State<OwnerView> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 1.5,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    ));
  }
}
