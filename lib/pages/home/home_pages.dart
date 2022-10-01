import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _red = false;
  var _blue = false;
  var count = 0;

  Widget _handleClickButton(var round){
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: round == 1
            ? Column(
          children: [
            Text('ROUND 1'),
            _red ? _handleClickRed() : _handleClickBlue(),
          ],
        )
            : round == 2
            ? Column(
          children: [
            Text('ROUND 2'),
            _red ? _handleClickRed(): _handleClickBlue(),
          ],
        )
            : Column(
          children: [
            Text('ROUND 3'),
            _red ? _handleClickRed(): _handleClickBlue(),
          ],
        ),
      ),
    );
  }
  Widget _handleClickRed() {
    _red = true;
    count++;
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '10',
          style: GoogleFonts.roboto(
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          '9',
          style: GoogleFonts.roboto(
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _handleClickBlue() {
    _blue = true;
    count++;
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '9',
          style: GoogleFonts.roboto(
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          '10',
          style: GoogleFonts.roboto(
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  void _setClick(){
    _red = false;
    _blue = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING',
          style: GoogleFonts.roboto(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                Image.asset(
                  'assets/images/2020logo.png',
                  height: 100.0,
                ),
                SizedBox(height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Woman's Light (57-60kg) Semi-final",
                              style: GoogleFonts.roboto(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          height: 30.0,
                        ),
                    ),
                  ],
                ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 80.0,
                  color: Colors.red.shade900,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Flag_of_Ireland.svg.png',
                          width: 50.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('IRELAND',
                        style: GoogleFonts.roboto(
                          fontSize: 20.0,
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0,
                    ),
                    Text('HARRINGTON Kellie Anne',
                    style: GoogleFonts.roboto(
                      fontSize: 15.0
                    ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person,
                size: 80.0,
                color: Colors.blue.shade900,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/thailand.png',
                        width: 50.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('THAILAND',
                        style: GoogleFonts.roboto(
                          fontSize: 20.0,
                        ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'SEESONDEE Sudaporn',
                      style: GoogleFonts.roboto(
                        fontSize: 15.0
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(child: Container(
                  color: Colors.red.shade900,
                  height: 7.0,
                )),
                Expanded(child: Container(
                  color: Colors.blue.shade900,
                  height: 7.0,
                )),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                children: [
                  _handleClickButton(1),
                  _handleClickButton(2),
                  _handleClickButton(3),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        child: ElevatedButton(
                          onPressed: _handleClickRed,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.red.shade900),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20.0)),
                            ),
                        ),
                      ),
                    ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(3.0),
                        child: Container(
                            child: ElevatedButton(
                                onPressed: _handleClickBlue,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blue.shade900),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20.0)
                                ),
                              ),
                            ),
                        ),
                    ),),
                  ],
                ),
              ],
            ),
              ],


        ),
      ),
    );
  }
}
