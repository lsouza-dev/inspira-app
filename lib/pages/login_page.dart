import 'package:flutter/material.dart';
import 'package:inspiraapp/pages/menu_page.dart';
import 'package:inspiraapp/pages/registration_page,.dart';
import 'package:inspiraapp/service/custom_popup.dart';
import 'package:inspiraapp/service/navigation_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Título do Pop-up'),
        content: const Text('Este é o conteúdo do pop-up.'),
        actions: <Widget>[
          TextButton(
            child: const Text('Fechar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  bool _senhaVisivel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Definir a cor do cabeçalho como azul
        ),
        body: Container(
          // decoration: const BoxDecoration(
          //   border: Border(
          //     bottom: BorderSide(
          //         color: Colors.blue, width: 30.0), // Aumenta a borda inferior
          //   ),
          // ),
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('lib/assets/logo-inspira.png',
                        height: 300), // Adiciona a imagem
                    TextField(
                      controller: _loginController,
                      decoration: InputDecoration(
                        labelText: 'Login',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon:
                            const Icon(Icons.person, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _senhaController,
                      obscureText: !_senhaVisivel,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.black),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _senhaVisivel
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _senhaVisivel = !_senhaVisivel;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_loginController.text == "luiz" &&
                            _senhaController.text == "luiz123") {
                          CustomPopup.show(
                            context: context,
                            title: "Usuário Encontrado!",
                            content:
                                "Estamos te redirecionando para a tela inicial...\nAguarde.",
                            actions: [
                              TextButton(
                                child: const Text('Ok'),
                                onPressed: () {
                                  NavigationService().navigateTo(MenuPage());
                                },
                              ),
                            ],
                          );
                        } else {
                          CustomPopup.show(
                              context: context,
                              title: "Usuário Não Encontrado!",
                              content:
                                  "Não foi possível realizar seu login!\nRevise os dados inseridos nos campos acima e tente novamente.",
                              actions: [
                                TextButton(
                                  child: const Text('Sair'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ]);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 50),
                        backgroundColor: Colors.blue,
                        shadowColor: Colors.blue[900],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Colors.blue),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 18, // Tamanho da fonte maior
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color:
                              Colors.white, // Garantir que o texto seja branco
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        // Lógica para recuperação de senha
                      },
                      child: const Text(
                        'Esqueci a minha senha',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16, // Tamanho da fonte
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        NavigationService().navigateTo(RegistrationPage());
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 50),
                        backgroundColor: Colors.white,
                        shadowColor: Colors.blue[900],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Colors.blue),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 18, // Tamanho da fonte maior
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        'Cadastro',
                        style: TextStyle(
                          color:
                              Colors.blue, // Garantir que o texto seja branco
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
