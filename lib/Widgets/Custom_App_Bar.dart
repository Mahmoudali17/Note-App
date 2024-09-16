import 'package:flutter/cupertino.dart';
import 'Custom_Search_Icon.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
       Row(
          children: [
            const Text("Notes"),
            const Spacer(flex: 1,),
            CustomSearchIcon(),
          ],
        )   
      ;
  }
}