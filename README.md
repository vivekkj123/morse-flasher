# Blinka Morse 🆘
<img src="https://user-images.githubusercontent.com/58988126/157873974-73619c1e-bfec-49d7-a74a-45877c4fdf2a.png" alt="" width="100"/>
Blinka Morse is a simple flutter application which will helps to convert your message into pulses of light.

## Preview 😇
https://user-images.githubusercontent.com/58988126/157876707-668c48a4-e6ac-4965-bea6-1ce669a9a6ec.mp4

## Download Release ⏬

Head to [releases page](https://github.com/vivekkj123/morse-flasher/releases) and install 🔥

## Team Members 👫
1. [Vivek K J](https://github.com/vivekkj123)

## Team Id 🔰
 Flutter/152

## Link to product walkthrough 📼
[link to video]

## How it Works ? ⚙️
1. As the first step, the whole message is converted into Morse code.
For that, a map of letters and corresponding morse letters is kept and for each letter, the morse symbol is replaced using a simple function.
2. In step 2, the morse code needs to converted into light signals. The output obtained from step 1 will be an string array of dits(.) and dashes(-). For each symbols, the corresponding light signal is controlled using mobile flash light.

## Libraries used 🛠️
- [torch_light](https://pub.dev/packages/torch_light) - For controlling mobile flash
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) - For splash screen


## How to configure and run ⛹️
1. [Configure flutter environment](https://docs.flutter.dev/get-started/install)
2. Clone the repo
`git clone https://github.com/vivekkj123/morse-flasher.git`
3. Install required dependencies
`flutter pub get`
4. Run the application
`flutter run`
