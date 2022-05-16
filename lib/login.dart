import 'package:device_tracking/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool isSwitched = true;
    var textValue = 'Switch is OFF';

    FocusNode myFocusNode = new FocusNode();

    toggleSwitch(bool value) {
      if (isSwitched == false) {
        setState(() {
          isSwitched = true;
        });
        print('Switch Button is ON');
      } else {
        setState(() {
          isSwitched = false;
        });
        // print('Switch Button is OFF');
      }
      return isSwitched;
    }

    return Scaffold(
      backgroundColor: Color(0xffEEF1F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 100.0, right: 120),
                child: Image.asset(
                  'assets/images/Welcome.png',
                )),
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
                        hintText: 'Enter email',
                        hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xffCFD8E1),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Baloo Da 2'),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xff359DED),
                              width: 2.0,
                            )),
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.email_outlined,
                            color: myFocusNode.hasFocus
                                ? Color(0xff359DED)
                                : Color(0xffEEF1F6),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Enter password ',
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xffCFD8E1),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Baloo Da 2'),

                            // labelText: 'Password',
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
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Color(0xff359DED),
                                  width: 2.0,
                                )),
                            prefixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: ImageIcon(
                                AssetImage('assets/images/password.png'),
                                color: myFocusNode.hasFocus
                                    ? Color(0xff359DED)
                                    : Color(0xffEEF1F6),
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: myFocusNode.hasFocus
                                    ? Color(0xff359DED)
                                    : Color(0xffEEF1F6),
                                // color: this.isHiddenPassword
                                //    ? Colors.blue
                                //   : Colors.grey,
                              ),
                              onPressed: () {
                                //   setState(() => this.isHiddenPassword =
                                // !this.isHiddenPassword);
                              },
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ))),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),

                  Container(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                            child: Switch(
                          onChanged: toggleSwitch,
                          value: isSwitched,
                          activeColor: Color(0xff359DED),
                          activeTrackColor: Color(0xff359DED),
                          inactiveThumbColor: Color(0xffEEF1F6),
                          inactiveTrackColor: Color(0xffEEF1F6),
                        )),
                        Container(
                          margin: EdgeInsets.only(right: 150.0),
                          child: InkWell(
                              child: Text(
                            'Remeber me',
                            style: TextStyle(
                                fontFamily: 'BalooDa2',
                                color: Color(0xff1F1F1F),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )),
                        ),
                        Container(
                          child: InkWell(
                              child: Text(
                            'Forget Password?',
                            style: TextStyle(
                                fontFamily: 'BalooDa2',
                                color: Color(0xff359DED),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ],
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
                          //validate();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUp();
                          }));
                        },
                        child: Center(
                          child: Text(
                            'Login',
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
                  SizedBox(
                    height: 200,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15.0, left: 20.0),
                              child: Text(
                                'Dont have an account?  ',
                                style: TextStyle(
                                  fontFamily: 'BalooDa2',
                                  color: Color(0xff1F1F1F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                  top: 15.0,
                                ),
                                child: Text(
                                  ' Signup now',
                                  style: TextStyle(
                                    fontFamily: 'BalooDa2',
                                    color: Color(0xff359DED),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
