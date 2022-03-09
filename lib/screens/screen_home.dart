import 'package:flutter/material.dart';
import 'package:morse_flasher/functions.dart';
import 'package:torch_light/torch_light.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff1efe3),
      // appBar: AppBar(title: const Text("Morse Flasher")),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Image(image: AssetImage('assets/images/front-image.png')),
                TextField(
                  controller: messageController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: 50,
                          borderSide:
                              const BorderSide(color: Color(0xff3f3d56)),
                          borderRadius: BorderRadius.circular(25.0)),
                      hintText: "Message"),
                  maxLines: 15,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        final message = messageController.text;
                        final encrypted =
                            Functions().textToMorse(message.toLowerCase());
                        if (await TorchLight.isTorchAvailable()) {
                          Functions().blinkMorse(encrypted);
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return AlertDialog(
                                  title: const Text("Error"),
                                  content: const Text(
                                      "Can't Access your Camera.. Please try again later.."),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(ctx);
                                        },
                                        child: const Text("OK"))
                                  ],
                                );
                              });
                        }
                      },
                      child: const Icon(Icons.flashlight_on),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(25)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xfff1efe3)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff6c63ff)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ))),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
