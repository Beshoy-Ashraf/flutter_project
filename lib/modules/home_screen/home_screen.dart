import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  @override
  final TextEditingController _searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 86, 88, 90),
        ),
        title: const Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                  radius: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 8,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 4),
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: IconButton(
                icon: const Icon(Icons.camera_alt),
                color: Color.fromARGB(255, 86, 88, 90),
                onPressed: () {
                  print("Search");
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: IconButton(
                icon: const Icon(Icons.edit),
                color: Color.fromARGB(255, 86, 88, 90),
                onPressed: () {
                  print("More");
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 240, 239, 239),
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    // Add a clear button to the search bar
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    // Add a search icon or button to the search bar
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Container(
                    width: 60,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                              radius: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 82, 231, 1),
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Beshoy Ashraf ageeeb atia',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Container(
                    width: 60,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                              radius: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 82, 231, 1),
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Beshoy Ashraf ageeeb atia',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Container(
                    width: 60,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                              radius: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 82, 231, 1),
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Beshoy Ashraf ageeeb atia',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Container(
                    width: 60,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                              radius: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 82, 231, 1),
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Beshoy Ashraf ageeeb atia',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Container(
                    width: 60,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                              radius: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 82, 231, 1),
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Beshoy Ashraf ageeeb atia',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10,
                  ),
                  child: Container(
                    width: 60,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                              radius: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 82, 231, 1),
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Beshoy Ashraf ageeeb atia',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/400866184_776740937835330_3749293632845262260_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG0y33nrIrrg8YoL6UK7LkERDjfnm1kHHdEON-ebWQcd9s4FBLpSnEl9tpR0vt2qp2gIrcRPnFHeeu1nBs5qOFT&_nc_ohc=8st0UGZHYw0AX9raCjy&_nc_ht=scontent.fcai21-3.fna&oh=00_AfCQUc6AG-wHn8DDuxxuN1Q0P3VWWwwFAlYq4Sf0ZQmaqg&oe=65544CA5'),
                        radius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 82, 231, 1),
                          radius: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beshoy Ashraf ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'What is on your mind ?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 4,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10d',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
