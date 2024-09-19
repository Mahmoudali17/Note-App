import 'package:flutter/cupertino.dart';
import '../Constants/Constants.dart';
import '../Models/Note-Model.dart';
import 'Color_Item_Builder.dart';

class EditNoteColorItem extends StatefulWidget {
  EditNoteColorItem({required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorItem> createState() => _EditNoteColorItemState();
}

class _EditNoteColorItemState extends State<EditNoteColorItem> {
  late int currentIndex;
  @override
  @override
  void initState() {
    currentIndex = Kcolors.indexOf(Color(widget.noteModel.color));
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Kcolors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    widget.noteModel.color = Kcolors[index].value;
                    setState(() {

                    });
                  },
                  child: ColorItem(
                    isActive: currentIndex == index, color: Kcolors[index],)
              ),
            );
          }
      ),
    );
  }
}