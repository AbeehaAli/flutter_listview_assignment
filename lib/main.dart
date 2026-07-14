import 'package:flutter/material.dart';
import 'package:flutter_listview_assignment/horizontal_scroll.dart';
import 'package:flutter_listview_assignment/vertical_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    final horizontalScrollList  =[
      HorizontalScrollItem(Icon: Icons.home, title: "All"),
      HorizontalScrollItem(Icon: Icons.apartment, title: "Apartment"),
      HorizontalScrollItem(Icon: Icons.house, title: "House"),
      HorizontalScrollItem(Icon: Icons.villa, title: "Villa"),
      HorizontalScrollItem(Icon: Icons.business, title: "Commercial"),
      HorizontalScrollItem(Icon: Icons.corporate_fare, title: "Office"),
      HorizontalScrollItem(Icon: Icons.warehouse, title: "Warehouse"),
      HorizontalScrollItem(Icon: Icons.terrain, title: "Plot"),
      HorizontalScrollItem(Icon: Icons.other_houses, title: "Penthouse"),
      HorizontalScrollItem(Icon: Icons.agriculture, title: "Farmhouse"),
    ];

    final VerticalScrollList =[
      VerticalScrollItem(tag: "For Rent", imageUrl: "assets/images/appartment.jpeg", title: "Modern Apartment New York", subTitle: "Listed 4 hours ago,NewYork,USA", Price: "50,000", Bed: 2, Bath: 1, sqft: 1420),
      VerticalScrollItem(tag: "For Sale", imageUrl: "assets/images/house.jpeg", title: "Family House in London", subTitle: "Listed 6 hours ago,London,UK", Price: "3,200/mo", Bed: 3, Bath: 2, sqft: 1850),
      VerticalScrollItem(tag: "For Rent", imageUrl: "assets/images/villa.jpeg", title: "Luxury Villa in California", subTitle: "Listed 1 day ago,Los Angeles,USA", Price: "420,000", Bed: 5, Bath: 4, sqft: 4200),
      VerticalScrollItem(tag: "For Sale", imageUrl: "assets/images/penthouse.jpeg", title: "Premium PentHouse Dubai", subTitle: "Listed Today,Dubai,UAE", Price: "980,000", Bed: 4, Bath: 3, sqft: 3100),
      VerticalScrollItem(tag: "For Rent", imageUrl: "assets/images/Office.jpeg", title: "Modern Office Space", subTitle: "Listed Yesterday,Chicago,USA", Price: "350,000", Bed: 2, Bath: 2, sqft: 2700),
      VerticalScrollItem(tag: "For Sale", imageUrl: "assets/images/Studio.jpeg", title: "Cozy Studio Environment", subTitle: "Listed 3 hours ago New York,USA", Price: "1,400/mo", Bed: 1, Bath: 1, sqft: 650),
      VerticalScrollItem(tag: "For Rent", imageUrl: "assets/images/warehouse.jpeg", title: "Commercial Warehouse", subTitle: "Listed 5 days ago New York,USA", Price: "780,000", Bed: 8, Bath: 4, sqft: 8200),
      VerticalScrollItem(tag: "For Sale", imageUrl: "assets/images/farmhouse.jpeg", title: "Green Farmhouse Retreat", subTitle: "Listed 2 days ago,Texas,USA", Price: "2,500/mo", Bed: 4, Bath: 3, sqft: 5000),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,),
              SizedBox(width: 5,),
              Expanded(
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.white,
                  
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                      color: Colors.grey,
                      size: 20,),
                      SizedBox(width: 10,),
                      Text(" Search for your favorite location",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey
                      ),)
                    ],
                  ),
                ) 
              ),
              SizedBox(width: 10,),
              Icon(Icons.tune,
              size: 22,),
            ],
          ),
        ),
      ),
     body:Padding(
       padding: const EdgeInsets.only(top: 20),
       child: Column(
         children: [
          SizedBox(
            height: 30,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:  horizontalScrollList.length,
            itemBuilder: (context, index){
              return Padding(padding: EdgeInsetsGeometry.only(left: index == 0 ? 16 :0,
              right: 10),
              child: HorizontalScroll(items: horizontalScrollList, index: index),
              );
            }
            
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 40,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "142 Properties View on Map",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                ),
              ),
            ),
          ),
            SizedBox(height: 10,),

             SizedBox(
          height: 480,
            child: ListView.builder(
            itemCount:  VerticalScrollList.length,
            itemBuilder: (context, index){
              return VerticalScroll(items: VerticalScrollList, index: index);
            }
            
            ),
          ),
           
         ]
       ),
     ),
     
    );
  }
}
