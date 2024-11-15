import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Controladores de texto para gerenciar o estado dos inputs
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _celularController = TextEditingController();
  final TextEditingController _cnpjController = TextEditingController();
  final TextEditingController _periodoController = TextEditingController();
  final TextEditingController _areaAtuacaoController = TextEditingController();
  final TextEditingController _responsavelController = TextEditingController();
  final TextEditingController _cargoController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();

  String? userProfile;
  bool cpfVisible = true;
  bool nomeVisible = true;
  bool emailVisible = true;
  bool celularVisible = true;
  bool cnpjVisible = true;
  bool periodoVisible = true;
  bool areaAtuacaoVisible = true;
  bool responsavelVisible = true;
  bool cargoVisible = true;
  bool idadeVisible = true;

  bool disableInput = true;

  @override
  void dispose() {
    // Dispose os controladores para liberar recursos
    _cpfController.dispose();
    _nomeController.dispose();
    _emailController.dispose();
    _celularController.dispose();
    _cnpjController.dispose();
    _periodoController.dispose();
    _areaAtuacaoController.dispose();
    _responsavelController.dispose();
    _cargoController.dispose();
    _idadeController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Chama o método para ocultar elementos com base no perfil selecionado
    _HideElementsByPerfil("Funcionário");
  }

  void _HideElementsByPerfil(String? selectedProfile) {
    setState(() {
      this.userProfile = selectedProfile;

      // Inicializando todas as variáveis como visíveis
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 16),
              // CPF
              Visibility(
                visible: cpfVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CPF:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      enabled: disableInput,
                      controller: _cpfController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Nome
              Visibility(
                visible: nomeVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nome:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      enabled: disableInput,
                      controller: _nomeController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Email
              Visibility(
                visible: emailVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      enabled: disableInput,
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Celular
              Visibility(
                visible: celularVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Celular:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _celularController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // CNPJ
              Visibility(
                visible: cnpjVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CNPJ:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      enabled: disableInput,
                      controller: _cnpjController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Período
              Visibility(
                visible: periodoVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Período:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _periodoController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Área de Atuação
              Visibility(
                visible: areaAtuacaoVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Área de Atuação:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _areaAtuacaoController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Responsável
              Visibility(
                visible: responsavelVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Responsável:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _responsavelController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Cargo
              Visibility(
                visible: cargoVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cargo:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _cargoController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Idade
              Visibility(
                visible: idadeVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Idade:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _idadeController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 32), // Ajusta o espaçamento inferior
                  child: ElevatedButton(
                    onPressed: () {
                      // Lógica para salvar as alterações do perfil
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
                      'Salvar Alterações',
                      style: TextStyle(
                        color: Colors.blue, // Garantir que o texto seja azul
                      ),
                    ),
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
