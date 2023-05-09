import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children:const [
              Icon(Icons.movie_creation_outlined),
              Text("ioVIE", style: TextStyle(fontSize: 15)),
            ],
          ),
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.grey,
            child: Image.network("https://api.dicebear.com/6.x/lorelei/png"),
          )
        ],
      ),
    );
  }
}
