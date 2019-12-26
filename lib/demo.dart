import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list/LoadMoreWidget.dart';

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoState();
  }
}

class DemoState extends State<DemoPage> {
  var data = List();
  var noMore = false;

  @override
  void initState() {
    super.initState();
    data.add("hello");
    data.add("hello2");
    data.add("hello3");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("demo"),),
      body: RefreshIndicator(
        onRefresh: () async{
          await Future.delayed(Duration(seconds: 3));
        },
        child: LoadMore(
          isFinish: noMore,
          onLoadMore: _loadMore,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(16),
                  child: Text("item => $index ${data[index].toString()}"),
                );
              }),
        ),
      ),
    );
  }

  Future<bool> _loadMore() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
    load();
    return true;
  }

  void load() {
    data.addAll([
      "world",
      "wwe",
      "hello",
      "hello",
      "hello",
      "qew",
      "hello",
      "fds",
      "asd",
      "zz",
      "weq",
      "cc",
      "nnn"
    ]);
    setState(() {

    });
  }
}
