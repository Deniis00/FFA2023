class FuncionarioModel {
  final int id;
  final String nombre;
  String cedulaFuncionario;
  int codigoFuncionario;

  FuncionarioModel({required this.id, required this.nombre, required this.cedulaFuncionario, required this.codigoFuncionario});

  factory FuncionarioModel.fromJson(Map<String, dynamic> json) {
    return FuncionarioModel(
      id: json['id'] ?? 0,
      nombre: json['nombre_funcionario'] ?? '',
      cedulaFuncionario: json['cedula_funcionario'] ?? '',
      codigoFuncionario: json['codigo_funcionario'] ?? 0,
      
    );
  }

  toLowerCase() {}
}
