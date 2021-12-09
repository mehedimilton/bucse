import 'package:flutter/material.dart';
class DetailsClass extends StatelessWidget {
  const DetailsClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'History',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
