import 'package:device_tracking/add_device.dart';
import 'package:device_tracking/dashlist_model.dart';
import 'package:device_tracking/devices_screen.dart';
import 'package:device_tracking/user.dart';
import 'package:flutter/material.dart';
import 'package:device_tracking/global.dart' as globals;

import 'bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

List<DashList> dashlist = alldashlist;

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF1F6),
      appBar: AppBar(
        backgroundColor: Color(0xffEEF1F6),
        automaticallyImplyLeading: false,
        title: Text(
          'Dashboard',
          style: TextStyle(
              color: Color(0xff359DED),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'BalooDa2'),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffCFD8E1),
                          child: CircleAvatar(
                            radius: 48,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffA1C4FD),
                                    Color(0xffC2E9FB),
                                  ],
                                ),
                              ),
                              child: Icon(
                                Icons.computer,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 8.0, right: 50.0, bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Devices',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff359DED),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Baloo Da 2',
                            height: 2.3),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Available Devices :',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xffCFD8E1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Baloo Da 2'),
                          children: <TextSpan>[
                            TextSpan(
                              text: '0',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xff359DED),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Baloo Da 2'),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Total Devices :',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xffCFD8E1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Baloo Da 2'),
                          children: <TextSpan>[
                            TextSpan(
                              text: '6',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xff359DED),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Baloo Da 2'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: GestureDetector(

                        onTap: () {
                          print("clicked---");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottom(4,true)));
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffA18CD1),
                                Color(0xffFBC2EB),
                              ],
                            ),
                          ),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.white, size: 15),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 130,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffCFD8E1),
                          child: CircleAvatar(
                            radius: 48,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffA1C4FD),
                                    Color(0xffC2E9FB),
                                  ],
                                ),
                              ),
                              child: Icon(
                                Icons.person_sharp,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 8.0, right: 50.0, bottom: 10.0),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Users',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff359DED),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Baloo Da 2',
                            height: 2.3),
                      ),

                      RichText(
                        text: TextSpan(
                          text: 'Total User :',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xffCFD8E1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Baloo Da 2'),
                          children: <TextSpan>[
                            TextSpan(
                              text: '0',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xff359DED),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Baloo Da 2'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottom(4,true)));

                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffA18CD1),
                                Color(0xffFBC2EB),
                              ],
                            ),
                          ),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.white, size: 15),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
