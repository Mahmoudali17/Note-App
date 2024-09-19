import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  
  List<Color> colors =const [
    Color(0xffFF6F61),
    Color(0xff6B5B95),
    Color(0xff88B04B),
    Color(0xffF7CAC9),
    Color(0xff92A8D1),
    Color(0xff034F84),
    Color(0xffF7786B),
    Color(0xffD5A6BD),
    Color(0xffFFE680),
    Color(0xff45B8AC),
    Color(0xffD5A6BD),
  ];
  int currentIndex =0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    setState(() {

                    });
                    },
                  child: ColorItem(isActive: currentIndex == index,color: colors[index],)
              ),
            );
          }
      ),
    );
  }
}