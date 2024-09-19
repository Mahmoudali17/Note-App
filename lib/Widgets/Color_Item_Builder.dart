import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Constants/Constants.dart';
import 'package:note_app_test/Cubits/Add_Note_Cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget{
  ColorItem({super.key,required this.isActive,required this.color});
  Color color ;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ?CircleAvatar(
      radius: 28,
      backgroundColor: Colors.white,
      child:  CircleAvatar(
        radius: 26,
        backgroundColor: color,
      ),
    ) :  CircleAvatar(
      radius: 26,
      backgroundColor: color,
    );
  }
}

class ColorItemBuilder extends StatefulWidget{
  @override
  State<ColorItemBuilder> createState() => _ColorItemBuilderState();
}

class _ColorItemBuilderState extends State<ColorItemBuilder> {

  int currentIndex =0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Kcolors.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color = Kcolors[index];
                    setState(() {

                    });
                    },
                  child: ColorItem(isActive: currentIndex == index,color: Kcolors[index],)
              ),
            );
          }
      ),
    );
  }
}