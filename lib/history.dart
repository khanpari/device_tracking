import 'package:device_tracking/assign_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<AssignList> historylist = allassignlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF1F6),
      appBar: AppBar(
        backgroundColor: Color(0xffEEF1F6),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          'Assign History',
          style: TextStyle(
              color: Color(0xff359DED),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'BalooDa2'),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 50, left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: SingleChildScrollView(
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: historylist.length,
                itemBuilder: (context, index) {
                  var hllist = historylist[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    hllist.date,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xff359DED),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Baloo Da 2',
                                        height: 2.3),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'From',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xff9F9EAB),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Baloo Da 2'),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    'To',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xff9F9EAB),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Baloo Da 2'),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    hllist.fromname,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xff359DED),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Baloo Da 2'),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    hllist.toname,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xff359DED),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Baloo Da 2'),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Color(0xff359DED),
                              thickness: 0.5,
                              indent: 10,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        left: 5.0,
                        child: ConstrainedBox(
                            constraints: new BoxConstraints(
                              minHeight: 12.0,
                              minWidth: 12.0,
                              maxHeight: 40.0,
                              maxWidth: 12.0,
                            ),
                            child: new DecoratedBox(
                              decoration: new BoxDecoration(
                                color: Color(0xff359DED),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            )),
                      ),
                      Positioned(
                          top: 0.0,
                          left: 10.0,
                          child: Container(
                            width: 0.5,
                            height: 120,
                            color: Color(0xff359DED),
                          ))
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
