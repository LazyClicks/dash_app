import 'package:dash_app/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: false,
        //primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Image.asset("assets/Frame.png"),
        ),
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: Image.asset("assets/Group.png"),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF3A6FE2), Color(0xFF9E7BF5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/dash.png"),
              Center(
                child: Text(
                  "Welcome To\nDash App",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text("Get Started"),
                style: ElevatedButton.styleFrom(
                  fixedSize: //make the height 50
                      Size(
                    MediaQuery.of(context).size.width *
                        0.7, // set width to 70% of device width
                    50,
                  ),

                  backgroundColor:
                      Colors.white, // set background color to white
                  foregroundColor:
                      Colors.blue[900], // set text color to blue[900]
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // set border radius to 15
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Positioned(
          top: -10,
          right: -70,
          child: Image.asset("assets/Group.png"),
        ),
        Positioned(
          bottom: -80,
          left: -100,
          child: Image.asset("assets/Frame.png"),
        ),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: Home(),
      ),
    );
  }
}
