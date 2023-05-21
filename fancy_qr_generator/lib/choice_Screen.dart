import 'package:fancy_qr_generator/Qr_Generator.dart';
import 'package:fancy_qr_generator/Result_Screen.dart';
import 'package:fancy_qr_generator/Scanner.dart';
import 'package:flutter/material.dart';

class Home_Landing_Screen extends StatelessWidget {
  const Home_Landing_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text(
          'Fancy Qr Generator',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size.fromHeight(50), 
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: const Text(
                    'Text to Qr Code',
                    style: TextStyle(fontSize: 25),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.black,
                //     minimumSize: const Size.fromHeight(50), 
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => MyScannedResult()));
                //   },
                //   child: const Text(
                //     'Scanned Result Screen',
                //     style: TextStyle(fontSize: 25),
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size.fromHeight(50), 
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyScanner()));
                  },
                  child: const Text(
                    'My Scanner Screen',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
