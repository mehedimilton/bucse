import 'package:bucseproject/widget/decoration.dart';
import 'package:flutter/material.dart';
class FacultyMemberDetails extends StatefulWidget {
  String? dName;
  String? fImage;
  String? fMemberName;
  String? fid;
  String? fdesignation;
  String? facademicqualification;
  String? fteachingarea;
  String? fresearch;
  String? fjournalpublication;

  FacultyMemberDetails({
    this.dName,
    this.fImage,
    this.fMemberName,
    this.fid,
    this.fdesignation,
    this.facademicqualification,
    this.fteachingarea,
    this.fresearch,
    this.fjournalpublication});

  @override
  _FacultyMemberDetailsState createState() => _FacultyMemberDetailsState();
}

class _FacultyMemberDetailsState extends State<FacultyMemberDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Faculty Member Details'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(child: Image.asset('${widget.fImage}',fit: BoxFit.fill,width: MediaQuery.of(context).size.width,)),
              SizedBox(height: 10,),
              Container(
                width: size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Faculty Id :  ${widget.fid}',style: TextStyle(color: Colors.white),),
                    Text('Faculty Name : ${widget.fMemberName}',style: TextStyle(color: Colors.white),),
                    Text('Designation : ${widget.fdesignation}',style: TextStyle(color: Colors.white),),
                    Text('Department : ${widget.dName}',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Heading('Academic Qualification : ',16.0,size.width,Colors.grey,Colors.black),
              Text('${widget.facademicqualification}'),
              Heading('Teaching Area : ',16.0,size.width,Colors.grey,Colors.black),
              Text('${widget.fteachingarea}'),
              Heading('Research :',16.0,size.width,Colors.grey,Colors.black),
              Text(' ${widget.fresearch}'),
              Heading('Journal Publications :',16.0,size.width,Colors.grey,Colors.black),
              Text('${widget.fjournalpublication}')
            ],
          ),
        ),
      ),
    );
  }
}
