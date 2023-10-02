import 'package:flutter/material.dart';
import 'package:fitness_manager/theme/theme.dart';
import 'package:fitness_manager/domains/workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Manager',
      theme: darkTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Manager'),
      ),
      body: WorkoutsList(),
    );
  }
}

class WorkoutsList extends StatelessWidget {
  WorkoutsList({super.key});

  final workouts = <Workout>[
    Workout(
        title: 'Test1',
        author: 'I am',
        description: 'teseees fesf',
        level: 'Light'),
    Workout(
        title: 'Test2',
        author: 'I amwfeefw',
        description: 'tbggbffffffffff',
        level: 'Hard'),
    Workout(
        title: 'Test3',
        author: 'I am12e',
        description: '11111111111111111111',
        level: 'Normal'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.builder(
      itemCount: workouts.length,
      itemBuilder: (context, i) {
        return Card(
          elevation: 2.0,
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.only(
                  right: 12,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.fitness_center,
                  color: Colors.white,
                ),
              ),
              title: Text(
                workouts[i].title,
                style: theme.textTheme.bodyMedium,
              ),
              subtitle: subtitle(context, workouts[i]),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget subtitle(BuildContext context, Workout workout) {
  Color color = Colors.grey;
  double indicationLevel = 0;

  switch (workout.level) {
    case 'Light':
      color = Colors.green;
      indicationLevel = 0.33;
      break;
    case 'Normal':
      color = Colors.yellow;
      indicationLevel = 0.66;
      break;
    case 'Hard':
      color = Colors.red;
      indicationLevel = 1.0;
      break;
    default:
      color = Colors.green;
      indicationLevel = 0.33;
      break;
  }

  return Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: LinearProgressIndicator(
          backgroundColor: Colors.white,
          value: indicationLevel,
          valueColor: AlwaysStoppedAnimation(color),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        flex: 2,
        child: Text(
          workout.level,
          style: const TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
    ],
  );
}
