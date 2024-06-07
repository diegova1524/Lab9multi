import 'package:flutter/material.dart';
import 'package:laboratorio09/app/app.dart';
import 'package:laboratorio09/app/view/task_list/Task_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _navigateToTaskListPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TaskListPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00BFA5),
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/images/BIENVENIDO.jpg'),
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Has pulsado el botón tantas veces:',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 4, 251),
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Color.fromARGB(255, 0, 30, 255),
                    ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _navigateToTaskListPage,
                child: const Text('Ir a la página de Task List'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
