import 'package:bucseproject/pages/ContactUs.dart';
import 'package:bucseproject/pages/about.dart';
import 'package:bucseproject/pages/academicsupport.dart';
import 'package:bucseproject/pages/campus.dart';
import 'package:bucseproject/pages/departments.dart';
import 'package:bucseproject/pages/my_account.dart';
import 'package:bucseproject/pages/site_map.dart';
import 'package:flutter/material.dart';

class HomeClass extends StatefulWidget {
  const HomeClass({Key? key}) : super(key: key);

  @override
  _HomeClassState createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bangladesh University',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset("images/bucam.jpg"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "About CSE",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AcademicSupport()));
              },
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Academic Support",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Faculty Memember",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Syllabus",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Photo Gallery",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "History",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContractUsClass()));
              },
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Contract Us",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        //height: size.height*.99,
        child: Column(
          children: [
            Image.asset(
              "images/BU.png",
              height: size.height * .30,
              width: size.width,
              fit: BoxFit.fill,
            ),
            Container(
              height: size.height * .55,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: size.height * .2),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return GridBuilderTile(index: index);
                  }),
            )
          ],
        ),
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
        if (index == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyAccount()));
        } else if (index == 1) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Departments()));
        } else if (index == 2) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Campuses()));
        } else if (index == 3) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AcademicSupport()));
        } else if (index == 4) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContractUsClass()));
        } else if (index == 5) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => About()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SiteMap()));
        }
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
          //color: Color(0xffF4F7F5),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              height: size.height * .12,
              width: size.height * .15,
              decoration: BoxDecoration(
                color: Color(0xffF4F7F5),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: index == 0
                      ? AssetImage('images/home_icon/account.png')
                      : index == 1
                          ? AssetImage('images/home_icon/department.png')
                          : index == 2
                              ? AssetImage('images/home_icon/campus.png')
                              : index == 3
                                  ? AssetImage(
                                      'images/home_icon/customer-service.png')
                                  : index == 4
                                      ? AssetImage(
                                          'images/home_icon/contact.png')
                                      : index == 5
                                          ? AssetImage(
                                              'images/home_icon/about us.png')
                                          : AssetImage(
                                              'images/home_icon/destination.png'),
                ),
              ),
              height: size.height * .09,
              width: size.height * .09,
            ),
          ]),
          SizedBox(height: 2),
          Text(
            index == 0
                ? 'My Account'
                : index == 1
                    ? 'Departments'
                    : index == 2
                        ? 'Campuses'
                        : index == 3
                            ? 'Academic Support'
                            : index == 4
                                ? 'Contact Us'
                                : index == 5
                                    ? 'About Us'
                                    : 'Site Map',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context).primaryColor, //Color(0xff00C5A4),
                fontSize: size.height * .03,
                fontWeight: FontWeight.bold),
          )
        ],
      )),

      ///
      // Card(
      //   child: Container(
      //     alignment: Alignment.center,
      //     child: Text(
      //       index==0?'About'
      //       :index==1?'Academic'
      //       :index==2?'Academic '
      //       :index==3?'Academic '
      //       :index==4?'Academic '
      //       :'Academic ',
      //
      //       style: TextStyle(
      //         fontSize: size.height*.03
      //       ),
      //
      //     ),
      //   ),
      // )
      ///
      // Container(
      //   //color: Color(0xffF4F7F5),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Stack(alignment: Alignment.center, children: [
      //           Container(
      //             height: size.width*.17,
      //             width: size.width*.17,
      //             decoration: BoxDecoration(
      //               color: Color(0xffF4F7F5),
      //               borderRadius: BorderRadius.all(Radius.circular(40)),
      //             ),
      //           ),
      //           // Container(
      //           //   decoration: BoxDecoration(
      //           //     image: DecorationImage(
      //           //       image: index == 0
      //           //           ? AssetImage(
      //           //           'assets/home_icon/account.png')
      //           //           :index == 1
      //           //           ? AssetImage('assets/home_icon/doctor.png')
      //           //           : index == 2
      //           //           ? AssetImage('assets/home_icon/appointment.png')
      //           //           : index == 3
      //           //           ? AssetImage('assets/home_icon/shop.png')
      //           //           : index == 4
      //           //           ? AssetImage('assets/home_icon/medicine.png')
      //           //           :index==5
      //           //           ? AssetImage('assets/home_icon/notifications.png')
      //           //           : index == 6
      //           //           ? AssetImage(
      //           //           'assets/home_icon/shopping.png')
      //           //           : index == 7
      //           //           ? AssetImage(
      //           //           'assets/home_icon/forum.png')
      //           //           : index == 8
      //           //           ? AssetImage(
      //           //           'assets/home_icon/blog.png')
      //           //           : index == 9
      //           //           ? AssetImage(
      //           //           'assets/home_icon/credit_assesment.png')
      //           //           : index == 10
      //           //           ? AssetImage(
      //           //           'assets/home_icon/health_insurance.png')
      //           //           : index == 11
      //           //           ? AssetImage(
      //           //           'assets/home_icon/join_riders.png')
      //           //           : AssetImage(
      //           //           'assets/home_icon/support.png'),
      //           //     ),
      //           //   ),
      //           //   height: size.width*.09,
      //           //   width: size.width*.09,
      //           // ),
      //         ]),
      //         SizedBox(height: 5),
      //         Text(
      //           index == 0
      //               ? 'My Account'
      //               :index == 1
      //               ? 'Doctors'
      //               : index == 2
      //               ? 'Appointment'
      //               : index == 3
      //               ? 'Discount Shop'
      //               : 'Support Center',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //               color: Theme.of(context).primaryColor, //Color(0xff00C5A4),
      //               fontSize: size.width*.04,
      //               fontWeight: FontWeight.bold),
      //         )
      //       ],
      //     )),
    );
  }
}
