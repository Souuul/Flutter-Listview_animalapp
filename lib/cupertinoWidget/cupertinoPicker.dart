import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDesignPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CupertinoDesignPage();
}

class _CupertinoDesignPage extends State<CupertinoDesignPage> {
  FixedExtentScrollController? firstContoller;

  @override
  void initState() {
    super.initState();
    firstContoller = FixedExtentScrollController(initialItem: 0);
  }

  @override
  Widget build(BuildContext context) {
    double _value = 10.0;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          child: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        middle: Text('Cupertino Design'),
        trailing: CupertinoButton(
          child: Icon(Icons.exit_to_app),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StatefulBuilder(
                builder: (context, state) => Column(
                  children: [
                    CupertinoSlider(
                      value: _value,
                      min: 0.0,
                      max: 100.0,
                      onChanged: (val) {
                        state(() {
                          _value = val;
                        });
                      },
                    ),
                    Text(_value.toString()),
                  ],
                ),
              ),
              CupertinoButton(
                  child: Text('Picker'),
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 400,
                            child: Column(
                              children: [
                                Expanded(
                                  child: CupertinoPicker(
                                    itemExtent: 50,
                                    backgroundColor: Colors.white,
                                    scrollController: firstContoller,
                                    onSelectedItemChanged: (index) {},
                                    children:
                                        List<Widget>.generate(10, (index) {
                                      return Center(
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            (++index).toString(),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('취소'))
                              ],
                            ),
                          );
                        });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
