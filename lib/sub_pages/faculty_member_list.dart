import 'package:bucseproject/data/faculty_data.dart';
import 'package:bucseproject/model/faculty_model.dart';
import 'package:flutter/material.dart';

import 'faculty_member_details.dart';
class FacultyMemberList extends StatefulWidget {
  const FacultyMemberList({Key? key}) : super(key: key);

  @override
  _FacultyMemberListState createState() => _FacultyMemberListState();
}

class _FacultyMemberListState extends State<FacultyMemberList> {
  List <Faculty> faculty=<Faculty> [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    faculty=GetFaculty();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Faculty Member List'),),
      body: ListView.builder(
        itemCount: faculty.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FacultyMemberDetails(
                      fMemberName:faculty[index].fMemberName,
                      dName:faculty[index].dName,
                      dImage:faculty[index].dImage,
                  )));
                },
                title: Text('${faculty[index].fMemberName}'),
                subtitle: Text('${faculty[index].dName}'),
                leading: Image.asset('${faculty[index].dImage}'),
              ),
            );
          }),
    );
  }
}
