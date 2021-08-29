import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.deepPurple,
        actions: [
          //TODO t and c
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.deepPurple,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width*0.3,
                      child: StaggeredGridView.count(
                        crossAxisCount: 4,
                        children: List.generate(3, (index) => Center(
                            child: Image.asset('assets/coin$index.png'),
                          )),
                        staggeredTiles: [
                          StaggeredTile.count(2, 2), // takes up 2 rows and 2 columns space
                          StaggeredTile.count(2, 1), // takes up 2 rows and 1 column
                          StaggeredTile.count(1, 2), // takes up 1 row and 2 column space
                        ], // scatter them randomly
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            maxRadius: 50,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/cpu.png'),
                            )
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Sometimes\nCryptos Can\nBe Confusing.',
                            style: GoogleFonts.spinnaker(
                                textStyle: Theme.of(context).textTheme.headline4,
                              fontWeight: FontWeight.bold,
                              fontSize: 40
                            ),
                            textAlign: TextAlign.center
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width*0.3,
                      child: StaggeredGridView.count(
                        crossAxisCount: 4,
                        children: List.generate(3, (index) => Center(
                          child: Image.asset('assets/coin${3+index}.png'),
                        )),
                        staggeredTiles: [
                          StaggeredTile.count(2, 1), // takes up 2 rows and 2 columns space
                          StaggeredTile.count(2, 1), // takes up 2 rows and 1 column
                          StaggeredTile.count(1, 2), // takes up 1 row and 2 column space
                        ], // scatter them randomly
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 5,
                children: List.generate(5, (index) {
                  List data = [1,2,3,5,9,11];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: data.contains(index) ? Colors.white : Colors.deepPurple,
                      ),
                    ],
                  );
                }),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
