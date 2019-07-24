import 'dart:html';

import 'package:flutter_web/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';

void main() => runApp(new LinkifyExample());

class LinkifyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
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
    await window.open(link.url, "tab");
  }
}
