import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Map humans = {
    "image": Image.asset("assets/h1.png"),
    "text1": "Dianne Russel",
    "text2": " Online",
    "phone": Image.asset("assets/phone.png"),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset("assets/back.png"),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Chat",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 20),
                menu(humans),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 228, 222, 222),
                                blurRadius: 1)
                          ],
                          color: const Color.fromARGB(255, 225, 221, 221)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Just to order",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 228, 222, 222),
                                blurRadius: 1)
                          ],
                          color: const Color(0xff1DC47A)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Okay, for what level of spiciness?",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20)
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 228, 222, 222),
                                blurRadius: 1)
                          ],
                          color: const Color.fromARGB(255, 225, 221, 221)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Okay, wait a minute 👍",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 228, 222, 222),
                                blurRadius: 1)
                          ],
                          color: const Color(0xff1DC47A)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Okay I'm waiting  👍",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20)
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Okay I'm waiting 👍",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/send.png'),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

Widget menu(Map box) {
  return Column(
    children: [
      Container(
        height: 110,
        width: 390,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 228, 222, 222), blurRadius: 1)
            ],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: box["image"],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        box["text1"],
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.add_circled_solid,
                            color: Colors.green,
                            size: 10,
                          ),
                          Text(
                            box["text2"],
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 50),
              SizedBox(
                height: 50,
                width: 50,
                child: box["phone"],
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
