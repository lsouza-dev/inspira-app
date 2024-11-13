import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                size: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'Login',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _senhaController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para enviar os dados de login
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.blue,
                  shadowColor: Colors.blue[900],
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.blue),
                  ),
                  textStyle: TextStyle(
                    fontSize: 18, // Tamanho da fonte maior
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white, // Garantir que o texto seja branco
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Lógica para recuperação de senha
                },
                child: Text(
                  'Esqueci a minha senha',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16, // Tamanho da fonte
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para cadastro
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.white,
                  shadowColor: Colors.blue[900],
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.blue),
                  ),
                  textStyle: TextStyle(
                    fontSize: 18, // Tamanho da fonte maior
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text(
                  'Cadastro',
                  style: TextStyle(
                    color: Colors.blue, // Garantir que o texto seja branco
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
