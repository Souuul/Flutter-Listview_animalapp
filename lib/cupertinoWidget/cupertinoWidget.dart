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
                child: Text('button'), color: Colors.blue, onPressed: () {}),
            CupertinoActivityIndicator(
              radius: 20,
            ),
            CupertinoButton(
                child: Text('dialog'),
                onPressed: () {
                  showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('Cupertino'),
                          content: Text('Cupertino 스타일의 위젯입니다'),
                          actions: [
                            CupertinoButton(
                                child: Text('확인'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                }),
            CupertinoButton(child: Text('dialog'), onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      title: Text('Action'),
                      message: Text('좋아하는 색은'),
                      actions: [
                        CupertinoButton(child: Text('빨강'), onPressed: () {}),
                        CupertinoButton(child: Text('파랑'), onPressed: () {}),
                      ],
                      cancelButton: CupertinoButton(
                          child: Text('취소'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    );
                  });
            }),
          ],
        ),
      ),
    );
  }
}
