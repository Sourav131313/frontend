import 'package:flutter/material.dart';
import 'package:sourav/calender.dart';
import 'package:sourav/createtask.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Color(0xfffabd7e),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.vertical_distribute),
                      Icon(Icons.search)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Color(0xffd65e60),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Color(0xfffabd7e),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 24,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('Sourav suman',
                            style: TextStyle(
                                color: Color(0xff32241a),
                                fontWeight: FontWeight.bold,
                                fontSize: 32)),
                        Text('App Develper',
                            style:
                                TextStyle(color: Colors.black38, fontSize: 20)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 600,
            child: ListView(
              children: [
                ListTile(
                  title: const Text('My Tasks'),
                  trailing: CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Calender()),
                          );
                        },
                        icon: const Icon(Icons.calendar_month)),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_month)),
                  ),
                  title: const Text(
                    'To Do ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('5 Tasks now, 1 started'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_month)),
                  ),
                  title: const Text(
                    'To Do ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('5 Tasks now, 1 started'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_month)),
                  ),
                  title: const Text(
                    'To Do ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('5 Tasks now, 1 started'),
                ),
                ListTile(
                  title: Text('Active project'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: Color(0xff319299)),
                      height: 220,
                      width: 170,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 38,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Text(
                              'Medical App',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '6 hour process',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: Color(0xffe96170)),
                      height: 220,
                      width: 170,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 38,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Making History Notes',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '20 hour process',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: Color(0xffeec08c)),
                      height: 220,
                      width: 170,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 38,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Text(
                              'Medical App',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '6 hour process',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: Color(0xff6782d6)),
                      height: 220,
                      width: 170,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 38,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Text(
                              'Medical App',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '6 hour process',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
