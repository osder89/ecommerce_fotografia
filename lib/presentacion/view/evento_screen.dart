import 'package:flutter/material.dart';

class EventPhotosScreen extends StatelessWidget {
  static const String name = 'evento';

  const EventPhotosScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Evento X',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.calendar_today,
                                size: 16, color: Colors.white),
                            SizedBox(width: 4),
                            Text(
                              '20 de Noviembre, 2023',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                size: 16, color: Colors.white),
                            SizedBox(width: 4),
                            Text(
                              'Lugar del Evento',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  background: Image.network(
                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-concert-poster-template-design-7aac74443adef25b155da04ea1338157_screen.jpg?ts=1641049200",
                    // URL de la imagen de fondo
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Colors.orange[200], // Nuevo color de tarjeta
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Image.network(
                            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-concert-poster-template-design-7aac74443adef25b155da04ea1338157_screen.jpg?ts=1641049200",
                            // URL de la imagen
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    childCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
