import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainActivity(),
  ));
}

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {

  double _value = 0.0;

  onChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider and Indicators"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Slider(
                  value: _value,
                  onChanged: onChanged),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: LinearProgressIndicator(
                value: _value,
                backgroundColor: Colors.red,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: CircularProgressIndicator(
                value: _value,
              ),
            ),
          )
        ],
      ),
    );
  }
}
