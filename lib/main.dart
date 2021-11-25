import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Calcurator Application"),
          ),
          body: Home(),
        ));
  }
}

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController quqntity = TextEditingController();
  double price = 10000;
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    //TODO inplement initState
    super.initState();
    result.text = "Buy finger ";
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/sukuna.jpg"),
              Text("SUKUNA",
                  style: TextStyle(
                      fontFamily: "tar",
                      fontSize: 100,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[700])),
              Text(
                "Calcutor Program",
              ),
              TextField(
                  controller: quqntity,
                  decoration: InputDecoration(
                      labelText: "Apple Amount", border: OutlineInputBorder())),
              ElevatedButton(
                  onPressed: () {
                    var cal = double.parse(quqntity.text) * price;
                    print(
                        "finger quality : ${quqntity.text} Total : ${cal} BTHB");

                    setState(() {
                      result.text = "buy ${quqntity.text} finger";
                    });
                  },
                  child: Text("Calcurator")),
              Text("Buy 5 apple,Bucause each apple cost 100 THB ,ToTal 500 THB")
            ],
          ),
        )),
      ],
    );
  }
}
