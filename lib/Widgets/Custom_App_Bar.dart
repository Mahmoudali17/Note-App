import 'package:flutter/cupertino.dart';
import 'Custom_Search_Icon.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({required this.title,required this.icon});
   final String title;
   final IconData icon;
  @override
  Widget build(BuildContext context) {
    return
       Row(
          children: [
            Text(title),
            const Spacer(flex: 1,),
            CustomSearchIcon(icon: icon,),
          ],
        )   
      ;
  }
}