import 'package:flutter/material.dart';

class EventPhotosScreen extends StatelessWidget {
  static const String name = 'evento';

  EventPhotosScreen({Key? key});

  final List<String> imageAssets = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueAccent,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Fotos del evento'),
                  background: Image.asset(
                    'assets/4.jpg',
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
                        color: Colors.orange[200],
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  imageAssets[index % imageAssets.length]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      );
                    },
                    childCount:
                        4, // Aquí puedes ajustar la cantidad de imágenes a mostrar
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
