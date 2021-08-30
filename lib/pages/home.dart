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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
                            SizedBox(
                              height: 20,
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
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurple,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('launch url');
                        },
                        child: Container(
                          width: 200,
                          height: 70,
                          child: Card(
                            child: Image.asset('assets/rapidapi.png'),
                            elevation: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Now predict future prices of crypto-currencies with great accuracy\n Cryptorch making crypto investments easier!',
                        style: GoogleFonts.spinnaker(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: CustomPaint(
                  painter: CurvePainter(),
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
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var shadowPaint = Paint();
    shadowPaint.color = Colors.blueGrey;
    shadowPaint.style = PaintingStyle.stroke;
    shadowPaint.strokeWidth = 4;
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 5);


    var path = Path();

    path.moveTo(0, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.75,
        size.width * 0.5, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.75, size.height,
        size.width * 1.0, size.height * 0.9);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    var shadow = Path();
    shadow.moveTo(0, size.height * 0.9);
    shadow.quadraticBezierTo(size.width * 0.25, size.height * 0.75,
        size.width * 0.5, size.height * 0.9);
    shadow.quadraticBezierTo(size.width * 0.75, size.height,
        size.width * 1.0, size.height * 0.9);



    canvas.drawPath(path, paint);
    canvas.drawPath(shadow, shadowPaint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}