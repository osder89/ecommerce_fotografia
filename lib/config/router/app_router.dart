import 'package:ecommerce_fotografia/presentacion/view/evento_screen.dart';
import 'package:ecommerce_fotografia/presentacion/view/home_screen.dart';
import 'package:ecommerce_fotografia/presentacion/view/login_screen.dart';
import 'package:ecommerce_fotografia/presentacion/view/profile.dart';
import 'package:ecommerce_fotografia/presentacion/view/tarjetas_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: LoginScreen.name,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/evento',
    name: EventPhotosScreen.name,
    builder: (context, state) => EventPhotosScreen(),
  ),
  GoRoute(
    path: '/perfil',
    name: PerfilScreen.name,
    builder: (context, state) => const PerfilScreen(),
  ),
  GoRoute(
    path: '/home',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/pagos',
    name: MetodoPagoScreen.name,
    builder: (context, state) => const MetodoPagoScreen(),
  ),
]);
