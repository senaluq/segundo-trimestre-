import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show  debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual
  runApp (const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ), //
        body: Center(child: buildImageColumn()),
      ),
    );
  }

  Widget buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26,
      ), // BoxDecoration
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildImageRow(1),
            buildImageRow(3),
          ],
        ),
      ),
    );
  }

// #enddocregion column

// #docregion row

  Widget _buildDecoratedImage(int imageIndex) =>
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset('images/pic$imageIndex.jpg'),
        ),
      );

  Widget buildImageRow(int imageIndex) =>Row(
    children: [

      _buildDecoratedImage(imageIndex),

      _buildDecoratedImage(imageIndex + 1),
    ],
  );
}