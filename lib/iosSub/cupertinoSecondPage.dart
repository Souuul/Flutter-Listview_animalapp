import 'package:flutter/cupertino.dart';
import '../animalItem.dart';

class CupertinoSecondPage extends StatefulWidget {
  final List<Animal>? animalList;
  const CupertinoSecondPage({Key? key, required this.animalList}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _CupertinoSecondPage();
  }
}

class _CupertinoSecondPAge extends State<CupertinoSecondPage> {
  @override
  Widget build (BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('동물추가'),
      ),
      child: null,
    );
  }
}