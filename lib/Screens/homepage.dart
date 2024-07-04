import 'package:finance_manager/Widegts/Build_Accounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Utils/Image String.dart';
import '../Widegts/build_basic_UI.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: RichText(
            text: TextSpan(
                text: "Morning,  ",
                style: TextStyle(color: Colors.black, fontSize: 15),
                children: [
              TextSpan(
                  text: "Kratos",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 15))
            ])),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SvgPicture.asset(
              notification,
              width: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "\$25,362.36",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Main Balance",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  build_Container("Send", send),
                  build_Container("Deposit", receive),
                  build_Container("Scan", scan),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Accounts",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Show all",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  build_accounts("\$5.695.20", profile, "Personal",
                      Colors.blueAccent.withOpacity(0.5)),
                  build_accounts("\$18.332.96", business, "Business",
                      Colors.deepPurpleAccent.withOpacity(0.5))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "7d",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "15d",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "30d",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "\$20,245",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "12%",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "vs last week",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey[400]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
