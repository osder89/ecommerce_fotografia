import 'package:ecommerce_fotografia/presentacion/view/evento_screen.dart';
import 'package:ecommerce_fotografia/presentacion/widget/custom_appbar.dart';
import 'package:ecommerce_fotografia/presentacion/widget/custom_bottom_navigatorbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigator(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    initPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(),
        backgroundColor: Colors.blueAccent,
        elevation: 2,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  BarraBuscar(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CardItem(
                    title: 'Concierto de rock',
                    subtitle: '20 - Febrero - 2023',
                    imageUrl: "assets/4.jpg",
                    voidCallbackAction: () {},
                  ),
                  CardItem(
                    title: 'Conductores',
                    subtitle: '23 Conductores',
                    voidCallbackAction: () {},
                    imageUrl: "assets/5.jpg",
                  ),
                  CardItem(
                    title: 'Encargados',
                    subtitle: '27 Encargados',
                    voidCallbackAction: () {},
                    imageUrl: "assets/6.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarraBuscar extends StatelessWidget {
  const BarraBuscar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Buscar',
          border: InputBorder.none,
        ),
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
        cursorColor: Colors.grey,
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final VoidCallback? voidCallbackAction;

  const CardItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.voidCallbackAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (voidCallbackAction != null) {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return EventPhotosScreen(); // Reemplaza YourNextScreen con tu pantalla destino
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          );
        }
      },
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                imageUrl,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//notificaciones push

Future<void> initPlatform() async {
  await OneSignal.shared.setAppId("76e53529-299d-4cb2-b663-b4323fda4c2a");
  await OneSignal.shared
      .getDeviceState()
      .then((value) => {print(value!.userId)});
}
