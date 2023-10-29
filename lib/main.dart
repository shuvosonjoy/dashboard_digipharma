import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:digipharma_dashboard/monthlyMed.dart';
import 'package:digipharma_dashboard/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color(0xff08346D),
        animationDuration: Duration(milliseconds: 290),
        items: [
          Icon(
            Icons.camera_alt,
            color: Color(0xffF68D8D),
            size: 40,
          ),
          Icon(
            Icons.home,
            color: Color(0xffB3C3FD),
            size: 40,
          ),
          Icon(
            Icons.settings,
            color: Color(0xffB3C3FD),
            size: 40,
          ),
        ],
      ),

      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: dashboardAppbar(),
      ),


      body: Container(
        margin: EdgeInsets.only(left: 20, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Medical History", style: siz31Black()),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    flex: 50,
                    child: Container(
                      //  padding: const EdgeInsets.only(top: 20),
                      //  margin: EdgeInsets.only(left: 5),

                      child: Container(
                        height: 68,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffFACE8C),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.1,
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: Container(
                      margin: EdgeInsets.only(left: 12),
                      child: Container(
                        height: 69,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffa0d28f),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: Container(
                      margin: EdgeInsets.only(left: 14),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => monthlyMed()));
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 69,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x5453405e),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            Positioned(
                                top: 5,
                                left: 5,
                                bottom: 5,
                                right: 5,
                                child: Image.asset('images/dashboard_3.png'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 5, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Medicine",
                    style: siz31Black(),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: 154,
                    height: 128,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black),
                      color: Color(0xff90b6f0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class dashboardAppbar extends StatefulWidget {
  const dashboardAppbar({super.key});

  @override
  State<dashboardAppbar> createState() => _dashboardAppbarState();
}

class _dashboardAppbarState extends State<dashboardAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15),
            // color: Colors.green,
          ),
          Positioned(
            top: 15,
            left: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 55,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Shuvo Sonjoy",
                        style: siz22White(),
                      ),
                      Text(
                        "ID: 211202X",
                        style: size20White(),
                      ),
                      Text(
                        "Age: 22",
                        style: size20White(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 140,
            left: 45,
            child: Stack(
              children: [
                Container(
                  height: 40,
                  width: 235,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: Color(0xffB3C3FD),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                    bottom: 5,
                    top: 5,
                    left: 10,
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'images/dashboard_3.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pill 2X",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 35,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                color: Color(0xffF68D8D),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text(
                              "9.00AM",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Positioned(
            top: 138,
            left: 300,
            child: Stack(
              children: [
                Container(
                  height: 45,
                  width: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFFEF99),
                  ),
                ),
                Positioned(
                  bottom: 3,
                  top: 3,
                  left: 3,
                  right: 3,
                  child: CircleAvatar(
                    radius: 2,
                    backgroundImage: AssetImage('images/alarm-clock.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xff08346D),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
    );
  }
}
