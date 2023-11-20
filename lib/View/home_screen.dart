import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List l1 = [
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
    const FlutterLogo(),
  ];
  List l2 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Final Demo"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 400,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: l1.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                            color: Colors.blue,
                          ),
                        );
                      },
                    )),
                Container(
                    height: 500,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: l1.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return const Card(
                          color: Colors.amber,
                        );
                      },
                    )),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/second');
                    },
                    child: Text("Cupertino widget"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
