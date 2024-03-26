import 'package:flutter/material.dart';
import 'package:misterychat/pages/index.dart';
import 'package:misterychat/pages/CreatePage.dart';

class LoginPage extends StatelessWidget {
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
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
              _backToIndexButton(context), // Botón discreto para regresar
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(size: 100), // O considera usar tu propio logo si tienes uno
        SizedBox(height: 50),
        Text(
          'Welcome Back',
          style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.amber),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _inputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
              fillColor: Colors.deepPurple.shade200.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person, color: Colors.white70)),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
            fillColor: Colors.deepPurple.shade200.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.lock, color: Colors.white70),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
  onPressed: () {},
  child: Text("Login", style: TextStyle(fontSize: 20)),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurpleAccent, // Cambiado de 'primary' a 'backgroundColor'
    shape: StadiumBorder(),
    padding: EdgeInsets.symmetric(vertical: 16),
  ),
)

      ],
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text("Forgot password?", style: TextStyle(color: Colors.amber)),
    );
  }

  Widget _signup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ", style: TextStyle(color: Colors.white70)),
        TextButton(onPressed: () {}, child: Text("Sign Up", style: TextStyle(color: Colors.amber)))
      ],
    );
  }

  Widget _backToIndexButton(BuildContext context) {
    // Botón discreto para regresar al índice
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Back to Home", style: TextStyle(color: Colors.white70)),
      ),
    );
  }
}
