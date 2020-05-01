import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.network('https://instagram.fsgn2-3.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c180.0.1080.1080a/s640x640/94355441_219995592625628_5185297233737637159_n.jpg?_nc_ht=instagram.fsgn2-3.fna.fbcdn.net&_nc_cat=108&_nc_ohc=ND-y8yW6yesAX-gNvMA&oh=171510c7d75e478b18845225397230be&oe=5ED6F628'),
    );
  }
}
