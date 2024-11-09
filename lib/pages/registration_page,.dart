import 'package:flutter/material.dart';
import 'package:inspiraapp/classes/usuarios.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  String? selectedProfile = "Aluno"; // Definindo perfil padrão
  bool isVisible = true;
  bool cpfVisible = true;
  bool nomeVisible = true;
  bool idadeVisible = true;
  bool emailVisible = true;
  bool celularVisible = true;
  bool cnpjVisible = true;
  bool periodoVisible = true;
  bool areaAtuacaoVisible = true;
  bool responsavelVisible = true;
  bool cargoVisible = true;

  @override
  void initState() {
    super.initState();
    // Chama o método para ocultar elementos com base no perfil selecionado
    _HideElementsByPerfil("Aluno");
  }

  void _HideElementsByPerfil(String? selectedProfile) {
    setState(() {
      this.selectedProfile = selectedProfile;

      // Inicializando todas as variáveis como visíveis
      isVisible = true;
      cpfVisible = true;
      nomeVisible = true;
      emailVisible = true;
      celularVisible = true;
      cnpjVisible = true;
      periodoVisible = true;
      areaAtuacaoVisible = true;
      responsavelVisible = true;
      cargoVisible = true;
      idadeVisible = true;

      // Ajustando a visibilidade com base no perfil selecionado
      switch (selectedProfile) {
        case "Aluno":
          cnpjVisible = false;
          areaAtuacaoVisible = false;
          responsavelVisible = false;
          cargoVisible = false;
          break;

        case "Funcionário":
          cnpjVisible = false;
          areaAtuacaoVisible = false;
          responsavelVisible = false;
          break;

        case "Comunidade":
          cnpjVisible = false;
          periodoVisible = false;
          areaAtuacaoVisible = false;
          responsavelVisible = false;
          break;

        case "Empresa":
          cpfVisible = false;
          periodoVisible = false;
          cargoVisible = false;
          idadeVisible = false;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController cpfController = TextEditingController();
    TextEditingController cnpjController = TextEditingController();
    TextEditingController nomeController = TextEditingController();
    TextEditingController idadeController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController celularController = TextEditingController();
    TextEditingController periodoController = TextEditingController();
    TextEditingController cargoController = TextEditingController();
    TextEditingController areaAtuacaoController = TextEditingController();
    TextEditingController responsavelController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Campo obrigatório: Perfil
              Visibility(
                visible: true, // Controla a visibilidade
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Perfil',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                  value: selectedProfile,
                  items: ['Aluno', 'Funcionário', 'Empresa', 'Comunidade']
                      .map((String profile) {
                    return DropdownMenuItem<String>(
                      value: profile,
                      child: Text(profile),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    _HideElementsByPerfil(newValue);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, selecione um perfil';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 10), // Espaçamento

// Campo obrigatório: CPF
              Visibility(
                visible: cpfVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: cpfController,
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu CPF';
                    } else if (value.length < 11) {
                      return 'Quantidade de caracteres inválida!';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 10), // Espaçamento

// Campo opcional: CNPJ
              Visibility(
                visible: cnpjVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: cnpjController,
                  decoration: InputDecoration(
                    labelText: 'CNPJ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 14,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu CNPJ';
                    } else if (value.length < 14) {
                      return 'Quantidade de caracteres inválida!';
                    }
                    return null;
                  },
                ),
              ),

// Campo obrigatório: Nome
              Visibility(
                visible: nomeVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu nome';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 10), // Espaçamento

              Visibility(
                visible:
                    idadeVisible, // Altere para false se quiser esconder o campo
                child: TextFormField(
                    controller: idadeController,
                    decoration: InputDecoration(
                      labelText: 'Idade',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12), // Arredondamento das bordas
                      ),
                    ),
                    keyboardType:
                        TextInputType.number, // Define o teclado numérico
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira a sua idade';
                      }
                      if (int.tryParse(value) == null) {
                        return 'Por favor, insira um número válido';
                      } else {
                        if (int.parse(value) < 0 || int.parse(value) > 150) {
                          return 'Digite uma idade válida';
                        }
                      }
                    }),
              ),

              SizedBox(height: 10), // Espaçamento

// Campo obrigatório: Email
              Visibility(
                visible: emailVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu email';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 10), // Espaçamento

// Campo obrigatório: Celular
              Visibility(
                visible: celularVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: celularController,
                  decoration: InputDecoration(
                    labelText: 'Celular',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 11,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a sua idade';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Por favor, insira um número válido';
                    } else {
                      if (value.length < 11) {
                        return 'Insira o DDD e os dígitos restantes do seu número.';
                      }
                    }
                  },
                ),
              ),

// Campo opcional: Período
              Visibility(
                visible: periodoVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: periodoController,
                  decoration: InputDecoration(
                    labelText: 'Período',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10), // Espaçamento

// Campo opcional: Área de Atuação
              Visibility(
                visible: areaAtuacaoVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: areaAtuacaoController,
                  decoration: InputDecoration(
                    labelText: 'Área de Atuação',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10), // Espaçamento

// Campo opcional: Responsável
              Visibility(
                visible: responsavelVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: responsavelController,
                  decoration: InputDecoration(
                    labelText: 'Responsável',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                ),
              ),

// Campo opcional: Cargo
              Visibility(
                visible: cargoVisible, // Controla a visibilidade
                child: TextFormField(
                  controller: cargoController,
                  decoration: InputDecoration(
                    labelText: 'Cargo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12), // Arredondamento das bordas
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20), // Espaçamento maior antes do botão

              Visibility(
                visible: true, // Controla a visibilidade
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 50)), // Aumenta o tamanho do botão
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.blue[900]!),
                    elevation: MaterialStateProperty.all<double>(10),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            12), // Arredondamento das bordas
                        side: BorderSide(color: Colors.blue), // Borda do botão
                      ),
                    ),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Lógica para enviar o formulário
                    }
                    Usuarios usuario = Usuarios(
                      cpf: cpfController.text,
                      cnpj: cnpjController.text,
                      nome: nomeController.text,
                      idade: int.parse(idadeController.text),
                      email: emailController.text,
                      celular: celularController.text,
                      periodo: periodoController.text,
                      cargo: cargoController.text,
                      areaDeAtuacao: areaAtuacaoController.text,
                      responsavel: responsavelController.text,
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Mensagem'),
                          content: Text(
                              'Usuário Cadastrado!\n\nLogin: ${usuario.getEmail}'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Fechar'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
