
class Prospecto{
  final int id;
  final String nombre;

  Prospecto({this.id, this.nombre});
  
  factory Prospecto.fromJson(Map<String, dynamic> json) {
    return Prospecto(
      id: json['id'],
      nombre: json['nombre'],
    );
  }
}