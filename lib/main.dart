import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('TopBar title'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () {
                      // do something
                    },
                    child: Text('first')),
                RaisedButton(
                    onPressed: () {
                      // do something
                    },
                    child: Text('second')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () {
                      // do something
                    },
                    child: Text('third')),
                RaisedButton(
                    onPressed: () {
                      // do something
                    },
                    child: Text('fourth')),
              ],
            )
          ],
        ));
  }
}
