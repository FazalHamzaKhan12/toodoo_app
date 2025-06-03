import 'package:flutter/material.dart';

class Icecream extends StatefulWidget {
  const Icecream({super.key});

  @override
  State<Icecream> createState() => _IcecreamState();
}

class _IcecreamState extends State<Icecream> {
  List<IceCream> iceCreams = [
    IceCream(name: "Sandwich Ice"),
    IceCream(name: "Master Ice"),
    IceCream(name: "iDK iCE CREAM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ICE Cream")),
      body: ListView.builder(
        itemCount: iceCreams.length,
        itemBuilder: (context, index) {
          final item = iceCreams[index];
          return ListTile(
            title: Text(item.name),
            trailing: IconButton(
              icon: Icon(
                item.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: item.isFavorite ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  item.isFavorite = !item.isFavorite;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class IceCream {
  final String name;
  bool isFavorite;

  IceCream({required this.name, this.isFavorite = false});
}
