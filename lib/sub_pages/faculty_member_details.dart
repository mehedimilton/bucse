import 'package:flutter/material.dart';
class FacultyMemberDetails extends StatefulWidget {
  String? dName;
  String? dImage;
  String? fMemberName;

  FacultyMemberDetails({Key? key,this.dName, this.dImage, this.fMemberName}) : super(key: key);

  @override
  _FacultyMemberDetailsState createState() => _FacultyMemberDetailsState();
}

class _FacultyMemberDetailsState extends State<FacultyMemberDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Faculty Member Details'),centerTitle: true,),
      body: Column(
        children: [
          Image.asset('${widget.dImage}'),
          Text('${widget.fMemberName}'),
          Text('${widget.dName}'),
        ],
      ),
    );
  }
}
