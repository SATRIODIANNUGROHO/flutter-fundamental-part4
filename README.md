# flutter_application_5

A new Flutter project.

The main screen or starting point of your application. The display is very minimalist, containing only the title “Main Menu” and a single “Start Text Scan” button. The function of this screen is to direct users to start the scanning process.

![screenshot hello_world](images/1.jpg)

The camera interface appears after the user presses the “Start Text Scan” button. The camera activates and is directed at a document containing text and mathematical notation, specifically integral formulas. At the bottom is the “Take Photo & Scan” button to take a picture and send it to the OCR process.

![screenshot hello_world](images/2.jpg)

The screen shows the results after scanning a math document. The app successfully extracted the text, but the results aren't accurate. It's clear that the OCR model has trouble recognizing math symbols. For example, the integral symbol (∫) is misinterpreted as the letter ‘J’, and the equation format is messed up.

![screenshot hello_world](images/3.jpg)

active camera view. This time, the camera is pointed at a page in a physics textbook that discusses thermodynamic concepts such as isothermal, isochoric, and adiabatic processes. This demonstrates the application's testing on different types of content (plain text interspersed with physics formulas).

![screenshot hello_world](images/4.jpg)

The results screen for scanning physics books. As in the case of mathematics, plain text is read quite well. However, physics formulas and symbols become irregular and inaccurate when extracted. This confirms that the main challenge for your application at this time is recognizing complex scientific and mathematical notation.

![screenshot hello_world](images/5.jpg)

———————————————————(UTS)———————————————————

QUESTION 1

Change ElevatedButton on HomeScreen (lib/screens/home_screen.dart) to ListTile widget.

![screenshot hello_world](images/6.jpg)

Atur ListTile: leading: Icon(Icons.camera_alt, color: Colors.blue); title: Text(’Mulai Pindai Teks Baru’). The onTap function must use Navigator.push() to go to ScanScreen.

![screenshot hello_world](images/7.jpg)

In ResultScreen (lib/screens/result_screen.dart), remove the ocrText.replaceAll(’) function so that the text results are displayed with complete new lines (\n).

Add a FloatingActionButton with the Icons.home icon.

When the button is pressed, navigation should return directly to the HomeScreen using Navigator.pushAndRemoveUntil() (or an equivalent method) to remove all pages above it from the navigation stack.

QUESTION 2

Custom Loading Screen in ScanScreen (20 Points):
• In ScanScreen (lib/screens/scan_screen.dart), modify the *loading* display
that appears before the camera is ready (if (!controller.value.isInitialized)):
• Background: Scaffold(backgroundColor: Colors.grey[900]).
• Content: Inside Center, display Column containing CircularProgressIndicator(color:
Colors.yellow).
• Below the indicator, add Text(’Loading Camera... Please wait.’,
style: TextStyle(color: Colors.white, fontSize: 18)).

Error Message Specifications (20 points):
• In the _takePicture() function in ScanScreen, modify the catch (e) block to
change the *error* message in SnackBar.
• The SnackBar message should read: "Scan Failed! Check Camera Permissions
or try again." (Remove the *error* variable ($e)).

QUESTION 3

Plugin Installation (5 Points):
• Add the flutter_tts plugin to the pubspec.yaml file (use the latest compatible version).
• Run flutter pub get.

Widget Conversion and Initialization (10 Points):
• Change ResultScreen from StatelessWidget to StatefulWidget.
• In initState(), initialize FlutterTts and set the reading language to
Indonesian.
• Implement dispose() to stop the TTS engine when the page is
closed.

Reading Functionality (15 Points):
• Add a second FloatingActionButton to ResultScreen (or replace AppBar
with an action button) with the Icons.volume_up icon.
• When the button is pressed, call the speak() function on FlutterTts to read
the entire contents of ocrText.