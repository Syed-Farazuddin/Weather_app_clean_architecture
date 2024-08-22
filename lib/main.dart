import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Clean architecture + Weather App"),
        ),
        // body: _buildBody(),
      ),
    );
  }

  // _buildBody() {
  //   return Column(
  //     children: [
  //       Image(
  //           // image: Image.network("src"),
  //           ),
  //       const Icon(
  //         Icons.arrow_right,
  //       ),
  //     ],
  //   );
  // }
}
