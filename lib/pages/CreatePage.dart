import 'package:flutter/material.dart';
import 'package:misterychat/pages/LoginPage.dart';
import 'package:misterychat/pages/index.dart';

class CreatePage extends StatelessWidget {
  CreatePage({Key? key}) : super(key: key);

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Usando un LayoutBuilder para asegurarnos de que el fondo se ajuste al tamaño de la pantalla
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Container(
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
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: <Widget>[
                        _header(context),
                        _textField("Nombre", _nombreController),
                        _textField("Email", _emailController, keyboardType: TextInputType.emailAddress),
                        _textField("Contraseña", _passwordController, isPassword: true),
                        _imagePickerButton(context, "Seleccionar imagen de perfil"),
                        _imagePickerButton(context, "Seleccionar imagen de portada"),
                        _createUserButton(context),
                        Spacer(), // Añadido para empujar el contenido hacia arriba
                        _backToLoginPageButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(size: 100),
        SizedBox(height: 50),
        Text(
          'Create Account',
          style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.amber),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField(String label, TextEditingController controller, {bool isPassword = false, TextInputType? keyboardType}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          hintText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
          fillColor: Colors.deepPurple.shade200.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(isPassword ? Icons.lock : Icons.person, color: Colors.white70),
        ),
      ),
    );
  }

  Widget _imagePickerButton(BuildContext context, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // Lógica para seleccionar imagen
        },
        child: Text(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurpleAccent,
          shape: StadiumBorder(),
        ),
      ),
    );
  }

  Widget _createUserButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ElevatedButton.icon(
        onPressed: () {
          // Lógica para crear usuario (a implementar)
        },
        icon: Icon(Icons.save),
        label: Text("Create Account"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          shape: StadiumBorder(),
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }

  Widget _backToLoginPageButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Back to Login", style: TextStyle(color: Colors.white70)),
      ),
    );
  }
}