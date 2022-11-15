import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import './task.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task'),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  margin: const EdgeInsets.all(10),
                  child: Container(
                      height: 60,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Làm bài tập về nhà',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 100,
                            color: Colors.white,
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            foregroundColor: Colors.black),
                                        onPressed: () {},
                                        child: const Icon(Icons.done))),
                                Expanded(
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            foregroundColor: Colors.black),
                                        onPressed: () {},
                                        child: const Icon(Icons.delete))),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                Container(
                  height: 100,
                  color: Colors.transparent,
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
