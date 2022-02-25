import 'package:flutter/material.dart';
import 'package:morse_flasher/functions.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Morse Flasher")),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: messageController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Message"),
              maxLines: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  final message = messageController.text;
                  final encrypted = textToMorse(message.toLowerCase());
                  print(encrypted);
                },
                icon: const Icon(Icons.flashlight_on),
                label: const Text("Flash the Message"))
          ],
        ),
      )),
    );
  }
}
