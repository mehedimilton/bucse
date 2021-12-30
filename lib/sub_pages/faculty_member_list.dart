import 'package:bucseproject/add_database/add_faculty.dart';
import 'package:bucseproject/data/faculty_data.dart';
import 'package:bucseproject/model/faculty_model.dart';
import 'package:bucseproject/provider/auth_provider.dart';
import 'package:bucseproject/sub_pages/faculty_member_details.dart';
import 'package:bucseproject/widgets/notification_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FacultyMemberList extends StatefulWidget {
String? departmentname;
  @override
  _FacultyMemberListState createState() => _FacultyMemberListState();

FacultyMemberList({this.departmentname});
}

class _FacultyMemberListState extends State<FacultyMemberList> {
  // List<FacultyModel> faculty = <FacultyModel>[];
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   faculty = GetFaculty();
  // }

  @override
  Widget build(BuildContext context) {
    final AuthProvider authProvider=Provider.of<AuthProvider>(context);
    authProvider.getFacultyByCategory('${widget.departmentname}');
    //authProvider.getFaculty();
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.departmentname}'),
        centerTitle: true,
      ),
      body: _bodyUI(authProvider),
    );
  }
  Widget _bodyUI(AuthProvider authProvider){
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: authProvider.facultyCategoryList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FacultyMemberDetails(
                        id: authProvider.facultyCategoryList[index].id,
                        fid: authProvider.facultyCategoryList[index].fid,
                        fphone: authProvider.facultyCategoryList[index].fphone,
                        fpassword: authProvider.facultyCategoryList[index].fpassword,
                        fmembername: authProvider.facultyCategoryList[index].fmembername,
                        fmemberemail: authProvider.facultyCategoryList[index].fmemberemail,
                        fdesignation: authProvider.facultyCategoryList[index].fdesignation,
                        fimage: authProvider.facultyCategoryList[index].fimage,
                        departmentname: authProvider.facultyCategoryList[index].departmentname,
                        facademicqualification:
                        authProvider.facultyCategoryList[index].facademicqualification,
                        fteachingarea: authProvider.facultyCategoryList[index].fteachingarea,
                        fresearch: authProvider.facultyCategoryList[index].fresearch,
                        fjournalpublication: authProvider.facultyCategoryList[index].fjournalpublication,
                      )));
            },
            child: Container(
              height: size.height * 0.13,
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.01,
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
                  authProvider.facultyCategoryList[index].fimage!=null ?Image.network(
                    '${authProvider.facultyCategoryList[index].fimage}',
                    width: size.width * 0.3,
                    height: size.height * 0.12,
                    fit: BoxFit.fill,
                  ):Image.asset('images/user.png',width: size.width * 0.3,
                    height: size.height * 0.12,
                    fit: BoxFit.fill,),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${authProvider.facultyCategoryList[index].fmembername}',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('${authProvider.facultyCategoryList[index].fdesignation}'),
                        Text('${authProvider.facultyCategoryList[index].departmentname}'),


                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
