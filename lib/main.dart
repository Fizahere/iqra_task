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
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  // Dummy image URLs for demonstration
  final List<String> imageUrls = [
    "images/Image-05.jpg",
    "images/Image-05.jpg",
    "images/Image-05.jpg",
    "images/Image-05.jpg",
    "images/Image-05.jpg",
    "images/Image-05.jpg",
    "images/Image-05.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Grid'),
      ),
      body:
      GridView.count(

        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisCount: 3,
        children: List.generate(imageUrls.length, (index) {
          return Container(
            margin: EdgeInsets.all(1),
height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                '${imageUrls[index]}', // Assuming images are in the assets folder with .png extension, // Adjust height as needed
              ),
          );
        }),
      ),
    );
  }
}