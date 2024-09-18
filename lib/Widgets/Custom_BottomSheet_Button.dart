import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/Constants.dart';

class CustomButton extends StatelessWidget{
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onTap ,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: isLoading ? const CircularProgressIndicator()  : const Text("Add",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),),
        ),
      )
    ;
  }
}