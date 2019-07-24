import 'dart:html';

import 'package:flutter_web/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';

void main() => runApp(LinkifyExample());

class LinkifyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_linkify example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter_linkify example'),
        ),
        body: Center(
          child: Linkify(
            onOpen: _onOpen,
            text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
          ),
        ),
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    print("Opening link ${link.url}");
    await window.open(link.url, "tab");
  }
}
