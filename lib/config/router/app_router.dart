import 'package:ecommerce_fotografia/presentacion/view/evento_screen.dart';
import 'package:ecommerce_fotografia/presentacion/view/home_screen.dart';
import 'package:ecommerce_fotografia/presentacion/view/login_screen.dart';
import 'package:ecommerce_fotografia/presentacion/view/profile.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: '/evento',
    name: EventPhotosScreen.name,
    builder: (context, state) => const EventPhotosScreen(),
  ),
  GoRoute(
    path: '/perfil',
    name: PerfilScreen.name,
    builder: (context, state) => const PerfilScreen(),
  ),
]);
