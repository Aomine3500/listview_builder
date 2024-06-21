import 'package:flutter/material.dart';

class Task {
  final String title;
  final String subtitle;

  Task({
    required this.title,
    required this.subtitle,
  });
}

List<Task> tasks = [
  Task(
    title: 'Go to Gym',
    subtitle: 'Go to Gym at 6:00 AM',
  ),
  Task(
    title: 'Go to College',
    subtitle: 'Go to College at 8:00 AM',
  ),
  Task(
    title: 'Go to Office',
    subtitle: 'Go to Office at 11:00 AM',
  ),
  Task(
    title: 'Read a Book',
    subtitle: 'Read a Book From 02:00 PM TO 02:30 PM',
  ),
  Task(
    title: 'Play Games',
    subtitle: 'Play video games From 02:30 PM TO 03:30 PM',
  ),
  // Add more sample tasks
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List students = [
    {"name": "Ahmed", "age": 33, "Rang": 1, "Nationality": "Tunisian"},
    {"name": "Zahra", "age": 25, "Rang": 4, "Nationality": "Iraquian"},
    {"name": "Hedi", "age": 47, "Rang": 2, "Nationality": "Syrian"},
    {"name": "Lobna", "age": 18, "Rang": 1, "Nationality": "French"},
    {"name": "Sami", "age": 27, "Rang": 3, "Nationality": "Algerian"},
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('ListView Builder'),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 325,
                  width: 925,
                  color: Colors.blue,
                  child: ListView.builder(
                    itemCount: students.length,
                    itemBuilder: (context, index) {
                      return (ListTile(
                        title: Text(students[index]["name"],
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        subtitle: Text(students[index]["Nationality"],
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.center),
                      ));
                    },
                  ),
                ),
                Container(
                  height: 325,
                  width: 925,
                  color: Colors.amber,
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(tasks[index].title,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        subtitle: Text(tasks[index].subtitle,
                            style: const TextStyle(fontSize: 14),
                            textAlign: TextAlign.center),
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
