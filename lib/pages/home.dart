import 'package:cryptorch/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'dart:html';

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
                          MediaQuery.of(context).size.width > 700 ? SizedBox(
                            height: MediaQuery.of(context).size.height*0.5,
                            width: MediaQuery.of(context).size.width*0.3,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.asset('assets/coin0.png'),
                                  top: 5,
                                  right: 10,
                                  width: 70,
                                  height: 70,
                                ),
                                Positioned(
                                  child: Image.asset('assets/coin1.png'),
                                  top: 40,
                                  left: 10,
                                ),
                                Positioned(
                                  child: Image.asset('assets/coin2.png'),
                                  bottom: 10,
                                  right: 10,
                                  width: 120,
                                  height: 80,
                                )
                              ],
                            ),
                          ) : SizedBox(
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
                                    'Sometimes\nCryptos can be confusing.',
                                    style: GoogleFonts.spinnaker(
                                        fontWeight: FontWeight.bold,
                                      fontSize: 30
                                    ),
                                    textAlign: TextAlign.center
                                ),
                              ],
                            ),
                          ),
                          MediaQuery.of(context).size.width > 700 ? SizedBox(
                            height: MediaQuery.of(context).size.height*0.5,
                            width: MediaQuery.of(context).size.width*0.3,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.asset('assets/coin3.png'),
                                  top: 15,
                                  left: 10,
                                  width: 70,
                                  height: 70,
                                ),
                                Positioned(
                                  child: Image.asset('assets/coin4.png'),
                                  top: 55,
                                  right: 10,
                                ),
                                Positioned(
                                  child: Image.asset('assets/coin5.png'),
                                  bottom: 5,
                                  left: 10,
                                  width: 120,
                                  height: 80,
                                )
                              ],
                            ),
                          ) : SizedBox(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  await canLaunch('https://rapidapi.com/dev.vividgoat/api/cryptorch/') ? await launch('https://rapidapi.com/dev.vividgoat/api/cryptorch/') : print('error');
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width < 450 ? MediaQuery.of(context).size.width / 2- 20 : 200,
                                  height: MediaQuery.of(context).size.width < 450 ? 50 : 70,
                                  child: Card(
                                    child: Image.asset('assets/rapidapi.png'),
                                    elevation: 30,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () async {
                                  await canLaunch('https://www.producthunt.com/posts/cryptorch-api') ? await launch('https://www.producthunt.com/posts/cryptorch-api') : print('error');
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width < 450 ? MediaQuery.of(context).size.width / 2 - 20 : 200,
                                  height: MediaQuery.of(context).size.width < 450 ? 50 : 70,
                                  child: Card(
                                    child: Image.asset('assets/producthunt.png'),
                                    elevation: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Now predict the future Cryptocurrency prices with help of Artificial Intelligence and leverage your application!',
                              style: GoogleFonts.spinnaker(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width < 450 ?  20 : 24
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                width: MediaQuery.of(context).size.width < 450 ? 300 : MediaQuery.of(context).size.width / 3 - 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Get the API',
                                      style: GoogleFonts.spinnaker(
                                          textStyle: Theme.of(context).textTheme.headline2,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.yellow,
                                      thickness: 3,
                                    ),
                                    Text(
                                        'Head over to RapidAPI,\nchoose your plan that suits you',
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: Image.asset('assets/right-arrow.png'),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                width: MediaQuery.of(context).size.width < 450 ? 300 : MediaQuery.of(context).size.width / 3 - 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Integrate It',
                                      style: GoogleFonts.spinnaker(
                                          textStyle: Theme.of(context).textTheme.headline2,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.yellow,
                                      thickness: 3,
                                    ),
                                    Text(
                                        'With Just few lines you can integrate the API\nto predict the future!',
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: Image.asset('assets/right-arrow.png'),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                width: MediaQuery.of(context).size.width < 450 ? 300 : MediaQuery.of(context).size.width / 3 - 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Create UI',
                                      style: GoogleFonts.spinnaker(
                                          textStyle: Theme.of(context).textTheme.headline2,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    Divider(
                                      color: Colors.yellow,
                                      thickness: 3,
                                    ),
                                    Text(
                                        'The API returns what you exactly need to create a\nbeautiful UI',
                                      style: TextStyle(
                                        fontSize: 20
                                      ),
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
              child: Container(
                color: Colors.grey[100],
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Documentation',
                        style: GoogleFonts.spinnaker(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Response Structure',
                            style: GoogleFonts.spinnaker(
                                textStyle: Theme.of(context).textTheme.headline2,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                            ),
                          ),
                          Container(
                            width: 250,
                            child: Divider(
                              color: Colors.yellow,
                              thickness: 3,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              elevation: 20,
                              color: Colors.black,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0,20,20,20),
                                child: Text(
                                  '''
                                 
                                  {
                                    "data_x_actual" : "["DATE_1","DATE_2",....]",
                                    "data_x_predicted" : "["DATE_1", "DATE_2",....]",
                                    "data_y_actual" : "[PRICE_OF_COIN_DATE_1, PRICE_OF_COIN_DATE_2]",
                                    "data_y_predicted" : "[PREDICTED_PRICE_OF_COIN_DATE_1, PREDICTED_PRICE_OF_COIN_DATE_2]"
                                  }
                                  ''',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'The API returns 4 JSON pairs',
                            style: GoogleFonts.spinnaker(
                                textStyle: Theme.of(context).textTheme.headline2,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                            ),
                          ),
                          Container(
                            width: 400,
                            child: Divider(
                              color: Colors.yellow,
                              thickness: 3,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'data_x_actual ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 20
                                    )
                                  ),
                                  TextSpan(
                                    text: 'is a string that should be turned into a list and consists of Strings, it consists of the date',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20
                                      )
                                  )
                                ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'data_x_predicted ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black,
                                            fontSize: 20
                                        )
                                    ),
                                    TextSpan(
                                      text: 'is a string that should be turned into a list and consists of Strings, it consists of the date. Same as above and exists for easiness.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20
                                        )
                                    )
                                  ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'data_y_actual ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black,
                                            fontSize: 20
                                        )
                                    ),
                                    TextSpan(
                                      text: 'is a string that should be turned into a list and consists of integers, it is made up of the real price of the requested cryptocurrency in USD.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20
                                        )
                                    )
                                  ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'data_y_predicted ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          color: Colors.black,
                                          fontSize: 20
                                        )
                                    ),
                                    TextSpan(
                                      text: 'is a string that should be turned into a list and consists of integers, it is made up of the predcited price of the requested cryptocurrency in USD.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20
                                      )
                                    )
                                  ]
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'Sample Response',
                            style: GoogleFonts.spinnaker(
                                textStyle: Theme.of(context).textTheme.headline2,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                            ),
                          ),
                          Container(
                            width: 250,
                            child: Divider(
                              color: Colors.yellow,
                              thickness: 3,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              elevation: 20,
                              color: Colors.black,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    response,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, -2),
                  )]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text(
                      'Terms and Conditions',
                      style: GoogleFonts.spinnaker(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text('Terms and Conditions'),
                          content: SingleChildScrollView(
                            child: Text(
                                tandc
                            ),
                          ),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text('Close', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),))
                          ],
                        );
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  TextButton(
                    child: Text(
                      'Contact Us',
                      style: GoogleFonts.spinnaker(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () async {
                      if (await canLaunch('mailto:reach@cryptorch.ml?subject=Subject...&body=Enter Your Queries here')) {
                        await launch('mailto:reach@cryptorch.ml?subject=Subject...&body=Enter Your Queries here');
                      } else {
                        throw 'Could not launch';
                      }
                    },
                  ),
                  SizedBox(width: 20,),
                  TextButton(
                    child: Text(
                      'Github',
                      style: GoogleFonts.spinnaker(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () async {
                      await canLaunch('https://www.github.com/dev-Roshan-lab/cryptorch') ? await launch('https://www.github.com/dev-Roshan-lab/cryptorch') : print('error');
                    },
                  )
                ],
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