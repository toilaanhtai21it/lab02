import 'package:flutter/material.dart';
import 'package:micard/utils/image_string.dart';

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
      home: const MiCard(title: 'Flutter Demo Home Page'),
    );
  }
}

class MiCard extends StatefulWidget {
  const MiCard({super.key, required this.title});

  final String title;

  @override
  State<MiCard> createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  List<String> infoList = [
    "+84 795798843",
    "tainda.21it@vku.udn.vn",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0xFF058b7c)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(ImageLabel.avatar),
            ),
            const Text(
              "Nguyen Dinh Anh Tai",
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(color: Colors.white),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            const Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.phone,
                        color: Color(0xFF058b7c),
                      ),
                    ),
                    Text("+84 795798843",
                        style: TextStyle(color: Color(0xFF058b7c))),
                  ],
                ),
              ),
            ),
            const Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 25.0,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.email,
                        color: Color(0xFF058b7c),
                      ),
                    ),
                    Text("tainda.21it@vku.udn.vn",
                        style: TextStyle(color: Color(0xFF058b7c))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
