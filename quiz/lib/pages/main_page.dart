import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  int i = 0;
  int k = 0;
  String natija = '';

  List<Map> box = [
    {
      "savol": "1. 2+2=",
      "javob": "4",
      "variant": ["1", "2", "3", "4"],
    },
    {
      "savol": "2. 3+3=",
      "javob": "6",
      "variant": ["2", "5", "6", "9"],
    },
    {
      "savol": "3. 4+4=",
      "javob": "8",
      "variant": ["5", "8", "10", "15"],
    },
    {
      "savol": "4. 5+5=",
      "javob": "10",
      "variant": ["10", "5", "6", "9"],
    },
    {
      "savol": "5. 8+8=",
      "javob": "16",
      "variant": ["5", "10", "16", "17"],
    },
    {
      "savol": "",
      "javob": "",
      "variant": ["", "", "", ""],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${box[i]["savol"]}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      if (box[i]["javob"] == box[i]["variant"][0]) {
                        k++;
                      }
                      i++;
                      if (i != 6) {
                        setState(() {});
                      } else {
                        i--;
                      }
                    },
                    child: Text(
                      "${box[i]["variant"][0]}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                ElevatedButton(
                    onPressed: () {
                      if (box[i]["javob"] == box[i]["variant"][1]) {
                        k++;
                      }
                      i++;
                      if (i != 6) {
                        setState(() {});
                      }else {
                        i--;
                      }
                    },
                    child: Text(
                      "${box[i]["variant"][1]}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                ElevatedButton(
                    onPressed: () {
                      if (box[i]["javob"] == box[i]["variant"][2]) {
                        k++;
                      }
                      i++;
                      if (i != 6) {
                        setState(() {});
                      }else {
                        i--;
                      }
                    },
                    child: Text(
                      "${box[i]["variant"][2]}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                ElevatedButton(
                    onPressed: () {
                      if (box[i]["javob"] == box[i]["variant"][3]) {
                        k++;
                      }
                      i++;
                      if (i != 6) {
                        setState(() {});
                      }else {
                        i--;
                      }
                    },
                    child: Text(
                      "${box[i]["variant"][3]}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ],
            ),
            if (i == 5)
              Text(
                "Siz 5ta savoldan $k tasiga to'g'ri javob berdingiz",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green),
              )
          ],
        ),
      ),
    );
  }
}
