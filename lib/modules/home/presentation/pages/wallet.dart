import 'package:bank_in_space/modules/utils/utils.dart';
import 'package:flutter/material.dart';

class MyFAB extends StatefulWidget {
  const MyFAB({Key? key}) : super(key: key);

  @override
  _MyFABState createState() => _MyFABState();
}

class _MyFABState extends State<MyFAB> {
  bool showFab = true;
  @override
  Widget build(BuildContext context) {
    return showFab
        ? FloatingActionButton(onPressed: () {
            var bottomSheetController = showBottomSheet(
              context: context,
              builder: (context) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 500,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Your Wallet',
                        style: CTitleStyle,
                      ),
                    ),
                    Expanded(child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(18),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      );
                    }))
                  ],
                ),
              ),
            );
          })
        : Container();
  }
}
