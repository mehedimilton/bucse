import 'package:bucseproject/pages/ContactUs.dart';
import 'package:bucseproject/pages/about.dart';
import 'package:bucseproject/pages/academicsupport.dart';
import 'package:bucseproject/pages/campus.dart';
import 'package:bucseproject/pages/departments.dart';
import 'package:bucseproject/pages/my_account.dart';
import 'package:bucseproject/pages/site_map.dart';
import 'package:bucseproject/pages/syllabus.dart';
import 'package:bucseproject/sub_pages/about-cse.dart';
import 'package:bucseproject/sub_pages/history.dart';
import 'package:bucseproject/sub_pages/faculty_member_details.dart';
import 'package:bucseproject/sub_pages/faculty_member_list.dart';
import 'package:bucseproject/sub_pages/photogallery.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutCse()));
              },
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FacultyMemberList()));
              },
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Faculty Memember",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SylabusClass()));
              },
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Syllabus",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PhotoGallery()));
              },
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                "Photo Gallery",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HistoryClass()));
              },
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
            Expanded(
              child: Container(
                height: size.height * .55,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: size.height * .2),
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return GridBuilderTile(index: index);
                    }),
              ),
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
      onTap: () async{
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

            //double.parse(widget.latitude),double.parse(widget.longitude)
            double lat = 23.7614762;
            double long =90.3673922;
            final String googleMapslocationUrl =
                "https://www.google.com/maps/search/?api=1&query=$lat,$long";

            final String encodedURl =
            Uri.encodeFull(googleMapslocationUrl);

            if (await canLaunch(encodedURl)) {
        await launch(encodedURl);
        } else {
        print('Could not launch $encodedURl');
        throw 'Could not launch $encodedURl';
        }

          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SiteMap()));
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
                fontSize: size.height * .022,
                fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
