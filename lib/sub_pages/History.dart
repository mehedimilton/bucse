import 'package:flutter/material.dart';
class HistoryClass extends StatefulWidget {
  const HistoryClass({Key? key}) : super(key: key);

  @override
  _HistoryClassState createState() => _HistoryClassState();
}

class _HistoryClassState extends State<HistoryClass> {
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
      body: Padding(
        padding: EdgeInsetsDirectional.all(8),
        child: Container(
          child: SizedBox(
            height: 1100,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Card(
                    elevation: 2.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset("images/history2.jpg"),
                        ),
                        SizedBox(height: 20,),
                        Text(
                            "INTERNATIONAL PROGRAMING CONTEST 2014",
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                            "November 02, 2014",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "The 4th Quazi Azher Ali International Programming Contest 2014 Organized by Department of Computer Science & engineering (CSE) of Bangladesh University was held on the campus on Saturday, 27th December",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset("images/history1.jpg",fit: BoxFit.fill,width: MediaQuery.of(context).size.width,),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "FIRST 3D PRINTER IN BANGLADESH",
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                          "November 02, 2014",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "Bangladesh University thinks the access of modern technology should available to the future engineer which will help them to build their luminous career. By providing 3D printer in the classroom Bangladesh University want to ensure that the students graduated from here will be",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
