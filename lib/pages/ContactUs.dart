import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContractUsClass extends StatefulWidget {
  const ContractUsClass({Key? key}) : super(key: key);

  @override
  _ContractUsClassState createState() => _ContractUsClassState();
}

class _ContractUsClassState extends State<ContractUsClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contract Us',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(Icons.add_to_home_screen),
                          label: Text(
                            "Our Website",
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () => launch("https://cse.bu.edu.bd/"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.amber, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(Icons.facebook),
                          label: Text(
                            "Like Us On Facebook",
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () => launch(
                              "https://www.facebook.com/bangladeshuni/"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(Icons.phone),
                          label: Text(
                            "Phone",
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () => launch("tel://+8801755559301"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.pinkAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(Icons.email),
                          label: Text(
                            "Email",
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () => launch(
                              "mailto:cse@bu.edu.bd?subject=Hi&body=How are you%20plugin"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepPurple, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(Icons.map),
                          label: Text(
                            "BU Map",
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () async {
                            //double.parse(widget.latitude),double.parse(widget.longitude)
                            double lat = 23.7614822;
                            double long =90.3674428;
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
                          },
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
    );
  }
}
