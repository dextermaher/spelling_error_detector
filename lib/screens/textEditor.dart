import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class TextEditor extends StatefulWidget {
  TextEditor({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  String displayedText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(displayedText),
            TextField(
              onChanged: (value) {
                //
                String newValue = value.toString();
                List valueList = newValue.split(' ');

                for (int i = 0; i <= valueList.length; i++) {
                  if (all.contains(valueList[i])) {
                    print('Nice!');
                  } else {
                    print('Not Nice >:(');
                  }
                  setState(() {
                    displayedText = newValue;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
