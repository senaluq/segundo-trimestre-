import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //open drawer
            myDrawer,
            //first half page
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  //first 4 boxes in grid
                  AspectRatio(
                      aspectRatio: 4,
                      child: SizedBox(
                        width: double.infinity,
                        child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return MyBox(
                                box: index
                            );
                          },
                        ),
                      ),
                  ),

                    Expanded(
                      child:ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index){
                          return  MyTile(
                            cont: index,
                          );
                      },
                          ),
                        ),
                      ],
                    ),
                  ),
                    Expanded(
                      child: Column(
                       children: [
                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('images/port2.jpg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),

            ),
          ),
        ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[200],
                          ),
                            child: Column(
                              children:  [
                                const Center(
                                  child: Text('Contactanos',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30,
                                    fontFamily: 'RaleWay',
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  verticalDirection: VerticalDirection.down,

                                  children: [
                                    FloatingActionButton(onPressed: () {},
                                    backgroundColor: Colors.blue,
                                      child: const Icon(
                                        Icons.whatsapp
                                      ),
                                    ),
                                    FloatingActionButton(onPressed: () {},
                                      backgroundColor: Colors.blue,
                                      child: const Icon(
                                          Icons.facebook
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                        ),
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