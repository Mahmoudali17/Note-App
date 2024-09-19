import 'package:flutter/cupertino.dart';
import 'Custom_Search_Icon.dart';

class CustomAppBar extends StatelessWidget{
   CustomAppBar({required this.title,required this.icon,this.onPressed});
   final String title;
   final IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return
       Row(
          children: [
            Text(title),
            const Spacer(flex: 1,),
            CustomSearchIcon(onPressed: onPressed,icon: icon,),
          ],
        )   
      ;
  }
}