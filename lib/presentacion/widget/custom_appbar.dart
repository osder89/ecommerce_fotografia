import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.headline6;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                Icons.event_available,
                color: colors.primary, // Color primario para el icono
              ),
              SizedBox(width: 5),
              Text(
                'Eventos',
                style: titleStyle!.copyWith(
                  color: Colors.white, // Color para el texto del título
                  fontWeight: FontWeight.bold, // Ajusta el peso de la fuente
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  // Coloca aquí la lógica para el botón de búsqueda
                },
                icon: const Icon(Icons.search),
                color: Colors.white, // Color del icono de búsqueda
              ),
            ],
          ),
        ),
      ),
    );
  }
}
