import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();



  void add() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1+num2;
    });
  }


  void sub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1-num2;
    });
  }


  void mul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1*num2;
    });
  }


  void div() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum  = num1/num2;
    });
  }


  void clear() {
    setState(() {
      t1.clear();
      t2.clear();
      sum  = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Output : $sum",
            textScaleFactor: 1.5,
            style: TextStyle(color: Colors.orangeAccent),
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: "Enter Number 1",
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),

            controller: t1,
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: "Enter Number 2",
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: t2,
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 15.0),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
                onPressed: add,
                child: new Text("+"),
                color: Colors.greenAccent,
              ),
              new MaterialButton(
                onPressed: sub,
                child: new Text("-"),
                color: Colors.greenAccent,
              ),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 15.0),
          ),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: mul,
                  child: new Text("*"),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  onPressed: div,
                  child: new Text("/"),
                  color: Colors.greenAccent,
                ),
              ],
            ),
          new MaterialButton(
            color: Colors.greenAccent,
            onPressed: clear,
          child: new Text("Clear"),
          ),

        ],
      ),
    );
  }
}
