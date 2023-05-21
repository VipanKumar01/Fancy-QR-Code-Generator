import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share/share.dart';

class MyScannedResult extends StatelessWidget {
  final String scannedTextData;
  final Function() closeScreen;

  const MyScannedResult(
      {super.key, required this.closeScreen, required this.scannedTextData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            closeScreen();
            Navigator.popUntil(context, ModalRoute.withName('/'));
            closeScreen();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
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
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Qr Code Image Code
                QrImage(
                  data: scannedTextData,
                  size: 250,
                  version: QrVersions.auto,
                ),
      
                const SizedBox(
                  height: 15,
                ),
                 Text(
                  scannedTextData,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 39, 38, 38),
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 48,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow),
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: scannedTextData));
                        Fluttertoast.showToast(
                            msg: "Qr Text is Copied",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                      child: const Text(
                        'Copy Result',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
