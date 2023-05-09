import 'package:flutter/material.dart';
import 'package:moviefrontend/models/category.models.dart';

class Category extends StatelessWidget {
  final List<Genres> event;
  const Category({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            for (int i = 0; i < event.length; i++)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SizedBox(
                  height: 35,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Text(event[i].name.toString(),
                          style: const TextStyle(fontSize: 12))),
                ),
              )
          ],
        ),
      ),
    );
  }
}
