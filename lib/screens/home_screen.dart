import 'package:car_ui/screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _mainLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(
          child: SizedBox(
            height: 50,
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 19, 21, 72),
                        Color.fromARGB(255, 16, 16, 16),
                      ],
                      stops: [0.1, 0.4, 0.7, 0.9],
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 80.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _mainLogo(),
                        SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'HYUNDAI',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 250,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/image6.png",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  top: 520,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 380,
                    width: 420,
                    decoration: BoxDecoration(
                        color: Colors.black,
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
                                  "300 mi",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Range(EPA est.)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            builDivider(),
                            Column(
                              children: const [
                                Text(
                                  "AWD",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Dual Motor",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.white),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Acceleration:",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "0-60 mph in 3.5s",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Top Speed:",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "up to 150 mph",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Center(
                            child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderScreen()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: Text(
                              "order now".toUpperCase(),
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(15)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: BorderSide(color: Colors.red)))),
                        ))
                      ],
                    ),
                  ),
                )
              ]))),
    );
  }

  Widget builDivider() => Container(
      height: 50,
      child: const VerticalDivider(
        thickness: 1.5,
        width: 100,
        color: Colors.grey,
      ));
}
