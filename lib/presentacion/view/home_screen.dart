import 'package:ecommerce_fotografia/presentacion/view/evento_screen.dart';
import 'package:ecommerce_fotografia/presentacion/view/profile.dart';
import 'package:ecommerce_fotografia/presentacion/view/tarjetas_screen.dart';
import 'package:ecommerce_fotografia/presentacion/widget/custom_appbar.dart';
import 'package:ecommerce_fotografia/presentacion/widget/custom_bottom_navigatorbar.dart';
import 'package:ecommerce_fotografia/presentacion/widget/movie_horizontal_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  BarraBuscar(),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CardItem(
                    title: 'Concierto de rock',
                    subtitle: '20 - Febrero - 2023',
                    imageUrl:
                        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-concert-poster-template-design-7aac74443adef25b155da04ea1338157_screen.jpg?ts=1641049200",
                    voidCallbackAction: () {},
                  ),
                  CardItem(
                    title: 'Conductores',
                    subtitle: '23 Conductores',
                    voidCallbackAction: () {},
                    imageUrl:
                        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-concert-poster-template-design-7aac74443adef25b155da04ea1338157_screen.jpg?ts=1641049200",
                  ),
                  CardItem(
                    title: 'Encargados',
                    subtitle: '27 Encargados',
                    voidCallbackAction: () {},
                    imageUrl:
                        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-concert-poster-template-design-7aac74443adef25b155da04ea1338157_screen.jpg?ts=1641049200",
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
    return Expanded(
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
        margin: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.network(
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
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
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
