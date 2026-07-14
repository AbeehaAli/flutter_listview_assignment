import 'package:flutter/material.dart';

class HorizontalScrollItem {
  String title;
  IconData Icon;

  HorizontalScrollItem({
     required this.Icon,
    required this.title
   
  });

}

class HorizontalScroll extends StatefulWidget {
  final List<HorizontalScrollItem> items;
  final int index;
  
   HorizontalScroll({super.key,required this.items,required this.index});

  @override
  State<HorizontalScroll> createState() => _HorizontalScrollState();
}

class _HorizontalScrollState extends State<HorizontalScroll> {
  @override
  Widget build(BuildContext context) {
    final item =widget.items[widget.index];
    return Container(
      height: 30,
      width: 100,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white
      ),
      child: Row(
        children: [
          Icon(item.Icon,
          size: 20,
          color: Colors.black,),
          SizedBox(width: 5,),
          Text('${item.title}',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),)
        ],
      ),
    );
  }
}