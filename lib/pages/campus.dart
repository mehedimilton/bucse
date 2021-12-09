import 'package:flutter/material.dart';
class Campuses extends StatefulWidget {
  const Campuses({Key? key}) : super(key: key);

  @override
  _CampusesState createState() => _CampusesState();
}

class _CampusesState extends State<Campuses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Campuses'),centerTitle: true,),
      body: Center(
        child: Text('Campuses'),
      ),
    );
  }
}
