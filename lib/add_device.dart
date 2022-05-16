
import 'package:device_tracking/bottom_bar.dart';
import 'package:flutter/material.dart';

class AddDevice extends StatefulWidget {
  const AddDevice({Key? key}) : super(key: key);

  @override
  State<AddDevice> createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();

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
          'Add Device',
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
              margin: EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: TextFormField(
                      //  validator: (value) => validateEmail(value),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // labelText: 'Enter email',
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Color(0xffEEF1F6)
                                : Color(0xff359DED)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xffEEF1F6),
                              width: 2.0,
                            )),
                        hintText: 'Device name',
                        hintStyle: TextStyle(fontSize: 14.0, color: Color(0xffCFD8E1
                        ),fontWeight: FontWeight.w400,fontFamily: 'Baloo Da 2'),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff359DED),
                              width: 2.0,
                            )),

                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: TextFormField(
                      //  validator: (value) => validateEmail(value),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // labelText: 'Enter email',
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Color(0xffEEF1F6)
                                : Color(0xff359DED)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xffEEF1F6),
                              width: 2.0,
                            )),
                        hintText: 'Device Type',
                        hintStyle: TextStyle(fontSize: 14.0, color: Color(0xffCFD8E1
                        ),fontWeight: FontWeight.w400,fontFamily: 'Baloo Da 2'),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff359DED),
                              width: 2.0,
                            )),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: TextFormField(
                      //  validator: (value) => validateEmail(value),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // labelText: 'Enter email',
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Color(0xffEEF1F6)
                                : Color(0xff359DED)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xffEEF1F6),
                              width: 2.0,
                            )),
                        hintText: 'Serial No',
                        hintStyle: TextStyle(fontSize: 14.0, color: Color(0xffCFD8E1
                        ),fontWeight: FontWeight.w400,fontFamily: 'Baloo Da 2'),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff359DED),
                              width: 2.0,
                            )),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: TextFormField(
                      //  validator: (value) => validateEmail(value),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // labelText: 'Enter email',
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Color(0xffEEF1F6)
                                : Color(0xff359DED)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xffEEF1F6),
                              width: 2.0,
                            )),
                        hintText: 'Manage By',
                        hintStyle: TextStyle(fontSize: 14.0, color: Color(0xffCFD8E1
                        ),fontWeight: FontWeight.w400,fontFamily: 'Baloo Da 2'),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff359DED),
                              width: 2.0,
                            )),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: TextFormField(
                      //  validator: (value) => validateEmail(value),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // labelText: 'Enter email',
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Color(0xffEEF1F6)
                                : Color(0xff359DED)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xffEEF1F6),
                              width: 2.0,
                            )),
                        hintText: 'Issue Date(dd/mm/yyyy)',
                        hintStyle: TextStyle(fontSize: 14.0, color: Color(0xffCFD8E1
                        ),fontWeight: FontWeight.w400,fontFamily: 'Baloo Da 2'),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff359DED),
                              width: 2.0,
                            )),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 50.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          // color: Color(0xff14AD35),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xff359DED), Color(0xff359DED)],
                          )),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Bottom(6,false);
                              }));

                        },
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontFamily: 'BalooDa2',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
