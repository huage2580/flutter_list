

import 'package:flutter/material.dart';

class InfiniteListView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return InfiniteListViewState();
  }
}

class InfiniteListViewState extends State{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index){
          return Container(
              padding: EdgeInsets.all(16),
              child: Text("item=>$index")
          );
        },
        separatorBuilder: (context,index){
          return Divider(height: .5,color: Colors.grey,);
        },
        itemCount: 100);
  }

}