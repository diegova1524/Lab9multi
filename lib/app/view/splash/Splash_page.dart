import 'package:flutter/material.dart';
import 'package:laboratorio09/app/view/task_list/task_list_page.dart';
import 'package:laboratorio09/app/view/components/shape.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/fondo.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '¡Bienvenido!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 55, 255),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/BIENVENIDO.jpg',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 30),
              const Shape(),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  // Aquí puedes agregar la lógica para cambiar el estilo del texto
                  // por ejemplo, cambiando el color o el tamaño de la fuente
                },
                child: const Text(
                  'Desliza hacia abajo para comenzar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 13, 254),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const TaskListPage();
                  }));
                },
                child: const Text(
                  'Ver tareas',
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 216, 253),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Compartir aplicación',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 241, 241),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
