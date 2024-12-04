import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(

        backgroundColor: Color(0xFF14181B),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '\n\n\nThanks for Purchase UI Bundle\n\n\nPlease review documentation for activating this product license.\n\nThis Application will work once your license has been verified.\n\nYou will get this documentation in product bundle zip file. or you can contact us via support.\n\n\n\n',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
                  // style:  (
                  //   fontFamily: 'Readex Pro',
                  //   color: Colors.white,
                  //   fontSize: 16.0,
                  //   letterSpacing: 0.0,
                  // ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchUrl(Uri(
                          scheme: 'mailto',
                          path: 'templatevilla007@gmail.com',
                          query: {
                            'subject': 'flutter bundle app verify issue.',
                            'body': 'i\'m unable to verify my purchase.',
                          }
                              .entries
                              .map((MapEntry<String, String> e) =>
                          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&')));
                    },
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Email : templatevilla007@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFFE5072A),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                            // style: FlutterFlowTheme.of(context)
                            //     .bodyMedium
                            //     .override(
                            //   fontFamily: 'Readex Pro',
                            //   color: Color(0xFFE5072A),
                            //   fontSize: 18.0,
                            //   letterSpacing: 0.0,
                            //   fontWeight: FontWeight.w600,
                          ),

                        ],
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                        // style: FlutterFlowTheme.of(context).bodyMedium.override(
                        //   fontFamily: 'Readex Pro',
                        //   letterSpacing: 0.0,
                        //   fontWeight: FontWeight.w600,
                        // ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://join.skype.com/invite/gQAL3zG3K6di' );
                    },
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Skype : templatesvilla',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF0A8BD4),
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                            // style: FlutterFlowTheme.of(context)
                            //     .bodyMedium
                            //     .override(
                            //   fontFamily: 'Readex Pro',
                            //   color: Color(0xFF0A8BD4),
                            //   fontSize: 20.0,
                            //   letterSpacing: 0.0,
                            //   fontWeight: FontWeight.w600,
                            // ),
                          )
                        ],
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                        // style: FlutterFlowTheme.of(context).bodyMedium.override(
                        //   fontFamily: 'Readex Pro',
                        //   letterSpacing: 0.0,
                        //   fontWeight: FontWeight.w600,
                        // ),
                      ),
                    ),
                  ),
                ),
              ),
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child:  ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            await launchURL(
                                'https://templatevilla.net/codecanyon/templatevilla_bundle/verify/');
                          },
                          child: Text('Acticate your license.'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all(TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                              letterSpacing: 0.0,
                            )),
                            elevation: MaterialStateProperty.all(3.0),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // child: FFButtonWidget(
                    //   onPressed: () async {
                    //     await launchURL(
                    //         'https://templatevilla.net/codecanyon/templatevilla_bundle/verify/');
                    //   },
                    //   text: 'Acticate your license.',
                    //   options: FFButtonOptions(
                    //     height: 50.0,
                    //     padding: EdgeInsetsDirectional.fromSTEB(
                    //         24.0, 0.0, 24.0, 0.0),
                    //     iconPadding:
                    //     EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //     color: Colors.white,
                    //     textStyle:
                    //     FlutterFlowTheme.of(context).titleSmall.override(
                    //       fontFamily: 'Readex Pro',
                    //       color: Colors.black,
                    //       letterSpacing: 0.0,
                    //     ),
                    //     elevation: 3.0,
                    //     borderSide: BorderSide(
                    //       color: Colors.transparent,
                    //       width: 1.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(8.0),
                    //   ),
                    // ),
                  ),
                ],
              ),
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        await launchURL(
                            'https://youtu.be/UV6huranvbM?si=bc-UPS3VinxyvhqQ');
                      },
                      child: Text('Watch Video for How to verify purchase'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFFFCE6E6)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        )),
                        elevation: MaterialStateProperty.all(3.0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    // child: FFButtonWidget(
                    //   onPressed: () async {
                    //     await launchURL(
                    //         'https://youtu.be/UV6huranvbM?si=bc-UPS3VinxyvhqQ');
                    //   },
                    //   text: 'Watch Video for How to verify purchase',
                    //   options: FFButtonOptions(
                    //     height: 40.0,
                    //     padding: EdgeInsetsDirectional.fromSTEB(
                    //         24.0, 0.0, 24.0, 0.0),
                    //     iconPadding:
                    //     EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //     color: Color(0xFFFCE6E6),
                    //     textStyle:
                    //     FlutterFlowTheme.of(context).titleSmall.override(
                    //       fontFamily: 'Readex Pro',
                    //       color: Colors.black,
                    //       letterSpacing: 0.0,
                    //     ),
                    //     elevation: 3.0,
                    //     borderSide: BorderSide(
                    //       color: Colors.transparent,
                    //       width: 1.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(8.0),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // // This method is rerun every time setState is called, for instance as done
    // // by the _incrementCounter method above.
    // //
    // // The Flutter framework has been optimized to make rerunning build methods
    // // fast, so that you can just rebuild anything that needs updating rather
    // // than having to individually change instances of widgets.
    // return Scaffold(
    //   appBar: AppBar(
    //     // TRY THIS: Try changing the color here to a specific color (to
    //     // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    //     // change color while the other colors stay the same.
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     // Here we take the value from the MyHomePage object that was created by
    //     // the App.build method, and use it to set our appbar title.
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     // Center is a layout widget. It takes a single child and positions it
    //     // in the middle of the parent.
    //     child: Column(
    //       // Column is also a layout widget. It takes a list of children and
    //       // arranges them vertically. By default, it sizes itself to fit its
    //       // children horizontally, and tries to be as tall as its parent.
    //       //
    //       // Column has various properties to control how it sizes itself and
    //       // how it positions its children. Here we use mainAxisAlignment to
    //       // center the children vertically; the main axis here is the vertical
    //       // axis because Columns are vertical (the cross axis would be
    //       // horizontal).
    //       //
    //       // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
    //       // action in the IDE, or press "p" in the console), to see the
    //       // wireframe for each widget.
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         const Text(
    //           'You have pushed the button this many times:',
    //         ),
    //         Text(
    //           '$_counter',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //       ],
    //     ),
    //   ),
    //  // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }

  Future launchURL(String url) async {
    var uri = Uri.parse(url);
    try {
      await launchUrl(uri);
    } catch (e) {
      throw 'Could not launch $uri: $e';
    }
  }
}
