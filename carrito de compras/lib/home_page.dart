import 'package:flutter/material.dart';
import 'presentacion/shopping_cart.dart' show Carrito;
import 'presentacion/lista_productos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ListaProductos> _productosModel = <ListaProductos>[];

  final List<ListaProductos> _listaCarro = <ListaProductos>[];

  @override
  void initState() {
    super.initState();
    _productos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Disponibles '),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only (right: 16.8, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  const Icon(
                    Icons.shopping_cart,
                    size: 38,
                  ),
                  if (_listaCarro.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only (left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor:
                        Colors.red[800],
                        foregroundColor: Colors.white,
                        child: Text(
                          _listaCarro.length.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 12.0
                          ),
                        ),
                      ),
                    )
                ],
              ),
              onTap: () {
                if (_listaCarro.isNotEmpty) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Carrito(_listaCarro)
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _productosModel.length,
        itemBuilder: (context, index) {
          var item = _productosModel[index];
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Image(
                      image: AssetImage(
                          _productosModel[index].imageURL.toString()),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            _productosModel[index].nombre.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Text(_productosModel[index].precio.toString()),
                        ),
                      ],
                    ),
                  )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (!_listaCarro.contains(item)) {
                            _listaCarro.add(item);
                          } else {
                            _listaCarro.remove(item);
                          }
                        });
                      },
                      icon: (!_listaCarro.contains(item))
                          ?const Icon(Icons.shopping_cart)
                          :const Icon(Icons.shopping_cart_checkout,
                        color: Colors.red,
                            ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _productos() {
    var list = <ListaProductos>[
      ListaProductos(
          nombre: 'Volkswagen Jetta GLI',
          precio:40000,
          imageURL: 'images/Volkswagen Jetta GLI.jpg',
          id: 1,
          isAdd: false
      ),
      ListaProductos (
          nombre:'Chevrolet Corvette Stingray',
          precio: 16508,
          imageURL: 'images/Chevrolet Corvette Stingray.jpg',
          id: 2,
          isAdd: false
      ),
      ListaProductos (
          nombre:'Tesla Roadster',
          precio: 16508,
          imageURL: 'images/Tesla Roadster.jpg',
          id: 2,
          isAdd: false
      ),
      ListaProductos (
          nombre:'Aston Martin DBX',
          precio: 16508,
          imageURL: 'images/Aston Martin DBX.jpg',
          id: 2,
          isAdd: false
      ),// ListaProductos
      ListaProductos (
          nombre: 'Ford Bronco',
          precio: 11758,
          imageURL: 'images/Ford Bronco.jpg',
          id: 3,
          isAdd: false
      ),
      ListaProductos (nombre: 'Toyota GR Supra',
          precio: 8900,
          imageURL: 'images/Toyota GR Supra.jpg',
          id: 4,
          isAdd: false
      ),
      ListaProductos (nombre: 'Toyota GR Supra',
          precio: 8900,
          imageURL: 'images/Toyota GR Supra.jpg',
          id: 4,
          isAdd: false
      ),
      ListaProductos (nombre: 'Toyota GR Supra',
          precio: 8900,
          imageURL: 'images/Toyota GR Supra.jpg',
          id: 4,
          isAdd: false
      ),
      ListaProductos (nombre: 'Ford Mustang Shelby GT500',
          precio: 17000,
          imageURL: 'images/Ford Mustang Shelby GT500.jpeg',
          id: 5,
          isAdd: false
      ),
    ];
    setState(() {
      _productosModel = list;
    });
  }
}
