import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lila/modules/bmi_result/Result.dart';

class bmi extends StatefulWidget {
  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  bool ismale = true;
  var age = 22;
  var weight = 50;
  var height = 150;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 24, 24),
        centerTitle: true,
        title: const Text("BMI"),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  ismale = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ismale
                                      ? const Color.fromARGB(255, 44, 44, 44)
                                      : Colors.grey[500],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.male,
                                        size: 50,
                                      ),
                                      Text('male')
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  ismale = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: !ismale
                                      ? const Color.fromARGB(255, 44, 44, 44)
                                      : Colors.grey[500],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.female,
                                        size: 50,
                                      ),
                                      Text('Female')
                                    ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("height ",
                        style: TextStyle(
                          fontSize: 30,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("$height ",
                            style: const TextStyle(
                              fontSize: 30,
                            )),
                        const Text('CM',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                      min: 20,
                      max: 200,
                    ),
                  ],
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('whight',
                                style: TextStyle(
                                  fontSize: 30,
                                )),
                            Text("$weight",
                                style: const TextStyle(
                                  fontSize: 30,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: "btn1",
                                  mini: true,
                                  child: const Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: "btn2",
                                  mini: true,
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Age',
                                style: TextStyle(
                                  fontSize: 30,
                                )),
                            Text("$age",
                                style: const TextStyle(
                                  fontSize: 30,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: "btn3",
                                  mini: true,
                                  child: const Icon(Icons.add),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: "btn4",
                                  mini: true,
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: const Color.fromARGB(255, 65, 60, 60),
            width: double.infinity,
            height: 60,
            child: MaterialButton(
                onPressed: () {
                  var result = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(
                                age: age,
                                ismale: ismale,
                                result: result.round(),
                              )));
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 25),
                ))),
      ]),
    );
  }
}
