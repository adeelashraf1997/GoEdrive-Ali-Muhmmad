import 'package:flutter/material.dart';

class privacy extends StatefulWidget {
  const privacy({Key key}) : super(key: key);

  @override
  _privacyState createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms & Condition"),
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
                        "Go E Drive Terms and Conditions",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Container(
                  height: 280,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Go E drive loves and takes good care of its customers, captains, colleagues, and societies. Our captains are our true associates and trusted partners who help people and their families to travel here are there with complete safety.\nBut before creating or signing in to an account of Go E  drive, one needs to agree with the terms and conditions of the company’s policy. In order to partner with us, drivers are asked to review and agree on the terms and conditions.\nSteps to be an active partner or client of Go E  drive are \n 1.Sign into partners.godrive.com.\n 2.Click the main menu on page \n 3.Select personal profile from the menu. \n 4.Select one of the listed agreements under contracts to review and agree to the terms and conditions written in it.",
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
                        "Updated Terms and Conditions",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Container(
                  height: 500,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Terms of service are the legal agreements and contracts between a service provider and a person who wants to use that service. Conditions are the guidelines and the rules of acceptable behavior and other useful sections to which users must agree in order to use the service.Timely updated terms and conditions of Go E drive are \n   1.Contractual Relationship\nThese contractual terms of service compose a legally binding agreement (the “Agreement”) between you and your local entity.\nThis agreement governs your use of the application, website, call centers, and technology platform (together they all collectively contribute to the “Go drive Platform”). Generally, the right to operate our platform is licensed globally to its relevant affiliates worldwide.\nGo drive may amend this agreement from time to time. Amendments prove very effective upon the company’s posting of an updated agreement at any location or the amended policies or supplemental terms applied on the applicable service.\n 1.The Go E drive platform \nOur spacious platform provides a digital network that functions as a marketplace where persons enjoy facilities of transportation service. Other amenities for our valuable clients are.\n 1.Delivery of products and valuable goods \n 2.Service of providing medicines \n 3.Delivering restaurants meals (just like food panda) \n 4.E-payment services (online transfer of money) \n 5.Other logistic services",
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
