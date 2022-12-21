import 'package:flutter/material.dart';
import 'cart_screen.dart' show CartScreen;
import 'items_details_screen.dart' show ItemDetailsScreeen;

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  @override
  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  String _selectedProduct = "";
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de productos $_count'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const CartScreen()));
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          onTap: () {
            setState(() => _selectedProduct = 'Producto ${index + 1}');
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => ItemDetailsScreeen(
                    nule: index,
                    product: _selectedProduct,
                    key: ItemDetailsScreeen.valueKey)));
          },
          title: Text('Producto ${index + 1}'),
        ),
        itemCount: 10,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Contador Incremental',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
