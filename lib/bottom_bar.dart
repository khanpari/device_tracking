import 'package:device_tracking/add_device.dart';
import 'package:device_tracking/dashboard.dart';
import 'package:device_tracking/devices_screen.dart';
import 'package:device_tracking/global.dart' as globals;
import 'package:device_tracking/history.dart';
import 'package:device_tracking/user.dart';
import 'package:device_tracking/user_list.dart';
import 'package:flutter/material.dart';

import 'my_devices.dart';

class Bottom extends StatefulWidget {
  final bool fromDeviceList;
  final int getSelectedIndex;
  const Bottom(this.getSelectedIndex, this.fromDeviceList, {Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  // int page = 0;
  int selectedIndex = 0;

  List screens = [
    Devices(),
    Dashboard(),
    History(),
    UsersList(),
    Devices_Screen(),
    User(),
    AddDevice(),

  ];
  get widgetOptions => null;
  @override
  Widget build(BuildContext context) {
    print("globals.selectedIndex-----------------------------------");
    print(globals.selectedIndex);

    return Scaffold(
      backgroundColor: Color(0xffEEF1F6),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.all(Radius.circular(60.0)),
          child: Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
                color: Color(0xff359DED),
                borderRadius: BorderRadius.all(Radius.circular(60.0))),
            child: BottomNavigationBar(
              backgroundColor: Color(0xff359DED),
              items: [
                BottomNavigationBarItem(
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      selectedIndex == 0
                          ? Image.asset(
                              'assets/images/mydevice.png',
                              color: Color(0xffDDDDDD),
                              width: 25,
                              height: 25,
                            )
                          : Image.asset(
                              'assets/images/mydevice.png',
                              color: Color(0xff1F1F1F),
                              width: 25,
                              height: 25,
                            ),
                      selectedIndex == 0
                          ? Text(
                              "My Devices",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffDDDDDD)),
                            )
                          : Text(
                              "My Devices",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1F1F1F)),
                            )
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      selectedIndex == 1
                          ? Image.asset(
                              'assets/images/alldevice.png',
                              color: Color(0xffDDDDDD),
                              width: 25,
                              height: 25,
                            )
                          : Image.asset(
                              'assets/images/alldevice.png',
                              color: Color(0xff1F1F1F),
                              width: 25,
                              height: 25,
                            ),
                      selectedIndex == 1
                          ? Text(
                              "All Devices",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffDDDDDD)),
                            )
                          : Text(
                              "All Devices",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1F1F1F)),
                            )
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      selectedIndex == 2
                          ? Image.asset(
                              'assets/images/account.png',
                              color: Color(0xffDDDDDD),
                              width: 25,
                              height: 25,
                            )
                          : Image.asset(
                              'assets/images/account.png',
                              color: Color(0xff1F1F1F),
                              width: 25,
                              height: 25,
                            ),
                      selectedIndex == 2
                          ? Text(
                              "Account",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffDDDDDD)),
                            )
                          : Text(
                              "Account",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1F1F1F)),
                            )
                    ],
                  ),
                  label: '',
                ),
              ],
              currentIndex: globals.selectedIndex,
              selectedItemColor: Color(0xffDDDDDD),
              unselectedItemColor: Color(0xff1F1F1F),
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
      body: Center(
        child: screens.elementAt(selectedIndex),
      ),
    );
  }

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    print("selectedIndex-------------------------------");
    if(widget.fromDeviceList != null && widget.fromDeviceList){
      selectedIndex = widget.getSelectedIndex;
    }
    // print(widget.selectedIndex);
  }

  _onItemTapped(int index) {
    print("INDEX_-------------------------");
    print(index);
    print("widget.getSelectedIndex------------------------");
    print(widget.getSelectedIndex);
    print("fromDeviceList--------------------------");
    print(widget.fromDeviceList);
    setState(() {
        selectedIndex = index;

      // print(globals.selectedIndex);

      // page = index;
      screens[index];
    });
  }
}
