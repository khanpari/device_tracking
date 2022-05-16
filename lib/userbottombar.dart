
import 'package:flutter/material.dart';

class BottomNavigationBarUser extends StatefulWidget {
  const BottomNavigationBarUser({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0, bottom: 17),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.094,
          color: Color(0xff359DED),

          child: const DefaultTabController(
            length: 3,
            child: TabBar(
              tabs: [
                Tab(
                  text: 'My Device',
                  icon: Icon(
                    Icons.phone_iphone,
                    size: 30,
                  ),
                ),
                Tab(
                  text: 'All Device',
                  icon: Icon(
                    Icons.devices,
                    size: 30,
                  ),
                ),
                Tab(
                  text: 'Account',
                  icon: Icon(
                    Icons.person,
                    size: 30,
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
