import 'package:torch_light/torch_light.dart';

Map morseChars = {
  'a': '.-',
  'b': '-...',
  'c': '-.-.',
  'd': '-..',
  'e': '.',
  'f': '..-.',
  'g': '--.',
  'h': '....',
  'i': '..',
  'j': '.---',
  'k': '-.-',
  'l': '.-..',
  'm': '--',
  'n': '-.',
  'o': '---',
  'p': '.--.',
  'q': '--.-',
  'r': '.-.',
  's': '...',
  't': '-',
  'u': '..-',
  'v': '...-',
  'w': '.--',
  'x': '-..-',
  'y': '-.--',
  'z': '--..',
  '0': '-----',
  '1': '.----',
  '2': '..---',
  '3': '...--',
  '4': '....-',
  '5': '.....',
  '6': '-....',
  '7': '--...',
  '8': '---..',
  '9': '----.',
  '&': '.-...',
  "'": '.----.',
  '@': '.--.-.',
  r"$": '···−··−',
  ')': '-.--.-',
  '(': '-.--.',
  ':': '---...',
  ',': '--..--',
  ';': '−·−·−·',
  '=': '-...-',
  '!': '-.-.--',
  '.': '.-.-.-',
  '-': '-....-',
  '_': '··−−·−',
  '+': '.-.-.',
  '"': '.-..-.',
  '?': '..--..',
  '/': '-..-.',
};

String textToMorse(String text) {
  var morsedText = [];
  // text.
  for (var i = 0; i < text.length; i++) {
    morseChars.forEach((key, value) {
      if (text[i] == key) {
        morsedText.add(value);
      }
      // morsedText.add(value);
      // print(key);
    });
  }
  return morsedText.join(" ");
}

void blinkMorse(String morse) async {
  if (await TorchLight.isTorchAvailable()) {
    for (var i = 0; i < morse.length; i++) {
      if (morse[i] == "-") {
        TorchLight.enableTorch();
        await Future.delayed(const Duration(seconds: 3), () {
          TorchLight.disableTorch();
        });
        // morsedText.add(value);
        // prin1t(key);
      } else if (morse[i] == ".") {
        TorchLight.enableTorch();
        await Future.delayed(const Duration(seconds: 1), () {
          TorchLight.disableTorch();
        });
      }
    }
  }
}
