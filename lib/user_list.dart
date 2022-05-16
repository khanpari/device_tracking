import 'package:device_tracking/userlist_model.dart';
import 'package:flutter/material.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersList();
}

class _UsersList extends State<UsersList> {
  void searchUser(String query) {
    final suggestions = alluser.where((User) {
      final name = User.name.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() => userlist = suggestions);
  }

  final controller = TextEditingController();
  List<UserList> userlist = alluser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF1F6),
      appBar: AppBar(
        backgroundColor: Color(0xffEEF1F6),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
            onPressed: () {
              Navigator.of(context).pop();
            }),

        title: Text(
          'Users',
          style: TextStyle(
              color: Color(0xff359DED),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'BalooDa2'),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xff359DED),
                            borderRadius:
                            BorderRadius.all(Radius.circular(60.0))),
                        child: ImageIcon(
                          AssetImage('assets/images/Search.png'),
                          color: Colors.white,
                        )),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xffCFD8E1),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Baloo Da 2'),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(
                        color: Color(0xffEEF1F6),
                        width: 2.0,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(
                        color: Color(0xff359DED),
                        width: 2.0,
                      )),
                ),
                onChanged: searchUser,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, bottom: 5, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: SingleChildScrollView(
                  child: Expanded(
                    child: ListView.builder(
                      // add this
                      shrinkWrap: true,
                      itemCount: userlist.length,
                      itemBuilder: (context, index) {
                        var userllist = userlist[index];
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0,
                                  left: 8.0,
                                  right: 50.0,
                                  bottom: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    userllist.name,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xff359DED),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Baloo Da 2',
                                        height: 2.3),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.call,
                                        color: Color(0xff349DE0),
                                      ),
                                      // const Text('#',style: TextStyle(color: Color(0xff349DE0))),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        userllist.number,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0xffCFD8E1),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Baloo Da 2'),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.email_outlined,
                                        color: Color(0xff349DE0),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        userllist.email,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0xffCFD8E1),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Baloo Da 2'),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );

  }
}

