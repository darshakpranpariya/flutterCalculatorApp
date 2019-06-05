import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();
  void add(){
    setState(() {
      sum = int.parse(t1.text) + int.parse(t2.text); 
    });}
  void sub(){
    setState(() {
      sum = int.parse(t1.text) - int.parse(t2.text); 
    });}
 void mul(){
    setState(() {
      sum = int.parse(t1.text) * int.parse(t2.text);
    });}
  void div(){
    setState(() {
      sum = (int.parse(t1.text) ~/ int.parse(t2.text)); 
    });}
    void clear(){
      setState(() {
       t1.text="0";
       t2.text="0";
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text("Output: $sum",style: TextStyle(fontSize: 25.0,color: Colors.purpleAccent,fontWeight: FontWeight.bold),),
              TextField(
                keyboardType: TextInputType.number,
                controller: t1,
                decoration: InputDecoration(
                  hintText: "Enter first number",
                  hintStyle: TextStyle(fontSize: 25.0,color: Colors.teal)
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: t2,                decoration: InputDecoration(
                  hintText: "Enter second number",
                  hintStyle: TextStyle(fontSize: 25.0,color: Colors.teal)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    splashColor: Colors.red,
                    color: Colors.purpleAccent,
                    child: Text("+"),
                    onPressed: add,
                  ),
                  RaisedButton(
                    splashColor: Colors.red,
                    color: Colors.purpleAccent,
                    child: Text("-"),
                    onPressed: sub,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    splashColor: Colors.red,
                    color: Colors.purpleAccent,
                    child: Text("*"),
                    onPressed: mul,
                  ),
                  RaisedButton(
                    color: Colors.purpleAccent,
                    splashColor: Colors.red,
                    child: Text("/"),
                    onPressed: div,
                  )
                ],
              ),
              Padding(padding: const EdgeInsets.only(top:15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.purpleAccent,
                    splashColor: Colors.red,
                    child: Text("Clear"),
                    onPressed: clear,
                  )
                ],
              )
            ],
          ),
      ),
    );
  }
}