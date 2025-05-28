import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.05,
            image: AssetImage('assets/images/pokemon_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // flutter dex logo
              Image.asset('assets/images/flutterdex_logo.png'),
              // gotta catch em all text
              Text(
                'Gotta catch \'em all',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black.withAlpha((255 * 0.3).toInt()),
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
              // pikachu
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 30),
                child: Image.asset('assets/images/pikachu.png'),
              ),
              // enter mobile number
              Text(
                'Enter mobile number to proceed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 16),
              // input text field
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(43, 0, 0, 0),
                      offset: Offset(0, 0),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '+63xxxxxxxxx',
                    labelText: 'Mobile Number',
                    prefixIcon: Icon(Icons.phone_android_sharp),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              // lets catch em button
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: Text(
                  'Let\'s Catch \'Em',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
