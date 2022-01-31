import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({Key key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
        elevation: 1,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "Privacy Policy",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 35,
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                  alignment: Alignment.topLeft,
                  height: 30,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: Text(
                        "Go E Drive Privacy Policy",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Container(
                  height: 180,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Whenever you contact Go E drive, you share your personal data with us. Our professional drivers try their maximum to keep your data safe and sound as they are well aware that keeping personal data without permission is an illegal activity under the laws of Pakistan.This is the basis of your trust in our privacy policies. At our company, we have a streamlined process that how we collect your data, how it is shared and used, and what can be done if data is retained illegally by any person. ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  height: 30,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: Text(
                        "Scope and Application",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Container(
                  height: 200,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Building trust is the most important element, and that is why our privacy policy has high scope. This article explains how Go E  drive and its associates collect your data. Our privacy policy applies to\n 1.Persons who access or use the Go E  drive services i.e., Users\n 2.Partner transportation companies that provide driving services and drivers i.e., Captains \n As per our privacy policy, no personal information from children under the age of 18 is knowingly collected, kept, or maintained.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  height: 30,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: Text(
                        "Collection of Information",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Container(
                  height: 220,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "It is the information you give away to our Go E  drive captains. Our company only collects the information you provide when you book a car or taxi. Your data enables us to determine safe places and the proper time schedule for pickups and drop-offs.\nThrough our safety campaign, we promote safe driving habits, effectively share the road maps with other travelers, and develop new features. Moreover, our privacy policy specifically applies to \n 1.Driver \n 2.Rider \n 3.Delivery recipients\n 4.Delivery persons",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  height: 30,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: Text(
                        "Use of Personal Data",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Container(
                  height: 100,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Retaining personal data and information is a void and illegal activity. We use your data only to provide appropriate transportation and delivery opportunities. Besides that, we help drivers",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
