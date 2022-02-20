import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Morse Flasher")),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Message"),
              maxLines: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.flashlight_on),
                label: const Text("Flash the Message"))
          ],
        ),
      )),
    );
  }
}
