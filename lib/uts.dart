import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _tinggiController = TextEditingController();
  final TextEditingController _beratController = TextEditingController();

  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator BMI'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan tinggi badan kamu',
                icon: Icon(Icons.height_outlined),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _beratController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan berat badan kamu',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              color: Colors.pinkAccent,
              child: Text(
                "Hitung",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: calculateBMI,
            ),
            SizedBox(height: 15),
            Text(
              _result == null ? "Enter Value" : "${_result.toStringAsFixed(2)}",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_tinggiController.text) / 100;
    double weight = double.parse(_beratController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {});
  }
}
