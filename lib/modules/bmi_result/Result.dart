import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var result;
  var ismale;
  var age;
  Result({
    @required this.result,
    @required this.ismale,
    @required this.age,
  });

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 26, 24, 24),
          centerTitle: true,
          title: Text('BMI Result'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Result: $result',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Your gender: ${ismale ? 'male' : 'female'}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Your age: $age',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
