import 'package:fancy_qr_generator/choice_Screen.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
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

      // resizeToAvoidBottomInset: false, // This is use for Remove Bottom Overflow when Keyboard is Poped Up
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                // width: 300,
                height: 100,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Qr Code Generated Automatically",
                      textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 55, 0, 255),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ))
                    ]),
              ),
              Center(
                child: PrettyQr(
                  size: 300,
                  data: data,
                  errorCorrectLevel: QrErrorCorrectLevel.M,
                  typeNumber: null,
                  roundEdges: true,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                  width: 300,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        data = value;
                      });
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                        hintText: "Type Here To Generate QR",
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color.fromARGB(255, 0, 255, 42)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(50))),
                  )),
              const SizedBox(
                height: 24, 
              ),
              RawMaterialButton(
                onPressed: () {
                  Share.share('Check out this Amazing Application that Automatically Generate And Scan Any QrCode');
                },
                fillColor: Colors.green,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 36.0,
                  vertical: 16.0,
                ),
                child: const Text(
                  "Share this App",
                ),
              ),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
