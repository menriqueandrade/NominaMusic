// ignore_for_file: non_constant_identifier_names, unnecessary_this, prefer_const_constructors

class Cargo {
  final String cargo;
  final String codigo;

  const Cargo({required this.cargo, required this.codigo});

  static List<Cargo> ObtenerCargos() {
    return <Cargo>[
      Cargo(
      codigo: '1', 
      cargo: 'Pianista'),
    ];
  }
}
