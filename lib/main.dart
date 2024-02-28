import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App ListView Anaya",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  List<String> images = [
    "assets/images/LogoWWE.png",
    "assets/images/LogoWWE2.png",
    "assets/images/LogoWWE3.png",
    "assets/images/LogoWWE4.jpg",
    "assets/images/LogoWWE5.jpg",
    "assets/images/LogoWWE6.jpg",
    "assets/images/LogoWWE7.jpg",
    "assets/images/LogoWWE8.png",
    "assets/images/LogoWWE9.jpg",
    "assets/images/LogoWWE10.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Angel Anaya"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("This is title"),
              subtitle: Text("This is subtitle"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
