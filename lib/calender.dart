import 'package:flutter/material.dart';
import 'package:sourav/createtask.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  late CalendarController _controller; // Declare CalendarController

  @override
  void initState() {
    super.initState();
    _controller = CalendarController(); // Initialize CalendarController
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefbec),
      body: ListView(
        children: [
          ListTile(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          ListTile(
            trailing: FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Createtask()),
                );
              },
              child: Text('Add Task'),
            ),
            leading: Text(
              'Today',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text('Productive Day, Sourav'),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TableCalendar(
                  firstDay: DateTime.utc(2022, 1, 1),
                  lastDay: DateTime(
                      DateTime.now().year, DateTime.now().month + 1, 0),
                  focusedDay: DateTime.now(),
                  calendarFormat: CalendarFormat.month,
                )
              ],
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('9 AM'),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Color(0xffffe4c7)),
                      width: 270,
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Project research',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Discuss with the calleagues about the future plan',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Color(0xffd4e4fe)),
                      width: 270,
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Work on medical App',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Add medicine tab',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Color(0xff6782d6)),
                      width: 270,
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Project research',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Discuss with the calleagues about the future plan',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
