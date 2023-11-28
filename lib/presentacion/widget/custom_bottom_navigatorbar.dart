import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigator extends StatelessWidget {
  const CustomBottomNavigator({super.key});
  void onItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/pagos');
        break;
      case 2:
        context.go('/perfil');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => onItem(context, index),
      elevation: 0,
      backgroundColor: Colors.blueAccent, // Cambio del color de fondo a negro
      selectedItemColor: Colors.black, // Color del ícono seleccionado
      unselectedItemColor: Colors.white, // Color del ícono no seleccionado
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'Metodos de pago',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'Perfil',
        ),
      ],
    );
  }
}
