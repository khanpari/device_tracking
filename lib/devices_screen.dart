
import 'package:device_tracking/add_device.dart';
import 'package:device_tracking/bottom_bar.dart';
import 'package:device_tracking/devices_list_model.dart';
import 'package:device_tracking/userbottombar.dart';
import 'package:flutter/material.dart';

class Devices_Screen extends StatefulWidget {
  const Devices_Screen({Key? key}) : super(key: key);

  @override
  State<Devices_Screen> createState() => _Devices_ScreenState();
}

class _Devices_ScreenState extends State<Devices_Screen> {

  final GlobalKey<ScaffoldState> scaffoldkey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
     List<DevicesList> deviclist = alldeviclist;

    final controller = TextEditingController();

    void searchDevice(String query) {
      final suggestions = alldeviclist.where((DevicesList) {
        final name = DevicesList.name.toLowerCase();
        final input = query.toLowerCase();
        return name.contains(input);
      }).toList();
      setState(() => deviclist = suggestions);
    }
    void actionPopUpItemSelected(String value, String name) {
      String message;
      if (value == 'edit') {
        message = 'You selected edit for $name';
        // You can navigate the user to edit page.
      } else if (value == 'delete') {
        message = 'You selected delete for $name';
        // You can delete the item.
      } else {
        message = 'Not implemented';
      }
      print(message);
    }



    return Scaffold(
      key: scaffoldkey,
      backgroundColor: Color(0xffEEF1F6),
      appBar: AppBar(
        backgroundColor: Color(0xffEEF1F6),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
            onPressed: () {
              Navigator.of(context).pop();             }),
        title: Text(
          'Devices List',
          style: TextStyle(
              color: Color(0xff359DED),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'BalooDa2'),
        ),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[

          IconButton(
            icon: (Image.asset('assets/images/AddIcon.png',)),
            //tooltip: "Save Todo and Retrun to List",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Bottom(5,true)));

                        },
          )
        ],

      ),
      body: Column(
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
              onChanged: searchDevice,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))


              ),
              child: Expanded(

                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: deviclist.length,
                  itemBuilder: (context, index) {
                    var device_all_list = deviclist[index];

                    return SingleChildScrollView(

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                                                colors: [Color(0xffA1C4FD),

                                                  Color(0xffC2E9FB),
                                                ],

                                              ),
                                            ),
                                            // child: Image.network(
                                            //   device_all_list.image, color: Colors.white,),
                                          //  child: Image.asset('assets/images/mydevice.png',height: 50,width:50,color: Colors.white,),
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

                                    Text(device_all_list.name, style: TextStyle(fontSize: 14.0,
                                        color: Color(0xff359DED
                                        ),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Baloo Da 2',
                                        height: 2.3),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                         Image.asset('assets/images/hasktag.png',height: 20,width: 25,),
                                        // const Text('#',style: TextStyle(color: Color(0xff349DE0),fontSize: 30)),
                                        SizedBox(width: 10,),
                                        Text(device_all_list.number, style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0xffCFD8E1),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Baloo Da 2'),)

                                      ],


                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        const Icon(Icons.person, color: Color(0xff349DE0),),
                                        SizedBox(width: 10,),
                                        Text(device_all_list.user_name, style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0xffCFD8E1),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Baloo Da 2'),)

                                      ],


                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        const Icon(Icons.calendar_month_outlined,
                                          color: Color(0xff349DE0),),
                                        SizedBox(width: 10,),
                                        Text(device_all_list.date, style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0xffCFD8E1),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Baloo Da 2'),)

                                      ],


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
                                    child: Container(
                                      child:
                                      new IconButton(
                                        icon: new Icon(Icons.more_vert,size: 20,color: Color(0xff9F9EAB)),
                                        onPressed: (){


                                          print("ppppkkkkkkkkkkkkkkkkkkkp");

                                          // PopupMenuButton(
                                          //   itemBuilder: (context) {
                                          //     return [
                                          //       PopupMenuItem(
                                          //         value: 'edit',
                                          //         child: Text('Assign History'),
                                          //       ),
                                          //       PopupMenuItem(
                                          //         value: 'update',
                                          //         child: Text('Update'),
                                          //       ),
                                          //       PopupMenuItem(
                                          //         value: 'delete',
                                          //         child: Text('Delete'),
                                          //       )
                                          //     ];
                                          //   },
                                          //
                                          //
                                          //   onSelected: (String value){
                                          //     print('You Click on po up menu item');
                                          //     //actionPopUpItemSelected(value, name)
                                          //
                                          //   },
                                          // );
                                        },

                                      ),


                                    ),
                                    ),

                                ],

                              )

                            ],
                          ),


                        ),

                      ),
                    );


                  },
                ),

              ),

            ),
          ),
          new Divider(height: 2,
            color: Color(0xff359DED),
          ),
         Spacer(),
          // Container(
          //   height: 200,
          //   child: Bottom(3),)

        ],

      ),
    );
  }

}
