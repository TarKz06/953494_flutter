import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
            Text("Khematat"),
            Text("Suphamittanont"),
            Text("@CAmt")
          ],),
        )
      ],
    );
  }
}