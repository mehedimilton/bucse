import 'package:bucseproject/data/faculty_data.dart';
import 'package:bucseproject/model/faculty_model.dart';
import 'package:flutter/material.dart';

import 'faculty_member_details.dart';

class FacultyMemberList extends StatefulWidget {

  @override
  _FacultyMemberListState createState() => _FacultyMemberListState();
}

class _FacultyMemberListState extends State<FacultyMemberList> {
  List<Faculty> faculty = <Faculty>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    faculty = GetFaculty();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty Member List'),
      ),
      body: ListView.builder(
          itemCount: faculty.length,
          itemBuilder: (context, index) { 
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FacultyMemberDetails(
                              fid: faculty[index].fid,
                              fMemberName: faculty[index].fMemberName,
                              fdesignation: faculty[index].fdesignation,
                              fImage: faculty[index].fImage,
                              dName: faculty[index].dName,
                              facademicqualification:
                                  faculty[index].facademicqualification,
                              fteachingarea: faculty[index].fteachingarea,
                              fresearch: faculty[index].fresearch,
                              fjournalpublication:
                                  faculty[index].fjournalpublication,
                            )));
              },
              child: Container(
                height: size.height * 0.13,
                padding: EdgeInsets.symmetric(
                  //horizontal: size.width * 0.02,
                    vertical: size.height * 0.005),
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.009),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(size.height*0.012),
                    border: Border.all(
                        color: Colors.grey,
                        width: 2
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      '${faculty[index].fImage}',
                      width: size.width * 0.3,
                      height: size.height * 0.12,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${faculty[index].fMemberName}',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('${faculty[index].fdesignation}'),
                          Text('${faculty[index].dName}'),


                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
