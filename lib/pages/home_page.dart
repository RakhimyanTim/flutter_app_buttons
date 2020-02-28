import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  final String title;
  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState(
    title: this.title,
  );
}

class _HomePageState extends State<HomePage> {

  final String title;
  _HomePageState({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // IconButton
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: IconButton(
                icon: Icon(Icons.add_circle_outline, color: Colors.black,),
                onPressed: () {
                  print('pressed IconButton.');
                },
              ),
            ),
            // FlatButton
            FlatButton(
              child: Text('Flat Button'),
              onPressed: () {
                print('FlatButton pressed');
              },
            ),
            RaisedButton(
              child: Text('Raised Button'),
              onPressed: () {
                print('RaisedButton pressed');
              },
            ),
            // RaisedButton
            // FloatingActionButton
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('FAB'),
//        Icon(Icons.favorite_border),
        onPressed: () {
          print('Pressed FloatingActionButton');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
