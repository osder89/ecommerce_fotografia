

class EventoModel {
    final int id;
    final String titulo;
    final dynamic tipo;
    final String descripcion;
    final DateTime fecha;

    EventoModel({
        required this.id,
        required this.titulo,
        required this.tipo,
        required this.descripcion,
        required this.fecha,
    });

    factory EventoModel.fromJson(Map<String, dynamic> json) => EventoModel(
        id: json["id"],
        titulo: json["titulo"],
        tipo: json["tipo"],
        descripcion: json["descripcion"],
        fecha: DateTime.parse(json["fecha"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "titulo": titulo,
        "tipo": tipo,
        "descripcion": descripcion,
        "fecha": fecha.toIso8601String(),
    };
}
