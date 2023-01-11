import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoOtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('widget test'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
                child: Text('button'), color: Colors.blue, onPressed: () {}
            ),
            CupertinoActivityIndicator(
              radius: 20,
            ),
            
          ],
        ),
      ),
    );
  }
}
