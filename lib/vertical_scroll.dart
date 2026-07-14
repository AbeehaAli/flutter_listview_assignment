import 'package:flutter/material.dart';

class VerticalScrollItem {
  String tag;
  String imageUrl;
  String title;
  String Price;
  String subTitle;
  int Bed;
  int Bath;
  double sqft;

  VerticalScrollItem({
    required this.tag,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.Price,
    required this.Bed,
    required this.Bath,
    required this.sqft

   
  });

}

class VerticalScroll extends StatefulWidget {
  final List<VerticalScrollItem> items;
  final int index;
  const VerticalScroll({super.key,required this.items,required this.index});

  @override
  State<VerticalScroll> createState() => _VerticalScrollState();
}

class _VerticalScrollState extends State<VerticalScroll> {
  @override
  Widget build(BuildContext context) {
    final item =widget.items[widget.index];
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15,),
            child: Container(
              height: 320,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 18,
                    spreadRadius: 0,
                    offset: const Offset(0, 6),
                  )
                ]
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius:BorderRadius.vertical(top: Radius.circular(20)),
                        child:  Image.asset(item.imageUrl,width: 350,height: 180,
                        fit: BoxFit.cover,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 8),
                        child: Container(
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("${item.tag}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                            ),
                            )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(mainAxisAlignment: .spaceEvenly,
                    children: [
                      Text(
                    "${item.title}",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  SizedBox(width: 2,),
                  Text("\$${item.Price}",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)
                    ],
                  ),
                  
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(Icons.access_time_rounded,
                        size: 18,
                        color: Colors.grey,),
                        SizedBox(width: 3,),
                        Expanded(
                          child: Text("${item.subTitle}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                          ),),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(height: 15),
                  Container(
                height: 35,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                   Row(
                    children: [
                      Icon(Icons.bedroom_child),
                      SizedBox(width: 4,),
                      Text("${item.Bed} Bed"),
                    ],
                   ),
            
                   
                   Row(
                    children: [
                      Icon(Icons.bathtub_outlined),
                      SizedBox(width: 4,),
                     Text("${item.Bath} Bath"),
                    ],
                   ),
            
                   
                   Row(
                    children: [
                      Icon(Icons.square_foot),
                      SizedBox(
                        width: 4,
                      ),
                      Text("${item.sqft} sqft"),
                    ],
                   )
                  ],
                ),
                
              ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}