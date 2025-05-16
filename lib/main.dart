import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amharic Fonts Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'EthiopicSadiss', // Set a default font family.
      ),
      home: const FontDemoScreen(),
    );
  }
}

class FontDemoScreen extends StatelessWidget {
  const FontDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amharic Font Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'የሺሮሜዳ ቅርጸ ቁምፊ', // Amharic text
                style: TextStyle(
                  fontFamily: 'Shiromeda', // Apply the Shiromeda font
                  fontWeight: FontWeight.w600, // Apply the Semibold weight
                  fontSize: 24.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'ኢትዮፒክ ሳድስ መደበኛ', // Amharic Text
                style: TextStyle(
                  fontFamily: 'EthiopicSadiss', // Apply EthiopicSadiss
                  fontWeight: FontWeight.w400, // Apply Regular Weight.  This is the default, but good to be explicit.
                  fontSize: 20.0,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'ኢትዮፒክ ሳድስ ቀላል', // Amharic Text
                style: TextStyle(
                  fontFamily: 'EthiopicSadiss', // Apply EthiopicSadiss
                  fontWeight: FontWeight.w300, // Apply Light Weight
                  fontSize: 20.0,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'This is the default font.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontFamily:
                      Theme.of(context).textTheme.bodyMedium?.fontFamily, //Demonstrate the default font.
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}