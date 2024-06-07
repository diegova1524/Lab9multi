import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00BFA5), // Ajusta el color aquí
        title: const Text('Settings'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Center(child: Text('Atras')),
        ),
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
                image: AssetImage('assets/images/messi.jpg'),
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Esta es la página de configuración',
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 74, 243),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
