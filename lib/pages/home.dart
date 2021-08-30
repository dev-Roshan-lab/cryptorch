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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 20,
              color: Colors.deepPurple,
            ),
            Container(
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
                                StaggeredTile.count(2, 4),
                                StaggeredTile.count(1, 2),
                                StaggeredTile.count(2, 2),
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
                                  'Sometimes\nCryptos can\nbe confusing.',
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
                                StaggeredTile.count(2, 3), // takes up 2 rows and 1 column
                                StaggeredTile.count(2, 6), // takes up 1 row and 2 column space
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
                                elevation: 30,
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Now predict the future Cryptocurrency prices with help of Artificial Intelligence and leverage your application!',
                              style: GoogleFonts.spinnaker(
                                  textStyle: Theme.of(context).textTheme.headline4,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
                  Container(
                    height: 20,
                    color: Colors.white,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10,10,0,10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                width: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Get the API',
                                        style: GoogleFonts.spinnaker(
                                            textStyle: Theme.of(context).textTheme.headline2,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ),
                                    ),
                                    Divider(
                                      color: Colors.yellow,
                                      thickness: 3,
                                    ),
                                    Text(
                                      'Head over to RapidAPI,\nchoose your plan that suits you'
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  SizedBox(
                                    width: 50,
                                    child: Image.asset('assets/right-arrow.png'),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                width: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Integrate It',
                                      style: GoogleFonts.spinnaker(
                                          textStyle: Theme.of(context).textTheme.headline2,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.yellow,
                                      thickness: 3,
                                    ),
                                    Text(
                                        'With Just few lines you can integrate the API\nto predict the future!'
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  SizedBox(
                                    width: 50,
                                    child: Image.asset('assets/right-arrow.png'),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                width: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Create UI',
                                      style: GoogleFonts.spinnaker(
                                          textStyle: Theme.of(context).textTheme.headline2,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    Divider(
                                      color: Colors.yellow,
                                      thickness: 3,
                                    ),
                                    Text(
                                        'The API returns what you exactly need to create a\nbeautiful graph till any complex UI'
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                elevation: 20,
                child: Column(
                  children: [
                    Text(
                      'Documentation',
                      style: GoogleFonts.spinnaker(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),
                    )
                  ],
                ),
              ),
            )
          ],
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