class Usuarios {
  String cpf;
  String cnpj;
  String nome;
  int idade;
  String email;
  String celular;
  String periodo;
  String cargo;
  String areaDeAtuacao;
  String responsavel;

  // Construtor
  Usuarios({
    required this.cpf,
    required this.cnpj,
    required this.nome,
    required this.idade,
    required this.email,
    required this.celular,
    required this.periodo,
    required this.cargo,
    required this.areaDeAtuacao,
    required this.responsavel
  });

  // Getters
  String get getCpf => cpf;
  String get getCnpj => cnpj;
  String get getNome => nome;
  int get getIdade => idade;
  String get getEmail => email;
  String get getCelular => celular;
  String get getPeriodo => periodo;
  String get getCargo => cargo;
  String get getAreaDeAtuacao => areaDeAtuacao;
  String get getResponsavel => responsavel;

  // Setters
  set setCpf(String cpf) {
    this.cpf = cpf;
  }

  set setCnpj(String cnpj) {
    this.cnpj = cnpj;
  }

  set setNome(String nome) {
    this.nome = nome;
  }

  set setIdade(int idade) {
    this.idade = idade;
  }

  set setEmail(String email) {
    this.email = email;
  }

  set setCelular(String celular) {
    this.celular = celular;
  }

  set setPeriodo(String periodo) {
    this.periodo = periodo;
  }

  set setCargo(String cargo) {
    this.cargo = cargo;
  }

  set setAreaDeAtuacao(String areaDeAtuacao) {
    this.areaDeAtuacao = areaDeAtuacao;
  }

  set setResponsavel(String responsavel){
    this.responsavel = responsavel;
  }
}
