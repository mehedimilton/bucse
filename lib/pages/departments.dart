import 'package:bucseproject/sub_pages/faculty_member_list.dart';
import 'package:flutter/material.dart';

class Departments extends StatefulWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  _DepartmentsState createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Departments'),centerTitle: true,),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: size.height * .85,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisExtent: size.height * .12,
                  mainAxisSpacing: size.height*.01,
                  crossAxisSpacing: size.width*.015


                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return GridBuilderTile(index: index);
                }),
          )
        ],
      ),
    );
  }
}
class GridBuilderTile extends StatelessWidget {
  int? index;

  GridBuilderTile({this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FacultyMemberList()));

        if (index == 0) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => FacultyMemberList()));
        } else if (index == 1) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Departments()));

        } else if (index == 2) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Campuses()));

        } else if (index == 3) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => AcademicSupport()));

        } else if (index == 4) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => ContractUsClass()));

        } else if (index == 5) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => About()));

        }
        else if (index == 6) {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => About()));

        } else {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SiteMap()));

        }
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white70,
              blurRadius: 1,
              spreadRadius: 1
            )
          ]
        ),
        alignment: Alignment.center,
        child: Text(
          index==0?'CSE'
              :index==1?'EEE'
              :index==2?'Architecture '
              :index==3?'Math '
              :index==4?'English '
              :index==5?'LLB '
              :index==6?'Pharmacy '
              :'Economics ',

          style: TextStyle(
              fontSize: size.height*.023
          ),

        ),
      ),
    );
  }
}