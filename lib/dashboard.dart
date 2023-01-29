import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

int _selectedIndex = -1;

List courses = [
  {
    "day": "Monday",
    "course": "3 Courses",
    "color": Color(0xFFEB3979),
  },
  {
    "day": "Tuesday",
    "course": "2 Courses",
    "color": Color(0xFF2D77D5),
  },
  {
    "day": "Wednesday",
    "course": "5 Courses",
    "color": Color(0xFFE9845D),
  },
  {
    "day": "Thursday",
    "course": "1 Courses",
    "color": Color(0xFF00FF0A),
  },
  {
    "day": "Friday",
    "course": "2 Courses",
    "color": Color(0xFFF260FF),
  },
  {
    "day": "Saturday",
    "course": "0 Courses",
    "color": Color(0xFFFFF500),
  },
  {
    "day": "Sunday",
    "course": "0 Courses",
    "color": Color(0xFF43EAF4),
  },
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xFFFFF500)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Color(0xFF4D5496),
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
            backgroundColor: Color(0xFFFFF500),
            toolbarHeight: 160,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dashboard',
                          style: TextStyle(
                              color: Color(0xFF4D5496),
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                        Image.asset('assets/images/menu.png',
                            width: 50, height: 50)
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/fotosaya.png',
                            width: 70, height: 70),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hi, Muhammad Fadillah Rizky',
                                style: TextStyle(
                                    color: Color(0xFF4D5496),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 8,
                            ),
                            Text('201011400805 / S1 TI',
                                style: TextStyle(
                                    color: Color(0xFF4D5496),
                                    fontWeight: FontWeight.w400))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Course Schedule',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 86,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        Container(
                            width: 144,
                            height: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFEB3979),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Monday',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Image.asset('assets/images/calender.png',
                                          width: 25, height: 25),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('3 Courses',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/pc.png',
                                              width: 15, height: 15),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset('assets/images/arsip.png',
                                              width: 15, height: 15),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                            width: 144,
                            height: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFF2D77D5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tuesday',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Image.asset('assets/images/calender.png',
                                          width: 25, height: 25),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('2 Courses',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/pc.png',
                                              width: 15, height: 15),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset('assets/images/arsip.png',
                                              width: 15, height: 15),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                            width: 144,
                            height: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 0, 135, 4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Wednesday',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Image.asset('assets/images/calender.png',
                                          width: 25, height: 25),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('4 Courses',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/pc.png',
                                              width: 15, height: 15),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset('assets/images/arsip.png',
                                              width: 15, height: 15),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                            width: 144,
                            height: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFE9845D),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Thursday',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Image.asset('assets/images/calender.png',
                                          width: 25, height: 25),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('1 Courses',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/pc.png',
                                              width: 15, height: 15),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset('assets/images/arsip.png',
                                              width: 15, height: 15),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                            width: 144,
                            height: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 200, 0, 218),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Friday',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Image.asset('assets/images/calender.png',
                                          width: 25, height: 25),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('0 Courses',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/pc.png',
                                              width: 15, height: 15),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset('assets/images/arsip.png',
                                              width: 15, height: 15),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ]),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Your Study',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/transcript.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Overall Values",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Transcript",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            Image.asset(
                                              'assets/images/error.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/resultcard.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Even Semester",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Study Result Card",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            // Image.asset(
                                            //   'assets/images/logo_unpam.png',
                                            //   width: 20,
                                            //   height: 20,
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/attendance.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "3",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Even Semester",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Attendance",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            // Image.asset(
                                            //   'assets/images/logo_unpam.png',
                                            //   width: 20,
                                            //   height: 20,
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/fees.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "5",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "College Tuition Fees",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Tuition Fees",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            Image.asset(
                                              'assets/images/error.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/resultcard.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Even Semester",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Study Result Card",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            // Image.asset(
                                            //   'assets/images/logo_unpam.png',
                                            //   width: 20,
                                            //   height: 20,
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/transcript.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Overall Values",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Transcript",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            Image.asset(
                                              'assets/images/error.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/fees.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "3",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "College Tuition Fees",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Tuition Fees",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            Image.asset(
                                              'assets/images/error.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Color(0xFFF8F8F8)),
                              width: 171,
                              height: 116,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/attendance.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                        Text(
                                          "6",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF4D5496)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Even Semester",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8A8A8A)),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Attendance",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF4D5496)),
                                            ),
                                            // Image.asset(
                                            //   'assets/images/logo_unpam.png',
                                            //   width: 20,
                                            //   height: 20,
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/home.png"),
                  color: Color(0xFF4D5496),
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/scan.png"),
                  color: Color(0xFF4D5496),
                  size: 30,
                ),
                label: 'Scan',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/notif.png"),
                  color: Color(0xFF4D5496),
                  size: 30,
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/profile.png"),
                  color: Color(0xFF4D5496),
                  size: 30,
                ),
                label: 'Profile',
              ),
            ],
            selectedItemColor:
                _selectedIndex == -1 ? Colors.grey[600] : Colors.amber[800],
            backgroundColor: Colors.yellow,
          ),
        );
      }),
    );
  }
}
