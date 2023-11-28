import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleLarge;

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
              const SizedBox(width: 5),
              Text(
                'Eventos',
                style: titleStyle!.copyWith(
                  color: Colors.white, // Color para el texto del título
                  fontWeight: FontWeight.bold, // Ajusta el peso de la fuente
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
