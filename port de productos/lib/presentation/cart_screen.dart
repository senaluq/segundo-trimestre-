import 'package:flutter/material.dart';
import 'items_details_screen.dart' show ItemDetailsScreeen;

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('carrito de compras'),
      ),
      body: ListView.separated(
          itemBuilder: (_, int index) => ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ItemDetailsScreeen(
                    nule: index,
                    product: 'Producto ${index + 1}',
                  )));
            },
            title: Text('Productos ${index + 1}'),
            trailing: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(58),
                ),
                child: Text(' ${index + 1}')),
          ),
          separatorBuilder: (ctx, idx) => const Divider(),
          itemCount: 3),
    );
  }
}
