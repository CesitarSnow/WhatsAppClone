import 'package:clonewhatsap/widget/item_call_widget.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        ItemCallWidget(),
          ItemCallWidget(),
        ],
      ),
    );
  }
}
