import 'package:flutter/material.dart';

class DogAddView extends StatefulWidget {
  static final String routeName = "/dogadd";
  DogAddView({Key key}) : super(key: key);

  @override
  _DogAddViewState createState() => _DogAddViewState();
}

final _formKey = GlobalKey<FormState>();
InputDecoration formLabel(String text) {
  return InputDecoration(
    labelText: text,
    labelStyle: TextStyle(
      color: Colors.black87,
      fontSize: 17,
    ),
  );
}

String validator(value) {
  if (value.isEmpty) {
    return 'Please enter some text';
  }
  return null;
}

class _DogAddViewState extends State<DogAddView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new dog"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: formLabel("Name"),
                validator: validator,
              ),
              TextFormField(
                decoration: formLabel("Breed"),
                validator: validator,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Save dog'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
