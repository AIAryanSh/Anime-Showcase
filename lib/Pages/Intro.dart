import 'package:flutter/material.dart';
import 'package:shop/Pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 177, 63),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/intro.png',
                  height: 250,
                ),
              ),

              const SizedBox(height: 0),

              //TITLE
              Text(
                "Padhai jaye Bhaad Me!!!! \n      aao Anime Dekhe",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 242, 221, 190),
                ),
              ),

              const SizedBox(height: 70),

              //button to enter the app
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(25),
                    child: const Text("GO",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
