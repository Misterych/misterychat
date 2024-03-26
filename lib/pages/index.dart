import 'package:flutter/material.dart';
import 'package:misterychat/pages/LoginPage.dart';
import 'package:misterychat/pages/CreatePage.dart';
class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple.shade800,
                Colors.black87,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _header(context),
                _actionButtons(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(size: 100),
        SizedBox(height: 50),
        Text(
          'Bienvenido a MysteryChat',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.amber),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _actionButtons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.login),
          label: const Text('Iniciar sesión'),
          onPressed: () {
            // Navegar a LoginPage.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
            shape: StadiumBorder(),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton.icon(
          icon: const Icon(Icons.person_add),
          label: const Text('Crear cuenta'),
          onPressed: () {
            // Navegar a CreatePage.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreatePage()), // Asegúrate de que CreatePage es el nombre correcto
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
            shape: StadiumBorder(),
          ),
        ),
      ],
    );
  }
}
