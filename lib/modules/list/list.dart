import 'package:flutter/material.dart';

class usermodel {
  final int id;
  final String name;
  final String phone;

  usermodel({required this.id, required this.name, required this.phone});
}

class list extends StatelessWidget {
  late List<usermodel> users = [
    usermodel(id: 1, name: 'ali mohamed ', phone: '01228233762'),
    usermodel(id: 2, name: 'mahoud ali ', phone: '01287965421'),
    usermodel(id: 3, name: 'hossam hassan ', phone: '01068008613'),
    usermodel(id: 4, name: 'ali alsafy ', phone: '01200540069'),
    usermodel(id: 5, name: 'karim alnagar ', phone: '0125876340'),
    usermodel(id: 6, name: 'fady adalat ', phone: '0110040322'),
  ];

  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => builditem(users[index]),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          itemCount: (users.length),
        )));
  }

  Widget builditem(usermodel user) => Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text('${user.id}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  user.phone,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
