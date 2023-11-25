import 'package:flutter/material.dart';

class MetodoPagoScreen extends StatelessWidget {
  static const String name = 'metodo_pago';

  const MetodoPagoScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Métodos de Pago'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Agregar Tarjeta de Crédito',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 3,
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(Icons.credit_card, color: Colors.black),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          'Agregar nueva tarjeta',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Icon(Icons.add, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tus Tarjetas de Crédito',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 10),
            _buildCreditCard('**** **** **** 1234', 'VISA'),
            _buildCreditCard('**** **** **** 5678', 'MasterCard'),
          ],
        ),
      ),
    );
  }

  Widget _buildCreditCard(String cardNumber, String cardType) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          cardNumber,
          style: TextStyle(color: Colors.yellow),
        ),
        subtitle: Text(
          cardType,
          style: TextStyle(color: Colors.yellow),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.yellow),
        onTap: () {},
      ),
    );
  }
}
