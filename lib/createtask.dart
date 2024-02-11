import 'package:flutter/material.dart';

class Createtask extends StatefulWidget {
  const Createtask({super.key});

  @override
  State<Createtask> createState() => _CreatetaskState();
}

class _CreatetaskState extends State<Createtask> {
  String? selectedCategory; // Declare selectedCategory as nullable

  final List<String> appCategories = [
    'Sport App',
    'Medical App',
    'Rental App',
    'Notes App',
    'Gaming Platform App'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xfffabd7e),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Create new task',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Title',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Date',
                              )),
                        ),
                        CircleAvatar(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_month)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView(
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Start Time',
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'End Time',
                            )),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Description',
                      )),
                ),
                ListTile(
                  title: const Text('Category'),
                  subtitle: Wrap(
                    spacing: 8.0,
                    children: appCategories
                        .map((category) => ChoiceChip(
                              label: Text(
                                category,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selectedCategory == category
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              selected: selectedCategory == category,
                              selectedColor: Colors.red,
                              backgroundColor: Colors.black12,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    30.0), // Adjust the value as needed
                              ),
                              onSelected: (isSelected) {
                                setState(() {
                                  selectedCategory = isSelected
                                      ? category
                                      : null; // Set selectedCategory to null if not selected
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Create Task',
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
