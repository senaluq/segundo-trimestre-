import 'package:flutter/material.dart';

class ItemDetailsScreeen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');

  final String product;
  final nule;
  final texto;
  const ItemDetailsScreeen({Key? key, required this.product, required this.nule, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: NetworkImage('images/pic${nule + 1}.jpg' ),
              width: 500,
              height: 500,
            ),
          ),
          Column(
            children: [
              if(nule == 0)...[
                const Text('Iphone 12', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 4.600.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Iphone 100% original con 255 de almacenamiento y 8 de Ram y una de las mejores camaras es uno de nuestros mejores productos aprovecha esta gran oportunidad ademas te lo entregamos con garantia de 2 años incluyendo sus audifonos ultima oportunidad.', style: TextStyle(fontSize: 20)),
              ]
              else if(nule == 1)...[
                const Text('Xiaomi M8', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 1.400.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Xiaomi M8 con 124 de almacenamiento y 6 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ],
              if(nule == 2)...[
                const Text('OnePlus', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                const Text('Valor 1.400.000', style: TextStyle(fontSize: 18)),
                const Text('Celular onPlus con 255 de almacenamiento y 8 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad. ', style: TextStyle(fontSize: 18)),
              ]
              else if(nule == 3)...[
                const Text('Iphone 10', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 2.200.000', style: TextStyle(fontSize: 18)),
    const Text('Celular Iphone con 124 de almacenamiento y 4 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ],
              if(nule ==4)...[
                const Text('Iphone 11', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 3.600.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Iphone 11 con 124 de almacenamiento y 6 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ],
              if(nule == 5)...[
                const Text('Xiaomi Redmi 10 note', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 900.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Xiaomi Redmi 10 note con 124 de almacenamiento y 6 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ]
              else if(nule == 6)...[
                const Text('Xiaomi Redmi 9A', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 499.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Xiaomi Redmi 9A con 124 de almacenamiento y 6 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ],
              if(nule == 7)...[
                const Text('Xiaomi Redmi 10', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 1.100.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Xiaomi Redmi 10 con 124 de almacenamiento y 6 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ]else if(nule == 8)...[
                const Text('Xioami Redmi 12', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Valor 2.600.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Xiaomi Redmi 12 con 255 de almacenamiento y 8 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ],
              if(nule == 9)...[
                const Text('Xiaomi Redmi 8', style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 18)),
                const Text('Valor 700.000', style: TextStyle(fontSize: 18)),
                const Text('Celular Xiaomi Redmi 8 con 124 de almacenamiento y 4 de ram una de las mejores marcas en el mercado viene con audifonos incluidos aprovecha esta gran oportunidad.  ', style: TextStyle(fontSize: 18)),
              ]
            ],
          )
        ],
      ),
    );
  }
}
