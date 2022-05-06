import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  int selectedColor = 0;
  Widget _mainLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(
          child: SizedBox(
            height: 50,
            child: Image.asset(
              "assets/logomain.jpg",
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Container(height: 50, width: 50, child: _mainLogo()),
          bottom: const TabBar(
            indicatorColor: Colors.redAccent,
            labelPadding: EdgeInsets.only(right: 5),
            labelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                text: "1.Car",
              ),
              Tab(
                text: "2.Exterior",
              ),
              Tab(
                text: "3.Interior",
              ),
              Tab(
                text: "4.Autopilot",
              ),
              Tab(
                text: "5.Order",
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        body: TabBarView(
          children: [
            Container(
              height: 750,
              color: Color.fromARGB(255, 237, 240, 243),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 180,
                      left: 10,
                      child: Container(
                          height: 30,
                          width: 200,
                          child: Text(
                            "Select Your Car",
                            style: TextStyle(fontSize: 25),
                          ))),
                  Positioned(
                      top: 180,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 300,
                        width: 500,
                        child: Image.asset('assets/image.png'),
                      )),
                  Positioned(
                      top: 420,
                      left: 10,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Performance",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  "Rs 55,700",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Long Range",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  "Rs 46,700",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    top: 490,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 320,
                      width: 415,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "3.5s",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    "0-60 mph",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              builDivider(),
                              Column(
                                children: const [
                                  Text(
                                    "150 mph",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    "Top Speed",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "Tesla All-Wheel Drive has two independent\n motors. Unlike traditional all-wheel drive \n systems, these two motors digitally control \n torque to the front and rear wheels—for far \n better handling and traction control. ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Text(
                                  "Rs 55,700",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                TextButton(
                                  onPressed: () {
                                    pageController.animateTo(1,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.bounceIn);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 23.0, right: 23.0),
                                    child: Text(
                                      "Next".toUpperCase(),
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(15)),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              side: BorderSide(
                                                  color: Colors.red)))),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 750,
              color: Color.fromARGB(255, 237, 240, 243),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 180,
                      left: 10,
                      child: Container(
                          height: 30,
                          width: 200,
                          child: Text(
                            "Select Color",
                            style: TextStyle(fontSize: 25),
                          ))),
                  Positioned(
                      top: 180,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 300,
                        width: 500,
                        child: Image.asset('assets/image2.png'),
                      )),
                  Positioned(
                      top: 420,
                      left: 10,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Pearl White Multi-Coat",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 170.0),
                                  child: Text(
                                    "Rs 2000",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      top: 490,
                      left: 30,
                      child: GestureDetector(
                        onTap: (() {
                          setState(() {
                            selectedColor = 0;
                          });
                        }),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4,
                                        color: selectedColor == 0
                                            ? Color.fromARGB(255, 219, 28, 28)
                                            : Colors.transparent),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          spreadRadius: 1,
                                          blurRadius: 8,
                                          offset: Offset(1, 1)),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          spreadRadius: 1,
                                          blurRadius: 8,
                                          offset: Offset(1, 1)),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white54),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    top: 520,
                    child: Container(
                      height: 20,
                      child: Divider(
                        height: 20,
                        color: Colors.black,
                        thickness: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 570,
                    left: 40,
                    child: Column(
                      children: const [
                        Text(
                          "20 Performance Wheels ",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 32.0),
                          child: Text(
                            "Carbon fiber spoiler",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 640,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 150,
                      width: 430,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Text(
                                  "Rs 55,700",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                TextButton(
                                  onPressed: () {
                                    pageController.animateTo(1,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.bounceIn);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 23.0, right: 23.0),
                                    child: Text(
                                      "Next".toUpperCase(),
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(15)),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              side: BorderSide(
                                                  color: Colors.red)))),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 750,
              color: Color.fromARGB(255, 237, 240, 243),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    // title:
                  )),
                  Positioned(
                      top: 170,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 350,
                        width: 500,
                        child: Image.asset(
                          'assets/image 5.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                    top: 475,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 320,
                      width: 395,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Select Interior",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: const [
                                  Text(
                                    "Black and White",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    "Rs 1000",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "All Black",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Included",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                              onTap: (() {
                                setState(() {
                                  selectedColor = 0;
                                });
                              }),
                              child: Container(
                                  child: Row(children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 4,
                                          color: selectedColor == 0
                                              ? Color.fromARGB(255, 219, 28, 28)
                                              : Colors.transparent),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black),
                                ),
                              ]))),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Text(
                                  "Rs 55,700",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                TextButton(
                                  onPressed: () {
                                    pageController.animateTo(1,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.bounceIn);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 23.0, right: 23.0),
                                    child: Text(
                                      "Next".toUpperCase(),
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(15)),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              side: BorderSide(
                                                  color: Colors.red)))),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 750,
              color: Color.fromARGB(255, 237, 240, 243),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    // title:
                  )),
                  Positioned(
                      top: 170,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 350,
                        width: 500,
                        child: Image.asset(
                          'assets/image3.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                    top: 475,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 320,
                      width: 395,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AutoPilot",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: const [
                                  Text(
                                    "Full Self-Driving",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    "Rs 5000",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Autopilot",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Rs 3,000",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Atomatic driving from highway on-ramp\nto off-ramp including interchanges and\n overtaking slower cars.",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Text(
                                  "Rs 55,700",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                TextButton(
                                  onPressed: () {
                                    pageController.animateTo(1,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.bounceIn);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 23.0, right: 23.0),
                                    child: Text(
                                      "Next".toUpperCase(),
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(15)),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              side: BorderSide(
                                                  color: Colors.red)))),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 750,
              color: Color.fromARGB(255, 237, 240, 243),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    // title:
                  )),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 550,
                        width: 500,
                        child: Image.asset(
                          'assets/image4.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                    top: 475,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 320,
                      width: 395,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "Summary",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Center(
                            child: Text(
                              "Your Model Y",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: Text(
                              "Rs 60,400",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 100.0, right: 100.0),
                                child: Text(
                                  "Pay",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                              ),
                              style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.all(12)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          side:
                                              BorderSide(color: Colors.red)))),
                            ),
                          )
                        ],
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

  Widget builDivider() => Container(
      height: 50,
      child: const VerticalDivider(
        thickness: 1.5,
        width: 100,
      ));
}
