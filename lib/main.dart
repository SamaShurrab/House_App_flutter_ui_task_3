import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Ui Task3",
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color.fromARGB(255, 26, 26, 26),
            ),
          ),
          actionsPadding: EdgeInsets.only(right: 10),
          actions: [
            Icon(
              Icons.menu,
              size: 19,
              color: const Color.fromARGB(255, 239, 70, 50),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            textDirection: TextDirection.rtl,
            children: [
              Positioned(
                right: -60,
                child: Container(
                  margin: EdgeInsets.only(top: 370),
                  width: 250,
                  height: 668.98,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(50, 239, 70, 55),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        width: 69,
                        height: 82.72,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 237, 235),
                          borderRadius: BorderRadius.all(
                            Radius.elliptical(70, 100),
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/user.png",
                            width: 69,
                            height: 82.72,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adewale Taiwo",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 26, 26, 26),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "House Manager",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(225, 223, 50, 34),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 152,
                        height: 179,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color.fromARGB(255, 253, 237, 235),
                          shadowColor: Colors.grey,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Wallet Balance:",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(225, 26, 26, 26),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "\$5046.57",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(225, 239, 70, 55),
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Total Service",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(225, 26, 26, 26),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "24",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(225, 239, 70, 55),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 152,
                        height: 179,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color.fromARGB(255, 239, 70, 55),
                          shadowColor: Colors.grey,
                          elevation: 3,
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    "Master Card",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(225, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "5999-XXXX",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(225, 255, 255, 255),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Adewale T.",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(225, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Houses",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(225, 26, 26, 26),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 29),
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(225, 239, 70, 55),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 83,
                          height: 129,
                          child: Card(
                            color: Color.fromARGB(255, 255, 255, 255),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 239, 70, 55),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 13,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Add\nWorkers",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 26, 26, 26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 83,
                          height: 129,
                          child: Card(
                            color: Color.fromARGB(255, 255, 255, 255),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 253, 237, 235),
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/user.png",
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Tobi\nLateef",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 26, 26, 26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 83,
                          height: 129,
                          child: Card(
                            color: Color.fromARGB(255, 255, 255, 255),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 253, 237, 235),
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/user.png",
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Queen\nNeedle",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 26, 26, 26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 83,
                          height: 129,
                          child: Card(
                            color: Color.fromARGB(255, 255, 255, 255),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 253, 237, 235),
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/user.png",
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Joan\nBlessing",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 26, 26, 26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Services",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(225, 26, 26, 26),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 29),
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(225, 239, 70, 55),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 93,
                    width: 322,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadowColor: Colors.grey,
                      color: Color.fromARGB(255, 255, 255, 255),
                      elevation: 3,
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            "assets/images/electrical_man.png",
                          ),
                          title: Text(
                            "Electrical",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          subtitle: Text(
                            "Description",
                            style: TextStyle(
                              fontFamily: "SFPRODISPLAY",
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(100, 60, 60, 67),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_rounded,
                            size: 48,
                            color: Color.fromARGB(255, 30, 30, 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 93,
                    width: 322,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadowColor: Colors.grey,
                      color: Color.fromARGB(255, 255, 255, 255),
                      elevation: 3,
                      child: Center(
                        child: ListTile(
                          leading: Image.asset("assets/images/technical.png"),
                          title: Text(
                            "Others",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          subtitle: Text(
                            "Description",
                            style: TextStyle(
                              fontFamily: "SFPRODISPLAY",
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(100, 60, 60, 67),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_rounded,
                            size: 48,
                            color: Color.fromARGB(255, 30, 30, 30),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Feedbacks",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(225, 26, 26, 26),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 29),
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(225, 239, 70, 55),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 85.19,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 18,
                          top: 4,
                          bottom: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/job1.jpg",
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          right: 12,
                          top: 0,
                          bottom: 0,
                          child: SizedBox(
                            height: 81.62,
                            width: 261.99,
                            child: Card(
                              shadowColor: Colors.grey,
                              elevation: 3,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 46.86,
                                    height: 41.13,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.elliptical(46.86, 41.13),
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/user.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Perfect Work through all\nJune month",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1A1A1A),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 85.19,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 18,
                          top: 4,
                          bottom: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/job2.jpg",
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          right: 12,
                          top: 0,
                          bottom: 0,
                          child: SizedBox(
                            height: 81.62,
                            width: 261.99,
                            child: Card(
                              shadowColor: Colors.grey,
                              elevation: 3,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 46.86,
                                    height: 41.13,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.elliptical(46.86, 41.13),
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/user.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Perfect Work through all\nJune month",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1A1A1A),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
