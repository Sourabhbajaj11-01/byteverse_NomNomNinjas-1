import 'dart:async';
import 'package:flutter/material.dart';
import 'package:BYTEVERSE_NOMNOMNINJAS-1/diet.dart';
import 'package:BYTEVERSE_NOMNOMNINJAS-1/drinks.dart';
import 'package:BYTEVERSE_NOMNOMNINJAS-1/gym.dart';
import 'package:BYTEVERSE_NOMNOMNINJAS-1/homepg.dart';
import 'package:BYTEVERSE_NOMNOMNINJAS-1/location.dart';
import 'package:BYTEVERSE_NOMNOMNINJAS-1/mealplan.dart';
import 'package:BYTEVERSE_NOMNOMNINJAS-1/vegan.dart';


void main() => runApp(rasoirider());

class rasoirider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/getStarted': (context) => GetStartedPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/homepg': (context) => HomePage(),
        '/gym': (context) => GymPage(),
        '/vegan': (context) => VeganPage(),
        '/diet': (context) => DietPage(),
        '/drinks': (context) => DrinksPage(),
        '/location': (context) => LocationPage(),
        '/mealplan': (context) => MealPlan(),





      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/getStarted');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body:Center(
            child: Image.asset('assets/images/rasoi_.png')

        )

    );
  }
}

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/bg__.png', // Adjust path according to your asset location
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Mobile No.',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
